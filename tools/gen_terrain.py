"""Gera Terrain0.lua (Reinos do Leste) e Terrain1.lua (Kalimdor): por onde se anda a pé.

Do terreno do próprio cliente: o CASC local (casc.py) ou, sem cliente instalado (ou com --cdn), o CDN público
da Blizzard (casc_cdn.py, produto wowf). O WDT de cada continente (Map, wago.tools) lista os ADT; de cada ADT
saem as alturas (MCVT), os buracos (onde entram prédios e cavernas) e a água (MH2O); do _obj0, os modelos
postos no mapa (modelos.py: WMO e M2, com a colisão).

Grade de 16,7 jd (2 × 2 células por pedaço de 33,3 jd). Por célula, um byte com a ligação a
cada um dos 8 vizinhos (bit d: N, NE, L, SE, S, SO, O, NO) e um bit de água funda (nado).
Por quadrante, os 1024 bytes + 128 bytes de água, em RLE (pares contagem, valor). O formato é o mesmo
nas duas versões (Terrain.lua não muda).

v1 (--v1): só terreno, por célula — passável se nenhum par de vértices dentro dela passa da RAMPA e não
tem buraco; liga ao vizinho pelo desnível entre os centros. Rampa estreita no meio de um barranco (a da
Revantusk Village) não cabe: a célula inteira fica bloqueada.

v2 (padrão): chão fino. Cada célula vira 8 × 8 amostras de 2,08 jd com até 4 superfícies cada (terreno,
água funda, e os triângulos pisáveis dos WMO e M2 — ponte, rampa, escada, rua, cais, piso no buraco do
terreno). Amostras vizinhas se ligam se o desnível cabe na rampa; o terreno só conta onde a encosta cabe na
rampa em qualquer direção. Dentro de cada célula as superfícies ligadas formam componentes e a célula fica
com um (o jogo tem um nó por célula — sem andares): o maior em terra firme, ou o que é passagem estreita
(essencial na vizinhança), acertado pela grade projetada e por corredores (escolhe). Liga ao vizinho se os
componentes escolhidos se tocam por uma ligação fina; em diagonal, se se alcançam pela quina.

    python gen_terrain.py                  # gera os dois arquivos (v2, cliente local ou CDN)
    python gen_terrain.py --cdn            # lê do CDN mesmo com cliente instalado
    python gen_terrain.py --v1             # a grade antiga, só terreno (comparação)
    python gen_terrain.py --sem-modelos    # v2 só com o terreno
    python gen_terrain.py --demo           # só confere pontos conhecidos (não escreve)
    python gen_terrain.py --out DIR        # escreve em DIR em vez da raiz do addon
    python gen_terrain.py --cdn-atual      # CDN na última build publicada (padrão: a presa, 1.60.1.71139)
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


def le_adt(adt, ruins):
    """Do ADT: vértices externos 129×129 e internos 128×128 (alturas), buracos 128×128 (por quadrinho de
    4,17 jd), água 128×128 (altura da superfície por quadrinho; nan sem água) e líquido nocivo 128×128."""
    alt = np.zeros((129, 129), np.float32)
    meio = np.zeros((128, 128), np.float32)
    buraco = np.zeros((128, 128), bool)
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
            v = np.array(struct.unpack_from("<145f", mcvt), np.float32) + np.float32(pz)
            for r in range(9):
                alt[iy * 8 + r, ix * 8:ix * 8 + 9] = v[r * 17:r * 17 + 9]
                if r < 8:
                    meio[iy * 8 + r, ix * 8:ix * 8 + 8] = v[r * 17 + 9:r * 17 + 17]
        if flags & 0x10000:                             # buracos em alta: 8 bytes, 8×8 quadrinhos
            hb = b[0x14:0x1C]
            for r in range(8):
                for c in range(8):
                    if hb[r] >> c & 1:
                        buraco[iy * 8 + r, ix * 8 + c] = True
        else:                                           # baixa: 16 bits, 4×4 (cada um 2×2 quadrinhos)
            h = struct.unpack_from("<H", b, 0x3C)[0]
            for i in range(16):
                if h >> i & 1:
                    r, c = i // 4, i % 4
                    buraco[iy * 8 + r * 2:iy * 8 + r * 2 + 2, ix * 8 + c * 2:ix * 8 + c * 2 + 2] = True
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
    return alt, meio, buraco, agua, ruim


def quadrante(adt, ruins):
    """v1: alturas 129×129 (vértices externos), buracos 32×32 (por célula), água e líquido nocivo 128×128."""
    alt, _, buraco, agua, ruim = le_adt(adt, ruins)
    return alt, buraco.reshape(32, 4, 32, 4).any(axis=(1, 3)), agua, ruim


def continente(c, cid, wdt):
    """Grades do continente (LADO × LADO): altura do centro, passável, água, existe."""
    H = np.full((LADO, LADO), np.nan, np.float32)
    P = np.zeros((LADO, LADO), bool)
    W = np.zeros((LADO, LADO), bool)
    ruins = nocivos()
    q = casc.quadrantes(c.le(wdt))
    c.prefetch(q.values())
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


# ── v2: chão fino (terreno + modelos) ────────────────────────────────────────────────────────────────────
# Cada célula de 16,7 jd vira 8 × 8 amostras de 2,08 jd (metade do passo dos vértices do terreno). Em cada
# amostra, até K superfícies onde se fica em pé ("camadas"): o terreno (a superfície da água, se funda) e os
# triângulos pisáveis dos modelos (modelos.py) — ponte sobre o rio, rampa, escada, rua, cais, piso de prédio
# no buraco do terreno. Duas camadas a menos de TETO uma da outra: vale a de cima (rua sobre o terreno, tábua
# grossa). Amostras vizinhas (8 direções) se ligam, camada a camada, se o desnível cabe na RAMPA.
# Dentro de cada célula, as camadas ligadas formam componentes; a célula fica com UM (a grade em jogo tem um
# nó por célula — sem andares) e liga ao vizinho se o componente dela toca, por uma ligação fina, o
# componente escolhido do vizinho. A escolha: o componente "essencial" (sem ele, os vizinhos que ele liga
# ficam separados na vizinhança: a rampa estreita, a ponte), senão o maior em terra firme.
FINO = 8                           # amostras por lado de célula
F = CEL / FINO                     # 2,08 jd
NQ = 32 * FINO                     # amostras por lado de quadrante
KMAX = 4                           # camadas por amostra (as mais perto do chão)
TETO = 2.0                         # jd entre duas superfícies para caber alguém entre elas
COS_RAMPA = 1 / math.sqrt(1 + RAMPA ** 2)
TOL = 0.35                         # amostras: triângulo que passa a menos disso do centro também conta
PROFUNDO = 50.0                    # jd: piso de modelo tão abaixo do terreno é interior sob o morro (Ironforge)
JANELA = 3                         # células em volta para o teste de componente essencial


def fino(alt, meio, buraco, agua, ruim):
    """Terreno nas amostras de um quadrante (NQ × NQ): altura, buraco, superfície da água (nan) e nocivo.
    A amostra fica a 1/4 do quadrinho, na diagonal entre o vértice externo do canto e o interno do centro
    (a malha do terreno são 4 triângulos por quadrinho em leque no centro): a altura é a média dos dois."""
    i = np.arange(NQ)
    q = i // 2
    canto = q + i % 2
    z = (alt[canto[:, None], canto[None, :]] + meio[q[:, None], q[None, :]]) / 2
    rep = lambda a: np.repeat(np.repeat(a, 2, 0), 2, 1)
    return z.astype(np.float32), rep(buraco), rep(agua), rep(ruim)


def rasteriza(tris, lote=400000):
    """Triângulos de mundo (n,3,3) -> amostras que cobrem: (linha, coluna) finas do continente e altura.
    Triângulo grande se divide em 4 até caber em 4 × 4 amostras; depois, cada centro de amostra dentro (com
    folga TOL) recebe a altura do plano do triângulo."""
    S = 4
    u = (TOPO - tris[..., 0]) / F - 0.5
    v = (TOPO - tris[..., 1]) / F - 0.5
    T = np.stack([u, v, tris[..., 2]], -1).astype(np.float64)
    gi, gj, gz = [], [], []
    while len(T):
        ext = np.maximum(T[:, :, 0].max(1) - T[:, :, 0].min(1), T[:, :, 1].max(1) - T[:, :, 1].min(1))
        grande = ext > S
        G = T[grande]
        for k in range(0, int((~grande).sum()), lote):
            P = T[~grande][k:k + lote]
            a, b, c = P[:, 0], P[:, 1], P[:, 2]
            area = (b[:, 0] - a[:, 0]) * (c[:, 1] - a[:, 1]) - (b[:, 1] - a[:, 1]) * (c[:, 0] - a[:, 0])
            ok = np.abs(area) > 1e-9
            a, b, c, area = a[ok], b[ok], c[ok], area[ok]
            # folga de cada aresta em peso baricêntrico: TOL × comprimento / área
            lbc = np.hypot(c[:, 0] - b[:, 0], c[:, 1] - b[:, 1])
            lca = np.hypot(a[:, 0] - c[:, 0], a[:, 1] - c[:, 1])
            lab = np.hypot(b[:, 0] - a[:, 0], b[:, 1] - a[:, 1])
            fa, fb, fc = TOL * lbc / np.abs(area), TOL * lca / np.abs(area), TOL * lab / np.abs(area)
            i0 = np.ceil(np.minimum(np.minimum(a[:, 0], b[:, 0]), c[:, 0]) - TOL)
            j0 = np.ceil(np.minimum(np.minimum(a[:, 1], b[:, 1]), c[:, 1]) - TOL)
            imax = np.maximum(np.maximum(a[:, 0], b[:, 0]), c[:, 0]) + TOL
            jmax = np.maximum(np.maximum(a[:, 1], b[:, 1]), c[:, 1]) + TOL
            for di in range(S + 2):
                pi = i0 + di
                for dj in range(S + 2):
                    pj = j0 + dj
                    wa = ((c[:, 0] - b[:, 0]) * (pj - b[:, 1]) - (c[:, 1] - b[:, 1]) * (pi - b[:, 0])) / area
                    wb = ((a[:, 0] - c[:, 0]) * (pj - c[:, 1]) - (a[:, 1] - c[:, 1]) * (pi - c[:, 0])) / area
                    wc = 1 - wa - wb
                    dentro = (pi <= imax) & (pj <= jmax) & (wa >= -fa) & (wb >= -fb) & (wc >= -fc)
                    if dentro.any():
                        gi.append(pi[dentro].astype(np.int32))
                        gj.append(pj[dentro].astype(np.int32))
                        gz.append((wa * a[:, 2] + wb * b[:, 2] + wc * c[:, 2])[dentro].astype(np.float32))
        if not len(G):
            break
        m01, m12, m20 = (G[:, 0] + G[:, 1]) / 2, (G[:, 1] + G[:, 2]) / 2, (G[:, 2] + G[:, 0]) / 2
        T = np.concatenate([np.stack(t, 1) for t in ((G[:, 0], m01, m20), (m01, G[:, 1], m12),
                                                      (m20, m12, G[:, 2]), (m01, m12, m20))])
    if not gi:
        return np.zeros(0, np.int32), np.zeros(0, np.int32), np.zeros(0, np.float32)
    return np.concatenate(gi), np.concatenate(gj), np.concatenate(gz)


def camadas(zt, buraco, agua, ruim, oi, oj, oz):
    """Superfícies de cada amostra do quadrante: Z (K, NQ, NQ) com nan onde não há, nado (K, NQ, NQ) e
    objeto (K, NQ, NQ). oi, oj, oz: as amostras que os modelos cobrem (no quadrante) e a altura."""
    n2 = NQ * NQ
    funda = agua - zt > FUNDO
    chao = np.where(funda, agua, zt).ravel()
    # de pé no terreno só onde a encosta cabe na rampa em qualquer direção (gradiente, diferença central
    # de 4,17 jd): de lado num barranco íngreme também se escorrega (o passo a passo não pega isso)
    gx, gy = np.gradient(zt, F)
    plano = np.hypot(gx, gy) <= RAMPA
    s_o = (oi * NQ + oj).astype(np.int64)
    # cidade (ou caverna) debaixo do morro: onde há piso de modelo mais de PROFUNDO abaixo do terreno, o chão é o
    # de dentro — o alto do morro sobre Ironforge sai, e a cidade se liga ao mundo pelo portão
    sob = np.zeros(n2, bool)
    sob[s_o[oz < zt.ravel()[s_o] - PROFUNDO]] = True
    s_t = np.flatnonzero(~buraco & ~ruim & (plano | funda) & ~sob.reshape(NQ, NQ))
    ag = agua.ravel()[s_o]
    fica = ~(oz < ag - FUNDO)                      # bem debaixo d'água: nada-se por cima
    s = np.concatenate([s_t, s_o[fica]])
    z = np.concatenate([chao[s_t], oz[fica]])
    nado = np.concatenate([funda.ravel()[s_t], np.zeros(fica.sum(), bool)])
    obj = np.concatenate([np.zeros(len(s_t), bool), np.ones(fica.sum(), bool)])
    o = np.lexsort((z, s))
    s, z, nado, obj = s[o], z[o], nado[o], obj[o]
    junto = np.zeros(len(s), bool)                 # a de cima, a menos de TETO, fica no lugar desta
    junto[:-1] = (s[1:] == s[:-1]) & (z[1:] - z[:-1] < TETO)
    s, z, nado, obj = s[~junto], z[~junto], nado[~junto], obj[~junto]
    o = np.lexsort((np.abs(z - chao[s]), s))       # as KMAX mais perto do chão
    s, z, nado, obj = s[o], z[o], nado[o], obj[o]
    pos = np.arange(len(s))
    rank = pos - np.maximum.accumulate(np.where(np.r_[True, s[1:] != s[:-1]], pos, 0))
    m = rank < KMAX
    s, z, nado, obj = s[m], z[m], nado[m], obj[m]
    o = np.lexsort((z, s))                         # de baixo para cima
    s, z, nado, obj = s[o], z[o], nado[o], obj[o]
    rank = pos[:len(s)] - np.maximum.accumulate(np.where(np.r_[True, s[1:] != s[:-1]], pos[:len(s)], 0))
    K = int(rank.max()) + 1 if len(s) else 1
    Z = np.full((K, n2), np.nan, np.float32)
    N = np.zeros((K, n2), bool)
    O = np.zeros((K, n2), bool)
    Z[rank, s], N[rank, s], O[rank, s] = z, nado, obj
    return Z.reshape(K, NQ, NQ), N.reshape(K, NQ, NQ), O.reshape(K, NQ, NQ)


def rotula(n, a, b):
    """Componentes do grafo (n nós, arestas a-b): rótulo = menor nó do componente (união por mínimo e
    compressão de caminho, vetorizadas)."""
    p = np.arange(n, dtype=np.int64)
    a, b = np.asarray(a, np.int64), np.asarray(b, np.int64)
    while len(a):
        ra, rb = p[a], p[b]
        dif = ra != rb
        if not dif.any():
            break
        a, b, ra, rb = a[dif], b[dif], ra[dif], rb[dif]
        np.minimum.at(p, np.maximum(ra, rb), np.minimum(ra, rb))
        while True:
            q = p[p]
            if np.array_equal(q, p):
                break
            p = q
    return p


DIRS_FINAS = ((0, 1), (1, 0), (1, 1), (1, -1))


def pares(A, B, dist):
    """Camadas que se ligam entre duas amostras: A, B (K, ...) -> índices (ka, kb, resto...) com desnível
    ≤ RAMPA × dist."""
    with np.errstate(invalid="ignore"):
        return np.nonzero(np.abs(A[:, None] - B[None, :]) <= RAMPA * dist)


def quadrante_v2(lin, col, zt, buraco, agua, ruim, oi, oj, oz):
    """Componentes de um quadrante: o de cada nó (K, NQ, NQ; -1 sem camada), por componente a célula
    (do continente), quantos nós, quantos a nado e quantos em modelo, e os pares de componentes de células
    vizinhas (N-S, L-O) que se tocam dentro do quadrante."""
    Z, N, O = camadas(zt, buraco, agua, ruim, oi, oj, oz)
    K = Z.shape[0]
    n2 = NQ * NQ
    ia, ib, cruz = [], [], []
    for di, dj in DIRS_FINAS:
        ja0 = 1 if dj < 0 else 0
        A = Z[:, :NQ - di, ja0:NQ - max(dj, 0)]
        B = Z[:, di:, ja0 + dj:NQ - max(dj, 0) + dj]
        ka, kb, ii, jj = pares(A, B, F * math.hypot(di, dj))
        ja = jj + ja0
        na = ka * n2 + ii * NQ + ja
        nb = kb * n2 + (ii + di) * NQ + ja + dj
        mr = (ii // FINO) != ((ii + di) // FINO)
        mc = (ja // FINO) != ((ja + dj) // FINO)
        ia.append(na)
        ib.append(nb)
        cruz.append(mr.astype(np.int8) + mc)       # 0 dentro da célula, 1 vizinho reto, 2 diagonal
    na, nb, cruz = np.concatenate(ia), np.concatenate(ib), np.concatenate(cruz)
    dentro = cruz == 0
    lab = rotula(K * n2, na[dentro], nb[dentro])
    valido = ~np.isnan(Z).ravel()
    nos = np.flatnonzero(valido)
    raiz, comp_nos = np.unique(lab[nos], return_inverse=True)
    comp = np.full(K * n2, -1, np.int64)
    comp[nos] = comp_nos
    nc = len(raiz)
    resto = raiz % n2
    cel = (lin * 32 + resto // NQ // FINO) * LADO + col * 32 + resto % NQ // FINO
    tam = np.bincount(comp_nos, minlength=nc)
    nado = np.bincount(comp_nos, weights=N.ravel()[nos], minlength=nc)
    obj = np.bincount(comp_nos, weights=O.ravel()[nos], minlength=nc)
    zsoma = np.bincount(comp_nos, weights=Z.ravel()[nos], minlength=nc)
    def unicos(m):
        e = np.stack([comp[na[m]], comp[nb[m]]], 1)
        return np.unique(e, axis=0) if len(e) else e.reshape(0, 2)
    ea, ed = unicos(cruz == 1), unicos(cruz == 2)
    return {"Z": Z, "comp": comp.reshape(K, NQ, NQ), "cel": cel, "tam": tam, "nado": nado, "obj": obj,
            "zsoma": zsoma, "arestas": ea, "diagonais": ed}


def arestas_borda(Za, Ca, Zb, Cb, ao_lado):
    """Componentes que se tocam através da borda de dois quadrantes. Za/Ca: a última linha (ou coluna) do
    primeiro, (K, NQ); Zb/Cb: a primeira do segundo. Liga reto e em diagonal se as amostras ficam em
    células vizinhas retas (mesma coluna de células)."""
    out = []
    for d in (0, 1, -1):
        a0 = 1 if d < 0 else 0
        A, CA = Za[:, a0:NQ - max(d, 0)], Ca[:, a0:NQ - max(d, 0)]
        B, CB = Zb[:, a0 + d:NQ - max(d, 0) + d], Cb[:, a0 + d:NQ - max(d, 0) + d]
        ka, kb, jj = pares(A, B, F * math.hypot(1, d))
        ja = jj + a0
        reto = (ja // FINO) == ((ja + d) // FINO)
        out.append((np.stack([CA[ka, jj], CB[kb, jj]], 1), reto))
    def unicos(e):
        return np.unique(e, axis=0) if len(e) else e.reshape(0, 2)
    return (unicos(np.concatenate([e[r] for e, r in out])), unicos(np.concatenate([e[~r] for e, r in out])))


def _csr(n, a, b):
    """Lista de adjacência (os dois sentidos) em vetores: vizinhos de k = viz[ini[k]:ini[k+1]]."""
    x, y = np.concatenate([a, b]), np.concatenate([b, a])
    o = np.argsort(x, kind="stable")
    return np.searchsorted(x[o], np.arange(n + 1)), y[o]


def diagonais_por_quina(ccel, arestas, diagonais):
    """Pares de componentes de células vizinhas em diagonal que se alcançam pela quina: tocando-se na própria
    quina, ou passando por um componente qualquer (escolhido ou não) de uma das duas células retas do meio —
    a tábua estreita da ponte que corta a quina, a lasca de rampa na célula ao lado. (k, z), k < z."""
    ini, viz = _csr(len(ccel), arestas[:, 0], arestas[:, 1])
    grau = np.diff(ini)
    pares = [np.sort(diagonais, axis=1)] if len(diagonais) else []
    y = np.repeat(np.arange(len(ccel)), grau)           # para cada entrada viz[i], o dono y
    pos = np.arange(len(viz)) - ini[y]
    for d in range(1, int(grau.max()) if len(grau) else 0):
        ok = pos + d < grau[y]
        i1 = np.flatnonzero(ok)
        k, z = viz[i1], viz[i1 + d]
        ck, cz = ccel[k], ccel[z]
        diag = (np.abs(ck // LADO - cz // LADO) == 1) & (np.abs(ck % LADO - cz % LADO) == 1)
        if diag.any():
            pares.append(np.sort(np.stack([k[diag], z[diag]], 1), axis=1))
    if not pares:
        return np.zeros((0, 2), np.int64)
    return np.unique(np.concatenate(pares), axis=0)


def escolhe(ccel, tam, nado, arestas, ncel, voltas=3, diagonais=None):
    """Um componente por célula (a grade em jogo tem um nó por célula).
    1. O maior em terra firme (a nado só se não houver outro).
    2. Semente das passagens estreitas: onde a célula tem mais de um componente, fica o "essencial" em terra
       firme — o que liga vizinhos que, sem esta célula, não se ligam na vizinhança de JANELA células, contando
       todos os componentes (a rampa estreita ao lado do platô: cada célula da rampa a escolhe ao mesmo tempo).
    3. Acerto pela grade projetada (só os escolhidos; a diagonal pela quina também liga), célula a célula,
       algumas voltas: fica o componente que junta mais grupos de vizinhos que sem a célula ficariam separados
       por perto — a ponte, o rio ou a garganta que passa debaixo dela, a rampa —; empatado, o maior em terra
       firme. A semente que não junta nada (uma galeria solta) volta ao maior."""
    nc = len(ccel)
    if diagonais is None:
        diagonais = np.zeros((0, 2), np.int64)
    seco_a = tam - nado
    chave = np.where(seco_a * 2 >= tam, seco_a, 0) * 4096 + tam
    o = np.lexsort((-chave, ccel))
    primeiro = np.r_[True, ccel[o][1:] != ccel[o][:-1]]
    escolhido = np.full(ncel, -1, np.int64)
    escolhido[ccel[o][primeiro]] = o[primeiro]
    if not len(arestas):
        return escolhido
    ini, viz = _csr(nc, np.r_[arestas[:, 0], diagonais[:, 0]], np.r_[arestas[:, 1], diagonais[:, 1]])
    com = np.diff(ini) > 0
    ncomp = np.bincount(ccel[com], minlength=ncel)
    if not (ncomp >= 2).any():
        return escolhido
    q2 = diagonais_por_quina(ccel, arestas, diagonais)
    ini2, viz2 = _csr(nc, np.r_[arestas[:, 0], q2[:, 0]], np.r_[arestas[:, 1], q2[:, 1]])
    por_cel = {}
    for k in np.flatnonzero(com & (ncomp[ccel] >= 2)):
        por_cel.setdefault(int(ccel[k]), []).append(int(k))
    ccel_l, viz_l, ini_l, viz2_l, ini2_l = ccel.tolist(), viz.tolist(), ini.tolist(), viz2.tolist(), ini2.tolist()
    tam_l = tam.tolist()
    seco = seco_a.tolist()
    agua = [s_ * 2 < t for s_, t in zip(seco, tam_l)]
    maior = {cel: int(escolhido[cel]) for cel in por_cel}
    esc = {}                                              # escolha das células em dúvida (as outras: fixas)
    esc_fixo = escolhido

    def escolha(cel):
        e = esc.get(cel)
        return e if e is not None else int(esc_fixo[cel])

    def perto(cel, r0, c0):
        r, c = divmod(cel, LADO)
        return abs(r - r0) <= JANELA and abs(c - c0) <= JANELA

    # 2. semente: essencial contando todos os componentes (sem a célula, só por terra firme)
    def essencial(k, cel):
        vz = set(viz_l[ini_l[k]:ini_l[k + 1]])
        if len({ccel_l[y] for y in vz}) < 2:
            return False
        r0, c0 = divmod(cel, LADO)
        alvo = set(vz)
        comeco = alvo.pop()
        visto, fila = {comeco}, [comeco]
        while fila and alvo:
            x = fila.pop()
            for y in viz_l[ini_l[x]:ini_l[x + 1]]:
                if y in visto or ccel_l[y] == cel or agua[y] or not perto(ccel_l[y], r0, c0):
                    continue
                visto.add(y)
                alvo.discard(y)
                fila.append(y)
        return bool(alvo)

    for cel, ks in por_cel.items():
        ess = [k for k in ks if not agua[k] and essencial(k, cel)]
        if ess:
            esc[cel] = max(ess, key=lambda k: (seco[k], tam_l[k]))

    # 3. acerto pela grade projetada
    def vizinhos_proj(k):
        """Células vizinhas (retas, e em diagonal pela quina) cujo escolhido o componente k alcança."""
        return {ccel_l[y] for y in viz2_l[ini2_l[k]:ini2_l[k + 1]] if escolha(ccel_l[y]) == y}

    def grupos(k, cel):
        """Em quantos grupos os vizinhos (projetados) de k ficam sem a célula, por perto."""
        alvo = vizinhos_proj(k)
        if len(alvo) < 2:
            return len(alvo)
        r0, c0 = divmod(cel, LADO)
        n = 0
        while alvo:
            n += 1
            comeco = alvo.pop()
            visto, fila = {comeco}, [comeco]
            while fila and alvo:
                x = fila.pop()
                for cy in vizinhos_proj(escolha(x)):
                    if cy in visto or cy == cel or not perto(cy, r0, c0):
                        continue
                    visto.add(cy)
                    alvo.discard(cy)
                    fila.append(cy)
        return n

    def ganho(g, k):
        return g[k] - 1 if g[k] > 1 else 0

    for _ in range(voltas):
        mudou = 0
        for cel, ks in por_cel.items():
            atual = escolha(cel)
            g = {k: grupos(k, cel) for k in ks}
            for k in (atual, maior[cel]):
                if k not in g:
                    g[k] = grupos(k, cel)
            melhor = max(g, key=lambda k: (ganho(g, k), k == atual, not agua[k], seco[k], tam_l[k]))
            if ganho(g, melhor) == ganho(g, atual):
                # nada a ganhar: o maior em terra firme, se ele não perde ligação que a atual dá
                m = maior[cel]
                melhor = m if ganho(g, m) >= ganho(g, atual) and g[m] >= min(g[atual], 1) else atual
            if melhor != atual:
                esc[cel] = melhor
                mudou += 1
        if not mudou:
            break
    # 4. corredores: componentes não escolhidos que, juntos, ligam escolhidos longe (ou sem ligação) na grade
    #    projetada — a ponte de duas células de largura, em que cada coluna sozinha não é essencial
    for _ in range(voltas):
        if not corredores(cel_de=ccel_l, viz2_l=viz2_l, ini2_l=ini2_l, tam_l=tam_l, agua=agua, escolha=escolha,
                          esc=esc, grupos=grupos, vizinhos_proj=vizinhos_proj, ganho=ganho):
            break
    for cel, k in esc.items():
        escolhido[cel] = k
    return escolhido


MIN_CORREDOR = 4                   # nós: componente menor que isso não faz corredor
LONGE_PROJ = 2                     # corredor vale se a grade projetada dá mais que isso × o comprimento + 4


def corredores(cel_de, viz2_l, ini2_l, tam_l, agua, escolha, esc, grupos, vizinhos_proj, ganho):
    """Uma volta de corredores (ver escolhe, passo 4). Devolve quantas células mudaram."""
    nc = len(cel_de)
    livre = [not agua[k] and tam_l[k] >= MIN_CORREDOR and escolha(cel_de[k]) != k for k in range(nc)]
    pai = {}

    def raiz(x):
        while pai[x] != x:
            pai[x] = pai[pai[x]]
            x = pai[x]
        return x

    for k in range(nc):
        if livre[k] and ini2_l[k + 1] > ini2_l[k]:
            pai.setdefault(k, k)
            for y in viz2_l[ini2_l[k]:ini2_l[k + 1]]:
                if livre[y] and cel_de[y] != cel_de[k]:
                    pai.setdefault(y, y)
                    ra, rb = raiz(k), raiz(y)
                    if ra != rb:
                        pai[max(ra, rb)] = min(ra, rb)
    grupos_k = {}
    for k in pai:
        grupos_k.setdefault(raiz(k), []).append(k)
    mudou = 0
    for membros in grupos_k.values():
        if len(membros) > 400:
            continue
        # onde o grupo encosta em escolhidos: célula escolhida -> componentes do grupo que a tocam
        enc = {}
        for k in membros:
            for y in viz2_l[ini2_l[k]:ini2_l[k + 1]]:
                cy = cel_de[y]
                if escolha(cy) == y and cy != cel_de[k]:
                    enc.setdefault(cy, set()).add(k)
        if len(enc) < 2:
            continue
        mset = set(membros)
        cels = list(enc)[:16]
        for ia in range(len(cels)):
            ca = cels[ia]
            # caminho mais curto dentro do grupo, dos que tocam ca até os que tocam as outras
            prev = {k: None for k in enc[ca]}
            fila, frente = list(enc[ca]), 0
            while frente < len(fila):
                x = fila[frente]
                frente += 1
                for y in viz2_l[ini2_l[x]:ini2_l[x + 1]]:
                    if y in mset and y not in prev:
                        prev[y] = x
                        fila.append(y)
            for cb in cels[ia + 1:]:
                fim = next((k for k in fila if k in enc[cb]), None)
                if fim is None:
                    continue
                cam = [fim]
                while prev[cam[-1]] is not None:
                    cam.append(prev[cam[-1]])
                n = len(cam) + 1
                if len({cel_de[k] for k in cam}) != len(cam) or ca in {cel_de[k] for k in cam} or \
                        cb in {cel_de[k] for k in cam}:
                    continue
                if distancia_proj(ca, cb, LONGE_PROJ * n + 4, escolha, vizinhos_proj) <= LONGE_PROJ * n + 4:
                    continue
                # só troca célula cuja escolha atual não é essencial por perto: no cruzamento de dois corredores
                # de uma célula (a ponte sobre o cânion estreito) fica o que já estava — um nó por célula
                if any(ganho({escolha(cel_de[k]): grupos(escolha(cel_de[k]), cel_de[k])}, escolha(cel_de[k])) > 0
                       for k in cam):
                    continue
                for k in cam:
                    esc[cel_de[k]] = k
                    mudou += 1
                break                                    # o grupo mudou: o resto fica para a próxima volta
            else:
                continue
            break
    return mudou


def distancia_proj(ca, cb, limite, escolha, vizinhos_proj):
    """Passos de ca a cb na grade projetada (busca em largura até `limite`; além disso, limite + 1)."""
    if ca == cb:
        return 0
    visto, frente, d = {ca}, [ca], 0
    while frente and d < limite:
        d += 1
        prox = []
        for x in frente:
            for y in vizinhos_proj(escolha(x)):
                if y == cb:
                    return d
                if y not in visto:
                    visto.add(y)
                    prox.append(y)
        frente = prox
    return limite + 1


def ligacoes_v2(ccel, tam, nado, arestas, escolhido, diagonais=None):
    """Byte de ligação e bit de água por célula, dos componentes escolhidos. Reto: os escolhidos das duas
    células se tocam. Diagonal: os escolhidos das pontas se alcançam pela quina (diagonais_por_quina: há chão
    fino de verdade passando ali) e ao menos uma das células retas do meio passa. Na v1 as duas tinham de
    passar; aqui a quina já é chão andável (a ponte estreita que corta a quina de um penhasco)."""
    if diagonais is None:
        diagonais = np.zeros((0, 2), np.int64)
    L = np.zeros((LADO, LADO), np.uint8)
    def marca(pares, so_retas):
        if not len(pares):
            return
        A, B = ccel[pares[:, 0]], ccel[pares[:, 1]]
        ok = (escolhido[A] == pares[:, 0]) & (escolhido[B] == pares[:, 1])
        A, B = A[ok], B[ok]
        dr, dc = B // LADO - A // LADO, B % LADO - A % LADO
        for d, (r, c) in enumerate(DIRS):
            if bool(r and c) == so_retas:
                continue
            m = (dr == r) & (dc == c)
            if not so_retas:                              # uma das retas do meio passa, ao menos
                o1, o2 = A[m] + r * LADO, A[m] + c
                m_ok = (Lr.ravel()[o1] != 0) | (Lr.ravel()[o2] != 0)
                Am, Bm = A[m][m_ok], B[m][m_ok]
            else:
                Am, Bm = A[m], B[m]
            np.bitwise_or.at(L.ravel(), Am, np.uint8(1 << d))
            np.bitwise_or.at(L.ravel(), Bm, np.uint8(1 << DIRS.index((-r, -c))))
    marca(arestas, True)
    Lr = L.copy()
    q = diagonais_por_quina(ccel, arestas, diagonais)
    marca(np.r_[q, q[:, ::-1]], False)
    P = L != 0
    W = np.zeros((LADO, LADO), bool)
    tem = escolhido >= 0
    k = escolhido[tem]
    W.ravel()[np.flatnonzero(tem)] = (nado[k] * 2 >= tam[k]) & P.ravel()[tem]
    return L, W, P


def continente_v2(c, cid, wdt, modelos_tambem=True, log=print, depura=None):
    """Grades do continente pela v2: ligações, água, passável; e o que entrou (estatística)."""
    import modelos
    ruins = nocivos()
    q = casc.quadrantes(c.le(wdt))
    c.prefetch(q.values())
    est = {}
    hits = {}
    if modelos_tambem:
        maid = dict(casc.pedacos_wow(c.le(wdt)))["MAID"]
        objs = {k: struct.unpack_from("<I", maid, (k[0] * 64 + k[1]) * 32 + 4)[0] for k in q}
        wmos, m2s = modelos.colocacoes(c, objs)
        M = modelos.Modelos(c)
        M.baixa(wmos, m2s)
        T, D = M.triangulos(wmos, m2s)
        T = modelos.pisaveis(T, D, COS_RAMPA)
        gi, gj, gz = rasteriza(T)
        est.update(wmo=len(wmos), m2=len(m2s), triangulos=len(T), amostras_modelo=len(gi))
        log("continente %d: %d WMO, %d M2, %d triângulos pisáveis, %d amostras" % (cid, len(wmos), len(m2s),
                                                                                 len(T), len(gi)))
        t = (gi // NQ) * 64 + gj // NQ
        o = np.argsort(t, kind="stable")
        t, gi, gj, gz = t[o], gi[o], gj[o], gz[o]
        cortes = np.searchsorted(t, np.arange(64 * 64 + 1))
        hits = {k: (gi[cortes[k]:cortes[k + 1]] % NQ, gj[cortes[k]:cortes[k + 1]] % NQ, gz[cortes[k]:cortes[k + 1]])
                for k in range(64 * 64) if cortes[k + 1] > cortes[k]}
    vazio = (np.zeros(0, np.int32), np.zeros(0, np.int32), np.zeros(0, np.float32))
    bordas, ccel, tam, nado, obj, zsoma, arestas, diagonais = {}, [], [], [], [], [], [], []
    base = 0
    for (lin, col), fdid in sorted(q.items()):
        adt = c.le(fdid)
        if not adt:
            continue
        zt, bur, ag, rm = fino(*le_adt(adt, ruins))
        r = quadrante_v2(lin, col, zt, bur, ag, rm, *hits.get(lin * 64 + col, vazio))
        cg = np.where(r["comp"] >= 0, r["comp"] + base, -1)
        Z = r["Z"]
        bordas[(lin, col)] = (Z[:, -1, :], cg[:, -1, :], Z[:, 0, :], cg[:, 0, :],
                              Z[:, :, -1], cg[:, :, -1], Z[:, :, 0], cg[:, :, 0])
        ccel.append(r["cel"])
        tam.append(r["tam"])
        nado.append(r["nado"])
        obj.append(r["obj"])
        zsoma.append(r["zsoma"])
        arestas.append(r["arestas"] + base)
        diagonais.append(r["diagonais"] + base)
        base += len(r["cel"])
    for (lin, col), bd in bordas.items():
        for viz, (za, ca, zb, cb) in (((lin + 1, col), (0, 1, 2, 3)), ((lin, col + 1), (4, 5, 6, 7))):
            if viz in bordas:                            # o de baixo (sul) e o da direita (leste)
                bv = bordas[viz]
                e_reto, e_diag = arestas_borda(bd[za], bd[ca], bv[zb], bv[cb], False)
                arestas.append(e_reto)
                diagonais.append(e_diag)
    ccel, tam, nado, obj, zsoma = (np.concatenate(x) for x in (ccel, tam, nado, obj, zsoma))
    arestas = np.concatenate(arestas).astype(np.int64)
    diagonais = np.concatenate(diagonais).astype(np.int64)
    escolhido = escolhe(ccel, tam, nado, arestas, LADO * LADO, diagonais=diagonais)
    L, W, P = ligacoes_v2(ccel, tam, nado, arestas, escolhido, diagonais)
    tem = escolhido >= 0
    est.update(componentes=len(ccel), celulas_com_modelo=int((obj[escolhido[tem]] > 0).sum()))
    if depura is not None:                               # grades para olhar (scripts de depuração)
        k = np.where(tem, escolhido, 0)
        depura.update(modelo=(obj[k] > 0) & tem, altura=np.where(tem, zsoma[k] / np.maximum(tam[k], 1), np.nan),
                      ncomp=np.bincount(ccel, minlength=LADO * LADO), ccel=ccel, tam=tam, nado=nado, obj=obj,
                      zsoma=zsoma, arestas=arestas, diagonais=diagonais, escolhido=escolhido)
    return L, W, P, q, est


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
    """Bytes como string Lua: imprimível como está; o resto em escape decimal o mais curto possível (\\1),
    com 3 dígitos só quando o caractere seguinte é um dígito (senão o Lua leria os dois juntos)."""
    s = []
    n = len(b)
    for i, x in enumerate(b):
        ch = chr(x)
        if ch in '"\\':
            s.append("\\" + ch)
        elif 32 <= x < 127:
            s.append(ch)
        elif i + 1 < n and 48 <= b[i + 1] <= 57:
            s.append("\\%03d" % x)
        else:
            s.append("\\%d" % x)
    return '"%s"' % "".join(s)


def escreve(cid, L, W, q, cabecalho, saida=None):
    """Terrain<cid>.lua: por quadrante existente, RLE dos 1024 bytes de ligação + 128 de água. Devolve o
    total de bytes de dados."""
    linhas = [cabecalho,
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
    if saida:
        with open(saida, "w", encoding="utf-8", newline="\n") as fh:
            fh.write("\n".join(linhas) + "\n")
    return total


def gera(c, cid, wdt, escrever=True, v1=False, modelos_tambem=True):
    if v1:
        H, P, W, q = continente(c, cid, wdt)
        L = ligacoes(H, P, W)
        est, modo = {}, "v1, só terreno"
    else:
        L, W, P, q, est = continente_v2(c, cid, wdt, modelos_tambem)
        modo = "v2, terreno + modelos" if modelos_tambem else "v2, só terreno"
    cab = "-- AUTO-GERADO (gen_terrain.py, %s) do terreno do cliente %s (%s)." % (
        modo, c.versao, getattr(c, "origem", "CASC local"))
    total = escreve(cid, L, W, q, cab, OUT % cid if escrever else None)
    return P, W, L, total, est


def celula(x, y):
    return int((TOPO - x) // CEL), int((TOPO - y) // CEL)


def demo(dados, v2=True, v1=False):
    P1, W1, L1, _, _ = dados[1]
    r, c = celula(1677.6, -4315.7)                       # mestre de voo de Orgrimmar
    assert P1[r, c], "o chão do mestre de voo de Orgrimmar devia ser passável"
    r, c = celula(-1000.0, -4000.0)                      # mar a leste do cais de Ratchet
    assert W1[r, c], "o mar ao lado de Ratchet devia ser água"
    for P_, W_, L_, _, _ in dados.values():
        # nenhuma ligação para fora da grade (o np.roll daria a volta pelo outro lado)
        bordas = (L_[0, :] & 0b10000011).any() or (L_[-1, :] & 0b00111000).any()             or (L_[:, -1] & 0b00001110).any() or (L_[:, 0] & 0b11100000).any()
        assert not bordas, "ligação para fora da grade"
        # diagonal: v1 só se os dois vizinhos retos passam; v2 se um passa (a quina tem chão fino)
        for d, (dr, dc) in enumerate(DIRS):
            if dr and dc:
                tem = (L_ >> d) & 1 == 1
                reto1 = np.roll(P_, -dr, 0)
                reto2 = np.roll(P_, -dc, 1)
                livre = (reto1 & reto2) if v1 else (reto1 | reto2)
                assert not (tem & ~livre).any(), "diagonal cortando quina bloqueada (d=%d)" % d
    vale = P1.sum()
    assert vale > 100000, vale
    print("ok: Kalimdor %d células passáveis, %d de água" % (vale, W1.sum()))
    if v2:
        L0 = dados[0][2]
        # a rampa do litoral da Revantusk Village (#104): a grade liga a vila ao platô de The Hinterlands
        assert liga(L0, (-635.3, -4720.5), (283.7, -2002.8)), "Revantusk Village devia ligar a Aerie Peak"
        # Thandol Span (WMO): de Wetlands a Arathi pelo tabuleiro, sem nadar nem dar a volta
        assert liga(L0, (-2490.0, -2470.0), (-2252.0, -2465.0), 40), "Thandol Span devia ligar as duas pontas"
        print("ok: Revantusk <-> Aerie Peak e Thandol Span ligados na grade")


def liga(L, a, b, limite=None):
    """Busca em largura nas ligações da grade: de a até b (mundo), em no máximo `limite` passos."""
    ini, fim = celula(*a), celula(*b)
    visto, frente, passos = {ini}, [ini], 0
    while frente and (limite is None or passos < limite):
        passos += 1
        prox = []
        for r, c in frente:
            v = int(L[r, c])
            for d, (dr, dc) in enumerate(DIRS):
                if v >> d & 1 and (r + dr, c + dc) not in visto:
                    if (r + dr, c + dc) == fim:
                        return True
                    visto.add((r + dr, c + dc))
                    prox.append((r + dr, c + dc))
        frente = prox
    return False


def abre(cdn=False, atual=False):
    """O cliente local (casc.Casc) se houver; senão, ou com cdn, o CDN público (casc_cdn; a build presa, ou a
    última publicada com atual)."""
    if not cdn and not atual:
        try:
            return casc.Casc()
        except (OSError, StopIteration, SystemExit):
            print("sem cliente local: lendo do CDN", file=sys.stderr)
    import casc_cdn
    return casc_cdn.CascCdn(atual=atual)


def argumentos(args=None):
    import argparse
    ap = argparse.ArgumentParser(description="Gera Terrain0.lua e Terrain1.lua (caminho a pé pelo terreno).")
    ap.add_argument("--cdn", action="store_true", help="lê do CDN público mesmo com cliente instalado")
    ap.add_argument("--cdn-atual", action="store_true", help="CDN na última build publicada (não a presa)")
    ap.add_argument("--v1", action="store_true", help="a grade antiga, só terreno por célula")
    ap.add_argument("--sem-modelos", action="store_true", help="v2 sem os WMO e M2")
    ap.add_argument("--demo", action="store_true", help="só confere pontos conhecidos; não escreve")
    ap.add_argument("--out", metavar="DIR", help="escreve em DIR em vez da raiz do addon")
    return ap.parse_args(args)


if __name__ == "__main__":
    a = argumentos()
    if a.out:
        OUT = os.path.join(a.out, "Terrain%d.lua")
    c = abre(a.cdn, a.cdn_atual)
    w = wdts()
    dados = {}
    for cid in (0, 1):
        dados[cid] = gera(c, cid, w[cid], not a.demo, v1=a.v1, modelos_tambem=not a.sem_modelos)
        print("continente %d: %d KB de dados %s" % (cid, dados[cid][3] // 1024, dados[cid][4] or ""))
    demo(dados, v2=not a.v1 and not a.sem_modelos, v1=a.v1)
