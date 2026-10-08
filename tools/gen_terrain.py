"""Gera Terrain0.lua (Reinos do Leste) e Terrain1.lua (Kalimdor): por onde se anda a pé.

Do terreno do próprio cliente, lido do CASC local (casc.py): o WDT de cada continente (Map,
wago.tools) lista os ADT; de cada ADT saem as alturas (MCVT), os buracos (onde entram prédios e
cavernas) e a água (MH2O). v1: só terreno — prédios, pontes e cidades fechadas ficam de fora.

Grade de 16,7 jd (2 × 2 células por pedaço de 33,3 jd). Por célula, um byte com a ligação a
cada um dos 8 vizinhos (bit d: N, NE, L, SE, S, SO, O, NO) e um bit de água funda (nado).
Por quadrante, os 1024 bytes + 128 bytes de água, em RLE (pares contagem, valor).

    python gen_terrain.py           # gera os dois arquivos
    python gen_terrain.py --demo    # só confere pontos conhecidos
"""
import math
import os
import struct
import sys

import numpy as np

import casc
from gen_travel import tabela

TILE = 1600 / 3
CHUNK = TILE / 16
CEL = CHUNK / 2
LADO = 64 * 32                     # células por lado do continente
TOPO = 32 * TILE                   # x (norte) e y (oeste) da borda da grade
RAMPA = 1.25                       # desnível / distância que ainda se sobe a pé (~51°)
FUNDO = 1.5                        # água mais alta que isto sobre o chão: nado
DIRS = [(-1, 0), (-1, 1), (0, 1), (1, 1), (1, 0), (1, -1), (0, -1), (-1, -1)]
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "Terrain%d.lua")


def wdts():
    return {int(r["ID"]): int(r["WdtFileDataID"]) for r in tabela("Map") if r["ID"] in ("0", "1")}


def nocivos():
    """LiquidType que machuca (magma, lodo): SoundBank 2 e 3."""
    return {int(r["ID"]) for r in tabela("LiquidType") if r.get("SoundBank") in ("2", "3")}


def quadrante(adt, ruins):
    """Do ADT: alturas 129×129 (vértices externos), buracos 32×32 (por célula), água 128×128
    (altura da superfície por quadrinho; nan sem água) e líquido nocivo 128×128."""
    alt = np.zeros((129, 129), np.float32)
    buraco = np.zeros((32, 32), bool)
    agua = np.full((128, 128), np.nan, np.float32)
    ruim = np.zeros((128, 128), bool)
    ordem = []
    ps = casc.pedacos_wow(adt)
    for nome, b in ps:
        if nome != "MCNK":
            continue
        flags, ix, iy = struct.unpack_from("<III", b, 0)
        pz = struct.unpack_from("<f", b, 0x70)[0]
        ordem.append((iy, ix))
        sub = dict(casc.pedacos_wow(b[128:]))
        mcvt = sub.get("MCVT")
        if mcvt:
            v = struct.unpack_from("<145f", mcvt)
            for r in range(9):
                alt[iy * 8 + r, ix * 8:ix * 8 + 9] = [pz + v[r * 17 + c] for c in range(9)]
        if flags & 0x10000:                             # buracos em alta: 8 bytes, 8×8 quadrinhos
            hb = b[0x14:0x1C]
            for r in range(8):
                for c in range(8):
                    if hb[r] >> c & 1:
                        buraco[iy * 2 + r // 4, ix * 2 + c // 4] = True
        else:                                           # baixa: 16 bits, 4×4 (cada um 2×2 quadrinhos)
            h = struct.unpack_from("<H", b, 0x3C)[0]
            for i in range(16):
                if h >> i & 1:
                    r, c = i // 4, i % 4
                    buraco[iy * 2 + r // 2, ix * 2 + c // 2] = True
    mh = dict(ps).get("MH2O")
    if mh:
        for ci, (iy, ix) in enumerate(ordem):
            off, n, _ = struct.unpack_from("<III", mh, ci * 12)
            for k in range(n if off else 0):
                tipo, _, lo, hi, xo, yo, w, h, obm, _ = struct.unpack_from("<HHffBBBBII", mh, off + k * 24)
                bits = None
                if obm:
                    nb = (w * h + 7) // 8
                    bits = int.from_bytes(mh[obm:obm + nb], "little")
                for j in range(h):
                    for i in range(w):
                        if bits is not None and not bits >> (j * w + i) & 1:
                            continue
                        r, c = iy * 8 + yo + j, ix * 8 + xo + i
                        if 0 <= r < 128 and 0 <= c < 128:
                            agua[r, c] = max(hi, agua[r, c]) if not np.isnan(agua[r, c]) else hi
                            if tipo in ruins:
                                ruim[r, c] = True
    return alt, buraco, agua, ruim


def continente(c, cid, wdt):
    """Grades do continente (LADO × LADO): altura do centro, passável, água, existe."""
    H = np.full((LADO, LADO), np.nan, np.float32)
    P = np.zeros((LADO, LADO), bool)
    W = np.zeros((LADO, LADO), bool)
    ruins = nocivos()
    q = casc.quadrantes(c.le(wdt))
    for (lin, col), fdid in sorted(q.items()):
        adt = c.le(fdid)
        if not adt:
            continue
        alt, buraco, agua, ruim = quadrante(adt, ruins)
        # por célula: blocos 5×5 de vértices / 4×4 quadrinhos
        v = np.lib.stride_tricks.sliding_window_view(alt, (5, 5))[::4, ::4]         # 32×32×5×5
        centro = v.mean(axis=(2, 3))
        dz = np.maximum(np.abs(np.diff(v, axis=2)).max(axis=(2, 3)), np.abs(np.diff(v, axis=3)).max(axis=(2, 3)))
        ingreme = dz / (CHUNK / 8) > RAMPA
        a4 = agua.reshape(32, 4, 32, 4)
        sup = np.nanmax(np.where(np.isnan(a4), -np.inf, a4), axis=(1, 3))
        funda = sup - centro > FUNDO
        nociva = ruim.reshape(32, 4, 32, 4).any(axis=(1, 3))
        r0, c0 = lin * 32, col * 32
        # na água funda, a altura que vale é a da superfície: a margem é desnível dela para a terra
        H[r0:r0 + 32, c0:c0 + 32] = np.where(funda & ~nociva, sup, centro)
        W[r0:r0 + 32, c0:c0 + 32] = funda & ~nociva
        P[r0:r0 + 32, c0:c0 + 32] = ((~ingreme | funda) & ~buraco & ~nociva)
    return H, P, W, q


def ligacoes(H, P, W):
    """Byte de ligação por célula: bit d se o vizinho d também é passável e o desnível cabe (na
    água, pela superfície: não se sobe penhasco saindo dela). Diagonal só se os dois vizinhos
    retos passam (não corta quina); nada aponta para fora da grade."""
    L = np.zeros(H.shape, np.uint8)
    for d, (dr, dc) in enumerate(DIRS):
        Hn = np.roll(np.roll(H, -dr, 0), -dc, 1)
        Pn = np.roll(np.roll(P, -dr, 0), -dc, 1)
        dist = CEL * math.hypot(dr, dc)
        ok = P & Pn & (np.abs(Hn - H) / dist <= RAMPA)
        if dr and dc:
            ok &= np.roll(P, -dr, 0) & np.roll(P, -dc, 1)
        if dr == -1:
            ok[0, :] = False
        if dr == 1:
            ok[-1, :] = False
        if dc == 1:
            ok[:, -1] = False
        if dc == -1:
            ok[:, 0] = False
        L |= (ok.astype(np.uint8) << d)
    return L


def rle(bs):
    out, i = bytearray(), 0
    while i < len(bs):
        j = i
        while j < len(bs) and bs[j] == bs[i] and j - i < 255:
            j += 1
        out += bytes((j - i, bs[i]))
        i = j
    return bytes(out)


def lua_bytes(b):
    s = []
    for x in b:
        ch = chr(x)
        if 32 <= x < 127 and ch not in '"\\':
            s.append(ch)
        else:
            s.append("\\%03d" % x)             # sempre 3 dígitos: o caractere seguinte pode ser dígito
    return '"%s"' % "".join(s)


def gera(c, cid, wdt, escrever=True):
    H, P, W, q = continente(c, cid, wdt)
    L = ligacoes(H, P, W)
    linhas = ["-- AUTO-GERADO (gen_terrain.py) do terreno do cliente %s (CASC local)." % c.versao,
              "-- Por quadrante (linha*64+coluna): RLE de 1024 bytes de ligação + 128 de água.",
              "local ADDON, ns = ...", "if not ns then return end",
              "ns.terrain = ns.terrain or {}",
              "ns.terrain[%d] = {" % cid]
    total = 0
    for (lin, col) in sorted(q):
        bl = L[lin * 32:(lin + 1) * 32, col * 32:(col + 1) * 32].tobytes()
        bw = np.packbits(W[lin * 32:(lin + 1) * 32, col * 32:(col + 1) * 32].ravel(), bitorder="little").tobytes()
        s = rle(bl + bw)
        total += len(s)
        linhas.append("\t[%d] = %s," % (lin * 64 + col, lua_bytes(s)))
    linhas.append("}")
    if escrever:
        with open(OUT % cid, "w", encoding="utf-8", newline="\n") as fh:
            fh.write("\n".join(linhas) + "\n")
    return H, P, W, L, total


def celula(x, y):
    return int((TOPO - x) // CEL), int((TOPO - y) // CEL)


def demo(dados):
    H1, P1, W1, L1, _ = dados[1]
    r, c = celula(1677.6, -4315.7)                       # mestre de voo de Orgrimmar
    assert P1[r, c], "o chão do mestre de voo de Orgrimmar devia ser passável"
    r, c = celula(-1000.0, -4000.0)                      # mar a leste do cais de Ratchet
    assert W1[r, c], "o mar ao lado de Ratchet devia ser água"
    for H_, P_, W_, L_, _ in dados.values():
        # nenhuma ligação para fora da grade (o np.roll daria a volta pelo outro lado)
        bordas = (L_[0, :] & 0b10000011).any() or (L_[-1, :] & 0b00111000).any()             or (L_[:, -1] & 0b00001110).any() or (L_[:, 0] & 0b11100000).any()
        assert not bordas, "ligação para fora da grade"
        # diagonal só se os dois vizinhos retos passam (não corta quina)
        for d, (dr, dc) in enumerate(DIRS):
            if dr and dc:
                tem = (L_ >> d) & 1 == 1
                reto1 = np.roll(P_, -dr, 0)
                reto2 = np.roll(P_, -dc, 1)
                assert not (tem & ~(reto1 & reto2)).any(), "diagonal cortando quina (d=%d)" % d
    vale = P1.sum()
    assert vale > 100000, vale
    print("ok: Kalimdor %d células passáveis, %d de água" % (vale, W1.sum()))


if __name__ == "__main__":
    c = casc.Casc()
    w = wdts()
    escrever = "--demo" not in sys.argv
    dados = {}
    for cid in (0, 1):
        dados[cid] = gera(c, cid, w[cid], escrever)
        print("continente %d: %d KB de dados" % (cid, dados[cid][4] // 1024))
    demo(dados)
