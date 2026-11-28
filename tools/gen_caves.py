"""Gera ../Caves.lua: os |goto dos guias cujo alvo fica numa caverna — piso de WMO interior bem abaixo do terreno —, com
a entrada e o caminho a pé da entrada até o alvo (issue #135). Ex.: Overseer Maltorius, "deep within the Slag Pit":
o ponto do guia cai em cima do platô, 49 jd acima do piso da caverna; a boca fica a 253 jd de caminhada por dentro.

Do terreno e dos modelos do próprio cliente (gen_terrain, modelos; CASC local ou o CDN, a build presa). Por ponto:
  1. zona -> mundo pela UiMapAssignment (a mesma conta de C_Map.GetWorldPosFromMapPos);
  2. triagem barata: WMO cuja caixa (MODF) cobre o ponto, grupos interiores (MOGP 0x2000 sem 0x8), triângulos pisáveis a
     até RAIO jd: candidato se algum piso fica mais de FUNDO jd abaixo do terreno (altura do MCVT na mesma amostra);
  3. rodada completa por colocação de WMO (a região serve a todos os pontos dela): chão fino de 2,08 jd em camadas (terreno
     de pé, pisos de WMO e M2; todas as camadas, juntas a menos de TETO), grafo de 8 vizinhos com desnível na RAMPA (as
     regras do gen_terrain). Nó subterrâneo: de grupo interior, ou mais de SUB jd abaixo do terreno. O alvo é o nó
     subterrâneo (> FUNDO jd abaixo) a até RAIO jd do ponto; a caverna, o componente dos nós subterrâneos ligados a ele;
     as bocas, onde ela encosta num nó de fora (terreno, ou piso de modelo no nível do terreno e não interior). Dijkstra
     do alvo só por dentro: a boca mais perto — de preferência uma que um portal interior<->exterior do WMO (MOPT/MOPR)
     confirma a até PORTAL_PERTO jd — e o caminho, simplificado (Douglas-Peucker, TOL jd);
  4. classifica: s=1 (caverna) se o texto do passo (notas, objetivos, título e objetivo da quest) cita o nome da área do
     WMO (WMOAreaTable; sem nome próprio, a AreaTable) de um jeito que põe o alvo dentro: o nome já é de caverna (Mine,
     Den, Pit...) ou a frase tem pista de interior (inside, within, deep, beneath, cave...), e nada de "atop/top of/on
     top/above/outside" colado no nome ("atop Jintha'alor"); citação sem pista só vale num ponto sem chão de fora de pé a
     até RAIO jd (J.D. Collie, na parede de Marshal's Refuge). s=0 (ambíguo: o NPC pode estar em cima — o jogo decide pelo
     GetSubZoneText, que dentro da caverna dá o nome) nos outros, mesmo sem chão de fora de pé perto do ponto (a encosta
     íngreme também não tem: Raptor Ridge, Rustmaul Dig Site). Depois, o ambíguo a até PROMOVE jd (3D, entre os alvos)
     de um s=1 citado na mesma caverna (componente) vira s=1: Lathoric the Black e Obsidion, ao lado do Dying
     Archaeologist, no Slag Pit.
     Ficam fora: o |goto em coordenada do mapa do continente (grosseira demais para o RAIO), as capitais (INTERIORES do gen_terrain e as zonas das capitais: lá a cidade é a "caverna" e a grade já
     trata), o "prédio com porta" (de cima do ponto até o alvo a pé dá quase a reta) e a caverna sem boca no chão fino.

Face só de colisão do WMO virada para baixo NÃO conta como piso aqui (o modelos.pisaveis a conta, dupla face): na caverna
ela é a tampa invisível do teto e cria andares falsos no alto (conferido no Slag Pit: mesmas bocas e caminhos, sem a
camada falsa).

    python gen_caves.py                         # gera ../Caves.lua (e confere o Slag Pit)
    python gen_caves.py --demo                  # só confere (não escreve)
    python gen_caves.py --zona "Searing Gorge"  # só os pontos de uma zona (rodada rápida; com --demo, não escreve)
    python gen_caves.py --cdn                   # lê do CDN mesmo com cliente instalado

Formato (o Caves.lua lê exatamente isto): ns.caves = { w = { [chave] = { n = nome, c = continente } },
p = { ["Zona|x|y"] = { w, s, c, e = {x, y}, p = {x1, y1, ...}, l = jd, z = jd } } } — mundo na convenção do addon
(x norte, y oeste), polilinha da entrada até o alvo. Chave do WMO: o uniqueId da colocação.
"""
import ast
import collections
import heapq
import json
import math
import os
import re
import struct
import sys
import time

import numpy as np

import casc
import gen_terrain as gt
import gen_travel
import modelos

HERE = os.path.dirname(os.path.abspath(__file__))
GUIAS = os.path.join(HERE, "..", "Guides")
ZONEDATA = os.path.join(HERE, "..", "ZoneData.lua")
OUT = os.path.join(HERE, "..", "Caves.lua")

F, NQ, TOPO, TILE = gt.F, gt.NQ, gt.TOPO, gt.TILE
RAMPA, TETO, FUNDO_AGUA = gt.RAMPA, gt.TETO, gt.FUNDO
COS_RAMPA = gt.COS_RAMPA

RAIO = 8.0                # jd: o NPC anda e a coordenada é arredondada; piso e chão de fora procurados até isto do ponto
FUNDO = 10.0              # jd abaixo do terreno: piso de caverna (alvo)
SUB = 3.0                 # jd abaixo do terreno: nó subterrâneo (mesmo de grupo exterior: o fosso aberto no buraco)
MARGEM = 120.0            # jd em volta do WMO e dos pontos na região processada
PERTO_PONTO = 150.0       # jd em volta de cada ponto, no mínimo
MAX_LADO = 1800.0         # jd: região maior que isso (WMO enorme) fica centrada nos pontos
TOL = 4.0                 # jd: Douglas-Peucker do caminho gravado
PORTAL_PERTO = 25.0       # jd (2D) da boca a um portal interior<->exterior para ela contar como confirmada
CIMA_RAIO = 40.0          # jd: onde procurar o chão de fora "em cima" do ponto (para o teste do prédio com porta)
PORTA_FATOR, PORTA_FOLGA = 1.5, 40.0    # de cima até o alvo a pé <= isso × a reta (3D) + folga: prédio com porta, fora
MOGP_EXTERIOR, MOGP_INTERIOR = 0x8, 0x2000
PROMOVE = 25.0            # jd (3D) entre o alvo ambíguo e um s=1 citado da mesma caverna: vira s=1 (Obsidion: 20,8)
CAPITAIS = ("Ironforge", "Stormwind City", "Undercity", "Orgrimmar", "Thunder Bluff", "Darnassus")
RX_GOTO = re.compile(r"\|goto ([^|,\d-][^|,]*?)\s+(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)")
SLAG_PIT = ("Searing Gorge|40.77|35.89", (-6767.7, -1426.0), "The Slag Pit")     # o caso do #135 (--demo)
LATHORIC = "Searing Gorge|41.32|25.53"     # no Slag Pit, ao lado do Dying Archaeologist: s=1 por vizinhança (--demo)
ENCOSTA = "Wetlands|67.84|30.74"           # raptores de Raptor Ridge, encosta íngreme sem chão de pé: não é s=1 (--demo)
TOPO_DE = "The Hinterlands|57.66|81.51"    # "can be found atop Jintha'alor": cita, mas em cima — não é s=1 (--demo)
JD_COLLIE = "Un'Goro Crater|41.92|2.70"    # J.D. Collie, na caverna de Marshal's Refuge: s=1 (--demo)


# ── entrada: guias, zonas, nomes ─────────────────────────────────────────────────────────────────────────────────────
def guias(zona=None):
    """Pontos |goto dos objetivos (Leveling e Dungeons, as duas facções): (zona, x, y) -> texto dos passos que o usam
    (notas, linhas dos objetivos sem o |goto, título e objetivo das quests citadas); e a primeira linha de objetivo
    com o ponto (para a lista de conferência)."""
    with open(os.path.join(gen_travel.BANCO, "quests.json"), encoding="utf-8") as fh:
        quests = json.load(fh)

    def da_quest(q):
        """Título e objetivo da quest, um item por linha (o objText vem como a lista do Questie, em texto)."""
        e = quests.get(str(q)) or {}
        obj = e.get("objText") or ""
        if isinstance(obj, str) and obj.startswith("["):
            try:
                obj = ast.literal_eval(obj)
            except (ValueError, SyntaxError):
                pass
        if isinstance(obj, (list, tuple)):
            obj = "\n".join(str(o) for o in obj if o)
        return "%s\n%s" % (e.get("name") or "", obj)
    pontos, primeira = {}, {}
    for sub in ("Leveling", "Dungeons"):
        for raiz, _, arqs in sorted(os.walk(os.path.join(GUIAS, sub))):
            for a in sorted(arqs):
                if not a.endswith(".lua"):
                    continue
                with open(os.path.join(raiz, a), encoding="utf-8", errors="replace") as fh:
                    texto = fh.read()
                for corpo in re.findall(r"\[\[(.*?)\]\]", texto, re.S):
                    for passo in re.split(r"^\s*step\s*$", corpo, flags=re.M):
                        linhas = [l.strip() for l in passo.splitlines() if l.strip()]
                        if not any(RX_GOTO.search(l) for l in linhas):
                            continue
                        partes, qids = [], set()
                        for l in linhas:
                            verbo = l.split()[0]
                            if verbo in ("accept", "turnin"):
                                qids.update(int(i) for i in re.findall(r"##(\d+)", l))
                            qids.update(int(i) for i in re.findall(r"\|q (\d+)", l))
                            partes.append(re.sub(r"\|goto [^|]*", " ", l))
                        txt = "\n".join(partes + [da_quest(q) for q in sorted(qids)]).lower()
                        for l in linhas:
                            for m in RX_GOTO.finditer(l):
                                k = (m.group(1).strip(), float(m.group(2)), float(m.group(3)))
                                if zona and k[0] != zona:
                                    continue
                                pontos.setdefault(k, set()).add(txt)
                                primeira.setdefault(k, "%s/%s: %s" % (sub, a, l))
    return {k: "\n".join(sorted(v)) for k, v in pontos.items()}, primeira


def uimaps():
    """Nome de zona (como no guia) -> uiMapID, do ZoneData.lua."""
    out = {}
    with open(ZONEDATA, encoding="utf-8") as fh:
        for linha in fh:
            m = re.match(r'\s*\["(.+)"\] = (\d+),', linha)
            if m:
                out[m.group(1).replace("\\'", "'")] = int(m.group(2))
    return out


class Zona:
    """UiMapAssignment (a linha de ordem 0 do uiMap): retângulo do mundo que o mapa 0-1 da zona cobre."""

    def __init__(self, r):
        self.mapa = int(r["MapID"])
        self.u0, self.v0 = float(r["UiMin_0"]), float(r["UiMin_1"])
        self.u1, self.v1 = float(r["UiMax_0"]), float(r["UiMax_1"])
        self.xmin, self.ymin = float(r["Region_0"]), float(r["Region_1"])
        self.xmax, self.ymax = float(r["Region_3"]), float(r["Region_4"])

    def mundo(self, zx, zy):
        fu = (zx / 100 - self.u0) / (self.u1 - self.u0)
        fv = (zy / 100 - self.v0) / (self.v1 - self.v0)
        return self.xmax - fv * (self.xmax - self.xmin), self.ymax - fu * (self.ymax - self.ymin)

    def zona(self, x, y):
        fu = (self.ymax - y) / (self.ymax - self.ymin)
        fv = (self.xmax - x) / (self.xmax - self.xmin)
        return 100 * (self.u0 + fu * (self.u1 - self.u0)), 100 * (self.v0 + fv * (self.v1 - self.v0))


def zonas():
    return {int(r["UiMapID"]): Zona(r) for r in gen_travel.tabela("UiMapAssignment") if r["OrderIndex"] == "0"}


def nomes_wmo():
    """(WMOID, NameSetID, WMOGroupID) -> nome em enUS (WMOAreaTable; sem nome próprio, o da AreaTable)."""
    area = {r["ID"]: r["AreaName_lang"] for r in gen_travel.tabela("AreaTable")}
    out = {}
    for r in gen_travel.tabela("WMOAreaTable"):
        nome = r["AreaName_lang"] or area.get(r["AreaTableID"], "")
        if nome:
            out[(int(r["WMOID"]), int(r["NameSetID"]), int(r["WMOGroupID"]))] = nome
    return out


def nome_grupo(nomes, wmoid, nset, gid):
    return nomes.get((wmoid, nset, gid)) or nomes.get((wmoid, nset, -1)) or ""


def pisavel(tris, dupla=None):
    """Triângulos em que se pisa: normal para cima com inclinação na RAMPA (sem a face de baixo das só-colisão)."""
    n = np.cross(tris[:, 1] - tris[:, 0], tris[:, 2] - tris[:, 0])
    norma = np.linalg.norm(n, axis=1)
    return (norma > 1e-6) & (n[:, 2] / np.maximum(norma, 1e-12) >= COS_RAMPA)


class Cliente:
    """O que se lê do cliente uma vez: WDT, quadrantes, MAID e os dados de cada WMO raiz (wmoID, flags dos grupos)."""

    def __init__(self, c):
        self.c = c
        w = gt.wdts()
        self.wdt = {m: c.le(w[m]) for m in (0, 1)}
        self.q = {m: casc.quadrantes(self.wdt[m]) for m in (0, 1)}
        self.maid = {m: dict(casc.pedacos_wow(self.wdt[m]))["MAID"] for m in (0, 1)}
        self.ruins = gt.nocivos()
        self.nomes = nomes_wmo()
        self._wmo = {}

    def obj0(self, mapa, k):
        return struct.unpack_from("<I", self.maid[mapa], (k[0] * 64 + k[1]) * 32 + 4)[0]

    def modf(self, mapa, k):
        """Colocações de WMO do quadrante (com FileDataID): [(fdid, uid, nset, dset, M, P, caixa x0 x1 y0 y1)]."""
        o = self.obj0(mapa, k)
        b = o and self.c.le(o)
        d = dict(casc.pedacos_wow(b)).get("MODF", b"") if b else b""
        out = []
        for j in range(len(d) // 64):
            f = struct.unpack_from("<II3f3f6fHHHH", d, j * 64)
            if not f[14] & 0x8:
                continue
            e0, e1 = modelos.mundo(f[8:11]), modelos.mundo(f[11:14])
            esc = f[17] / 1024 if f[14] & 0x4 else 1.0
            out.append((f[0], f[1], f[16], f[15], modelos.matriz(f[5:8], esc), modelos.mundo(f[2:5]),
                        (min(e0[0], e1[0]), max(e0[0], e1[0]), min(e0[1], e1[1]), max(e0[1], e1[1]))))
        return out

    def wmo(self, M, fdid):
        """wmoID e (flags, WMOGroupID) de cada grupo; None se a raiz não lê."""
        if fdid not in self._wmo:
            r = M.wmo_raiz(fdid)
            v = None
            if r:
                rb = dict(casc.pedacos_wow(self.c.le(fdid)))
                gl = []
                for g in r["grupos"]:
                    gb = self.c.le(g)
                    mg = dict(casc.pedacos_wow(gb)).get("MOGP") if gb else None
                    gl.append((struct.unpack_from("<I", mg, 8)[0], struct.unpack_from("<I", mg, 56)[0]) if mg else (0, 0))
                v = (struct.unpack_from("<I", rb["MOHD"], 32)[0], gl)
            self._wmo[fdid] = v
        return self._wmo[fdid]


def interior(fl):
    return bool(fl & MOGP_INTERIOR) and not fl & MOGP_EXTERIOR


# ── 2. triagem ───────────────────────────────────────────────────────────────────────────────────────────────────────
def triagem(cl, por_tile, log):
    """Pontos com piso de grupo interior mais de FUNDO jd abaixo do terreno a até RAIO jd: ponto -> (colocação, fundo,
    nome da área do grupo); e os dados de cada colocação. Uma colocação por ponto: a do piso mais fundo."""
    M = modelos.Modelos(cl.c)
    out, coloc = {}, {}
    t0 = time.time()
    for n_t, ((mp, lin, col), lst) in enumerate(sorted(por_tile.items())):
        if (lin, col) not in cl.q[mp]:
            continue
        sel_w = []
        for w in cl.modf(mp, (lin, col)):
            x0, x1, y0, y1 = w[6]
            sel = [p for p in lst if x0 - RAIO <= p[3] <= x1 + RAIO and y0 - RAIO <= p[4] <= y1 + RAIO]
            if sel:
                sel_w.append((w, sel))
        if not sel_w:
            continue
        zt, _, _, _ = gt.fino(*gt.le_adt(cl.c.le(cl.q[mp][(lin, col)]), cl.ruins))
        hits = {}
        for w, sel in sel_w:
            fdid, uid, nset, dset, Mw, Pw, caixa = w
            info = cl.wmo(M, fdid)
            if not info:
                continue
            wmoid, gl = info
            P = np.array([[p[3], p[4]] for p in sel])
            for g, (fl, gid) in zip(M.wmo_raiz(fdid)["grupos"], gl):
                if not interior(fl):
                    continue
                T, _ = M.wmo_grupo(g)
                if not len(T):
                    continue
                Tw = (T.reshape(-1, 3) @ Mw.T + Pw).reshape(-1, 3, 3).astype(np.float32)
                Tw = Tw[pisavel(Tw)]
                if not len(Tw):
                    continue
                lo, hi = Tw[..., :2].min(1), Tw[..., :2].max(1)
                Tw = Tw[((lo[:, None, :] <= P[None] + RAIO) & (hi[:, None, :] >= P[None] - RAIO)).all(2).any(1)]
                if not len(Tw):
                    continue
                ii, jj, zz = gt.rasteriza(Tw)
                li, lj = ii - lin * NQ, jj - col * NQ
                ok = (li >= 0) & (li < NQ) & (lj >= 0) & (lj < NQ)        # piso de outro quadrante: o ponto não está lá
                xs, ys = TOPO - (ii + 0.5) * F, TOPO - (jj + 0.5) * F
                prof = np.full(len(zz), np.nan, np.float32)
                prof[ok] = zt[li[ok], lj[ok]] - zz[ok]
                for p in sel:
                    with np.errstate(invalid="ignore"):
                        m = (np.hypot(xs - p[3], ys - p[4]) <= RAIO) & (prof > FUNDO)
                    if m.any():
                        f_ = float(np.nanmax(np.where(m, prof, np.nan)))
                        if f_ > hits.get(p, (0,))[0]:
                            hits[p] = (f_, uid, nome_grupo(cl.nomes, wmoid, nset, gid))
                            coloc[uid] = (mp, fdid, uid, nset, dset, Mw, Pw, caixa, wmoid)
        for p, (f_, uid, nome) in hits.items():
            out[p] = (uid, f_, nome)
        if n_t % 100 == 0:
            log("  triagem: %d/%d quadrantes, %d candidatos, %.0fs" % (n_t, len(por_tile), len(out), time.time() - t0))
    return out, coloc


# ── 3. rodada completa: região de uma colocação ─────────────────────────────────────────────────────────────────────
def portais_boca(cl, fdid, Mw, Pw, gl):
    """Centros (mundo) dos portais em pé que ligam grupo interior a exterior: as portas do WMO para fora."""
    rb = dict(casc.pedacos_wow(cl.c.le(fdid)))
    mopt, mopv, mopr = rb.get("MOPT", b""), rb.get("MOPV", b""), rb.get("MOPR", b"")
    V = np.frombuffer(mopv, "<f4").reshape(-1, 3)
    liga = {}
    for k in range(len(mopr) // 8):
        pi, gi, _, _ = struct.unpack_from("<HHhH", mopr, k * 8)
        liga.setdefault(pi, set()).add(gi)
    out = []
    for pi in range(len(mopt) // 20):
        sv, n = struct.unpack_from("<HH", mopt, pi * 20)
        P = V[sv:sv + n] @ Mw.T + Pw
        intr = {interior(gl[g][0]) for g in liga.get(pi, ()) if g < len(gl)}
        horizontal = np.ptp(P[:, 2]) < 0.25 * max(np.ptp(P[:, 0]), np.ptp(P[:, 1]), 1e-3)
        if len(intr) == 2 and not horizontal and len(P):
            out.append(P.mean(0))
    return np.array(out).reshape(-1, 3)


def arestas(Z):
    """Ligações do chão fino (8 vizinhos, camada a camada, desnível na RAMPA), em blocos de linhas para não estourar a
    memória (pares() compara K × K camadas). Devolve (a, b, comprimento 3D)."""
    K, H, W = Z.shape
    n2 = H * W
    bl = max(8, int(4e6 // max(K * K * W, 1)))
    na_l, nb_l, w_l = [], [], []
    for di, dj in ((0, 1), (1, 0), (1, 1), (1, -1)):
        ja0 = 1 if dj < 0 else 0
        d = F * math.hypot(di, dj)
        for r0 in range(0, H - di, bl):
            r1 = min(H - di, r0 + bl)
            A = Z[:, r0:r1, ja0:W - max(dj, 0)]
            B = Z[:, r0 + di:r1 + di, ja0 + dj:W - max(dj, 0) + dj]
            ka, kb, ii, jj = gt.pares(A, B, d)
            za, zb = A[ka, ii, jj], B[kb, ii, jj]
            ii = ii + r0
            ja = jj + ja0
            na_l.append(ka * n2 + ii * W + ja)
            nb_l.append(kb * n2 + (ii + di) * W + ja + dj)
            w_l.append(np.sqrt(d * d + (za - zb) ** 2).astype(np.float32))
    return np.concatenate(na_l), np.concatenate(nb_l), np.concatenate(w_l)


class Regiao:
    """Chão fino em camadas de uma caixa do mundo (terreno + todos os WMO e M2 dos quadrantes) e o grafo."""

    def __init__(self, cl, mapa, caixa, alvo_uid):
        c = cl.c
        self.caixa = caixa
        gi0, gi1 = int((TOPO - caixa[1]) / F), int((TOPO - caixa[0]) / F) + 1
        gj0, gj1 = int((TOPO - caixa[3]) / F), int((TOPO - caixa[2]) / F) + 1
        H, W = gi1 - gi0, gj1 - gj0
        self.gi0, self.gj0, self.H, self.W = gi0, gj0, H, W
        q = cl.q[mapa]
        tiles = [(a, b) for a in range(gi0 // NQ, (gi1 - 1) // NQ + 1) for b in range(gj0 // NQ, (gj1 - 1) // NQ + 1)
                 if (a, b) in q]
        # terreno
        ZT = np.full((H, W), np.nan, np.float32)
        BUR = np.ones((H, W), bool)
        AG = np.full((H, W), np.nan, np.float32)
        RM = np.zeros((H, W), bool)
        c.prefetch([q[k] for k in tiles])
        for (a, b) in tiles:
            zt, bur, ag, rm = gt.fino(*gt.le_adt(c.le(q[(a, b)]), cl.ruins))
            a0, b0 = a * NQ - gi0, b * NQ - gj0
            sa, sb = slice(max(0, a0), min(H, a0 + NQ)), slice(max(0, b0), min(W, b0 + NQ))
            ta, tb = slice(sa.start - a0, sa.stop - a0), slice(sb.start - b0, sb.stop - b0)
            ZT[sa, sb], BUR[sa, sb], AG[sa, sb], RM[sa, sb] = zt[ta, tb], bur[ta, tb], ag[ta, tb], rm[ta, tb]
        # modelos, com etiqueta: interior? (grupo do WMO); doodads e M2 de fora não são interiores
        objs = {k: cl.obj0(mapa, k) for k in tiles}
        wmos, m2s = modelos.colocacoes(c, objs)
        M = modelos.Modelos(c)
        M.baixa(wmos, m2s)
        hits = []                       # (i, j, z, interior)
        self.portais = np.zeros((0, 3))

        def poe(T, intr):
            if not len(T):
                return
            T = np.asarray(T, np.float32)
            xs, ys = T[..., 0], T[..., 1]
            dentro = (xs.max(1) >= caixa[0]) & (xs.min(1) <= caixa[1]) & (ys.max(1) >= caixa[2]) & (ys.min(1) <= caixa[3])
            T = T[dentro]
            T = T[pisavel(T)]
            if not len(T):
                return
            ii, jj, zz = gt.rasteriza(T)
            ok = (ii >= gi0) & (ii < gi1) & (jj >= gj0) & (jj < gj1)
            if ok.any():
                hits.append((ii[ok] - gi0, jj[ok] - gj0, zz[ok], np.full(ok.sum(), intr)))

        Ts_m2 = []
        for fdid, uid, Mw, Pw, dset in wmos:
            info = cl.wmo(M, fdid)
            if not info:
                continue
            r = M.wmo_raiz(fdid)
            _, gl = info
            for g, (fl, _) in zip(r["grupos"], gl):
                T, _ = M.wmo_grupo(g)
                if len(T):
                    poe((T.reshape(-1, 3) @ Mw.T + Pw).reshape(-1, 3, 3), interior(fl))
            if uid == alvo_uid:
                self.portais = portais_boca(cl, fdid, Mw, Pw, gl)
            for ini, n in M._conjuntos(r, dset):
                for f_, t_, q_, e_ in r["doodads"][ini:ini + n]:
                    if f_:
                        Ts_m2.append((f_, Mw @ q_ * e_, Mw @ t_ + Pw))
        Ts_m2 += [(f_, Mm, Pm) for f_, _, Mm, Pm in m2s]
        cx, cy = (caixa[0] + caixa[1]) / 2, (caixa[2] + caixa[3]) / 2
        raio = math.hypot(caixa[1] - caixa[0], caixa[3] - caixa[2]) / 2 + 100
        lote = []
        for f_, Mm, Pm in Ts_m2:
            if math.hypot(Pm[0] - cx, Pm[1] - cy) > raio:
                continue
            T = M.m2(f_)
            if len(T):
                lote.append((T.reshape(-1, 3) @ Mm.T + Pm).reshape(-1, 3, 3))
        if lote:
            poe(np.concatenate(lote), False)
        del M, lote
        # camadas: terreno de pé (a superfície da água funda) + pisos de modelo; a menos de TETO, a de cima (interior se
        # algum dos juntados é). Piso de modelo afogado só se está na coluna do líquido do ADT (entre o terreno e a
        # superfície): a caverna debaixo do lago fica (gen_terrain.camadas a descartaria).
        n2 = H * W
        funda = AG - ZT > FUNDO_AGUA
        chao = np.where(funda, AG, ZT)
        gx, gy = np.gradient(np.nan_to_num(ZT, nan=0), F)
        s_t = np.flatnonzero((~BUR & ~RM & ((np.hypot(gx, gy) <= RAMPA) | funda) & ~np.isnan(ZT)).ravel())
        if hits:
            oi, oj, oz, ob = (np.concatenate([h[k] for h in hits]) for k in range(4))
        else:
            oi = oj = np.zeros(0, np.int64)
            oz, ob = np.zeros(0, np.float32), np.zeros(0, bool)
        s_o = oi.astype(np.int64) * W + oj
        with np.errstate(invalid="ignore"):
            afoga = (oz < AG.ravel()[s_o] - FUNDO_AGUA) & (oz > ZT.ravel()[s_o] - TETO)
        s = np.concatenate([s_t, s_o[~afoga]])
        z = np.concatenate([chao.ravel()[s_t], oz[~afoga]])
        ter = np.concatenate([np.ones(len(s_t), bool), np.zeros((~afoga).sum(), bool)])
        intr = np.concatenate([np.zeros(len(s_t), bool), ob[~afoga]])
        o = np.lexsort((z, s))
        s, z, ter, intr = s[o], z[o], ter[o], intr[o]
        novo = np.r_[True, (s[1:] != s[:-1]) | (z[1:] - z[:-1] >= TETO)]
        grp = np.cumsum(novo) - 1
        ultimo = np.r_[novo[1:], True]
        gint = np.zeros(grp[-1] + 1 if len(grp) else 0, bool)
        np.logical_or.at(gint, grp, intr)
        s, z, ter, intr = s[ultimo], z[ultimo], ter[ultimo], gint[grp[ultimo]]
        pos = np.arange(len(s))
        rank = pos - np.maximum.accumulate(np.where(np.r_[True, s[1:] != s[:-1]], pos, 0))
        K = int(rank.max()) + 1 if len(s) else 1
        Z = np.full((K, n2), np.nan, np.float32)
        TER = np.zeros((K, n2), bool)
        IN = np.zeros((K, n2), bool)
        Z[rank, s], TER[rank, s], IN[rank, s] = z, ter, intr
        self.K, self.n2 = K, n2
        self.Z, self.ZT = Z.reshape(K, H, W), ZT
        self.TER = TER.ravel()
        with np.errstate(invalid="ignore"):
            prof = (ZT[None] - self.Z).ravel()
            valido = ~np.isnan(Z.ravel())
            self.PROF = prof
            # subterrâneo: piso de modelo interior, ou mais de SUB jd abaixo do terreno
            self.sub = valido & ~self.TER & (IN.ravel() | (prof > SUB))
            self.fora = valido & ~self.sub                  # terreno de pé, ou piso de modelo no nível do terreno
        del Z, TER, IN, hits
        # grafo
        na, nb, wt = arestas(self.Z)
        self.ini, self.viz = gt._csr(K * n2, na, nb)
        o = np.argsort(np.concatenate([na, nb]), kind="stable")
        self.wviz = np.concatenate([wt, wt])[o]
        # componentes subterrâneos (só por arestas entre nós subterrâneos)
        m = self.sub[na] & self.sub[nb]
        self.comp = gt.rotula(K * n2, na[m], nb[m])
        self.ncomp = np.bincount(self.comp[self.sub], minlength=K * n2) if self.sub.any() else np.zeros(K * n2, np.int64)
        self.nos, self.arestas_n = int(valido.sum()), len(na)

    # -- utilidades -------------------------------------------------------------------------------------------------
    def xyz(self, nid):
        k, r = divmod(int(nid), self.n2)
        i, j = divmod(r, self.W)
        return TOPO - (i + self.gi0 + 0.5) * F, TOPO - (j + self.gj0 + 0.5) * F, float(self.Z[k, i, j])

    def perto(self, X, Y, raio):
        """Nós a até `raio` jd (2D) de (X, Y): [(nó, distância)]."""
        ti, tj = (TOPO - X) / F - self.gi0 - 0.5, (TOPO - Y) / F - self.gj0 - 0.5
        r = int(math.ceil(raio / F)) + 1
        out = []
        for i in range(max(0, int(ti) - r), min(self.H, int(ti) + r + 2)):
            for j in range(max(0, int(tj) - r), min(self.W, int(tj) + r + 2)):
                d = math.hypot(i - ti, j - tj) * F
                if d <= raio:
                    for k in range(self.K):
                        if self.Z[k, i, j] == self.Z[k, i, j]:
                            out.append((k * self.n2 + i * self.W + j, d))
        return out

    def dijkstra(self, fontes, pode, limite=1e9, alvo=None):
        """Distâncias a partir de `fontes`; nó que não `pode` é terminal (chega, não sai). Para em `alvo`."""
        dist, prev = {f: 0.0 for f in fontes}, {}
        fila = [(0.0, f) for f in fontes]
        ini, viz, wviz = self.ini, self.viz, self.wviz
        while fila:
            d, x = heapq.heappop(fila)
            if d > dist.get(x, 1e18):
                continue
            if x == alvo or d > limite:
                break
            if not pode(x):
                continue
            a, b = ini[x], ini[x + 1]
            for y, w in zip(viz[a:b].tolist(), wviz[a:b].tolist()):
                nd = d + w
                if nd < dist.get(y, 1e18):
                    dist[y] = nd
                    prev[y] = x
                    heapq.heappush(fila, (nd, y))
        return dist, prev


def caminho(prev, t):
    cam = [t]
    while cam[-1] in prev:
        cam.append(prev[cam[-1]])
    return cam[::-1]


def resolve(reg, X, Y):
    """Um ponto numa região: dict com o alvo, a boca, o caminho, o fundo e o teste do chão de fora; ou (None, motivo)."""
    viz8 = reg.perto(X, Y, RAIO)
    cand = [(n, d) for n, d in viz8 if reg.sub[n] and reg.PROF[n] > FUNDO]
    if not cand:
        return None, "sem piso fundo na rodada completa"
    # o componente subterrâneo maior; empate, o mais perto
    alvo = max(cand, key=lambda t: (int(reg.ncomp[reg.comp[t[0]]]), -t[1]))[0]
    rot = reg.comp[alvo]
    comp, sub = reg.comp, reg.sub
    dentro = lambda n: sub[n] and comp[n] == rot
    dist, prev = reg.dijkstra([alvo], dentro)
    bocas = sorted((d, n) for n, d in dist.items() if not dentro(n))
    if not bocas:
        return None, "caverna sem boca no chão fino"
    escolha, confirmada = bocas[0], False
    if len(reg.portais):
        for d, n in bocas:
            x, y, z = reg.xyz(n)
            dp = np.hypot(reg.portais[:, 0] - x, reg.portais[:, 1] - y)
            if (dp <= PORTAL_PERTO).any():
                escolha, confirmada = (d, n), True
                break
    d_boca, boca = escolha
    cam = [reg.xyz(n) for n in caminho(prev, boca)]          # alvo -> boca
    cam.reverse()                                              # boca -> alvo
    simp = gen_travel.simplifica([list(p) for p in cam], TOL)
    xa, ya, za = reg.xyz(alvo)
    k, r = divmod(int(alvo), reg.n2)
    fundo = float(reg.ZT[r // reg.W, r % reg.W]) - za
    chao_fora = any(reg.fora[n] for n, _ in viz8)
    # prédio com porta: de cima do ponto (o chão de fora mais perto, até CIMA_RAIO) até o alvo a pé ≈ a reta
    porta = False
    cima = [(n, d) for n, d in reg.perto(X, Y, CIMA_RAIO) if reg.fora[n]]
    if cima:
        n0 = min(cima, key=lambda t: t[1])[0]
        x0, y0, z0 = reg.xyz(n0)
        teto = PORTA_FATOR * math.dist((x0, y0, z0), (xa, ya, za)) + PORTA_FOLGA
        if d_boca < teto:
            d2, _ = reg.dijkstra([n0], lambda n: reg.fora[n], limite=teto - d_boca, alvo=boca)
            porta = boca in d2 and d2[boca] + d_boca <= teto
    return {"alvo": (xa, ya, za), "comp": int(rot), "boca": cam[0], "l": d_boca, "z": fundo, "pts": simp, "confirmada": confirmada,
            "chao_fora": chao_fora, "porta": porta, "bocas": len(bocas)}, None


def caixa_de(coloc, pts):
    """Região de uma colocação: a caixa do WMO ∪ os pontos (± PERTO_PONTO) + MARGEM; WMO enorme: centrada nos pontos."""
    x0, x1, y0, y1 = coloc[7]
    px = [p[3] for p in pts]
    py = [p[4] for p in pts]
    cx0, cx1 = min(px) - PERTO_PONTO, max(px) + PERTO_PONTO
    cy0, cy1 = min(py) - PERTO_PONTO, max(py) + PERTO_PONTO
    b = [min(x0, cx0) - MARGEM, max(x1, cx1) + MARGEM, min(y0, cy0) - MARGEM, max(y1, cy1) + MARGEM]
    for a_, z_ in ((0, 1), (2, 3)):
        if b[z_] - b[a_] > MAX_LADO:
            meio = ((cx0 + cx1) / 2) if a_ == 0 else ((cy0 + cy1) / 2)
            lado = max(MAX_LADO, (cx1 - cx0 if a_ == 0 else cy1 - cy0) + 2 * MARGEM)
            b[a_], b[z_] = meio - lado / 2, meio + lado / 2
    return b


# ── 4. classificação e saída ─────────────────────────────────────────────────────────────────────────────────────────
# Citar o nome não basta: "atop Jintha'alor", "Travel to Sunnyglade" citam e o alvo está em cima. A citação vale se o nome
# já é de caverna, ou se a frase dela tem pista de interior; nunca com "atop/top of/on top/above/outside" colado nela.
PALAVRA_CAVERNA = re.compile(r"\b(mines?|dens?|lairs?|pits?|hollows?|caves?|caverns?|burrows?|tunnels?|grottos?|depths|"
                             r"deeps?|crypts?|catacombs?|barrows?|warrens?|hole|undercroft|tombs?|sepulcher|halls?|"
                             r"mounds?|holds?)\b")
# "within" sozinho fica de fora: "within Sunnyglade" é a vila (Riverglades); o "deep within" do Slag Pit passa pelo "deep"
PISTA_DENTRO = re.compile(r"\b(inside|deep|deeper|deepest|depths|beneath|under|underneath|underground|below|"
                          r"caves?|caverns?|mines?|tunnels?|lairs?|dens?|burrows?)\b")
PISTA_FORA = re.compile(r"\b(atop|top of|on top|above|outside)\b")
FIM_FRASE = re.compile(r"[.!?](?=\s|$)")


def cita(texto, nome, zonas_nomes):
    """Como o texto do passo cita o nome da área do WMO (sem 'The', palavra inteira; nome de zona não vale): "forte" se
    alguma citação vale (o nome é de caverna — PALAVRA_CAVERNA — ou a frase dela tem PISTA_DENTRO), "simples" se só
    há citação sem pista, None se nenhuma (ou todas com PISTA_FORA a até 5 palavras antes / 3 depois)."""
    if not nome or nome in zonas_nomes:
        return None
    n = re.sub(r"^the ", "", nome.lower())
    if len(n) < 4:
        return None
    de_caverna = PALAVRA_CAVERNA.search(n) is not None
    melhor = None
    for linha in texto.split("\n"):
        for m in re.finditer(r"(?<![\w'])" + re.escape(n) + r"(?![\w'])", linha):
            ini = max([f.end() for f in FIM_FRASE.finditer(linha, 0, m.start())] + [0])
            f = FIM_FRASE.search(linha, m.end())
            fim = f.end() if f else len(linha)
            antes, depois = linha[ini:m.start()].split()[-5:], linha[m.end():fim].split()[:3]
            if PISTA_FORA.search(" ".join(antes + ["|"] + depois)):
                continue
            frase = linha[ini:m.start()] + " " + linha[m.end():fim]       # a frase sem o próprio nome
            if de_caverna or PISTA_DENTRO.search(frase):
                return "forte"
            melhor = "simples"
    return melhor


def lua_str(s):
    return '"%s"' % s.replace("\\", "\\\\").replace('"', '\\"')


def escreve(w, p, saida):
    linhas = ["-- gerado por tools/gen_caves.py (issue #135) — não editar: rode o gerador",
              "local _, ns = ...",
              "ns.caves = {",
              "\tw = {"]
    for k in sorted(w):
        linhas.append("\t\t[%d] = { n = %s, c = %d }," % (k, lua_str(w[k]["n"]), w[k]["c"]))
    linhas += ["\t},", "\tp = {"]
    for k in sorted(p):
        e = p[k]
        linhas.append("\t\t[%s] = { w = %d, s = %d, c = %d," % (lua_str(k), e["w"], e["s"], e["c"]))
        linhas.append("\t\t\te = { %.1f, %.1f }, p = { %s }," % (e["e"][0], e["e"][1],
                                                                ", ".join("%.1f, %.1f" % (x, y) for x, y in e["p"])))
        linhas.append("\t\t\tl = %d, z = %d }," % (e["l"], e["z"]))
    linhas += ["\t},", "}"]
    texto = "\n".join(linhas) + "\n"
    if saida:
        with open(saida, "w", encoding="utf-8", newline="\n") as fh:
            fh.write(texto)
    return len(texto.encode("utf-8"))


def gera(c, zona=None, log=print):
    t0 = time.time()
    pontos, primeira = guias(zona)
    um, zs = uimaps(), zonas()
    zonas_nomes = set(um)
    por_tile = collections.defaultdict(list)
    fora = collections.Counter()
    for (zn, x, y) in sorted(pontos):
        u = um.get(zn)
        z = zs.get(u) if u else None
        if zn.endswith(" - the continent map") or zn.endswith(" - the world map"):
            fora["mapa de continente"] += 1
            continue
        if z is None or z.mapa not in (0, 1):
            fora["fora dos continentes"] += 1
            continue
        if zn in CAPITAIS:
            fora["capital (zona)"] += 1
            continue
        X, Y = z.mundo(x, y)
        por_tile[(z.mapa, int((TOPO - X) // TILE), int((TOPO - Y) // TILE))].append((zn, x, y, X, Y))
    exam = sum(len(v) for v in por_tile.values())
    log("%d pontos |goto nos guias; %d examinados em %d quadrantes; fora antes da triagem: %s" % (
        len(pontos), exam, len(por_tile), dict(fora)))
    cl = Cliente(c)
    cand, coloc = triagem(cl, por_tile, log)
    t_tri = time.time() - t0
    log("triagem: %d candidatos em %d colocações de WMO (%.0fs)" % (len(cand), len(set(v[0] for v in cand.values())),
                                                                   t_tri))
    por_col = collections.defaultdict(list)
    for p, (uid, f_, _) in cand.items():
        if coloc[uid][1] in gt.INTERIORES:
            fora["capital (INTERIORES)"] += 1
            continue
        por_col[uid].append(p)
    w_out, p_out, duvidas = {}, {}, []
    for n_c, (uid, pts) in enumerate(sorted(por_col.items(), key=lambda t: -len(t[1]))):
        co = coloc[uid]
        mapa = co[0]
        nomes_p = collections.Counter(cand[p][2] for p in pts)
        nome = max(nomes_p, key=lambda n: (bool(n), nomes_p[n]))
        try:
            reg = Regiao(cl, mapa, caixa_de(co, pts), uid)
        except MemoryError:
            fora["região grande demais"] += len(pts)
            continue
        da_regiao = []
        for p in pts:
            r, motivo = resolve(reg, p[3], p[4])
            chave = "%s|%.2f|%.2f" % (p[0], p[1], p[2])
            if r is None:
                fora[motivo] += 1
                continue
            if r["porta"]:
                fora["prédio com porta"] += 1
                continue
            c_ = cita(pontos[(p[0], p[1], p[2])], cand[p][2] or nome, zonas_nomes)
            # citação forte; ou simples num ponto sem chão de fora de pé perto (J.D. Collie na parede de Marshal's Refuge)
            citou = c_ == "forte" or (c_ == "simples" and not r["chao_fora"])
            s = 1 if citou else 0
            da_regiao.append((chave, r))
            p_out[chave] = {"w": uid, "s": s, "c": mapa, "e": r["boca"][:2], "l": int(round(r["l"])),
                            "z": int(round(r["z"])), "p": [(q[0], q[1]) for q in r["pts"]],
                            "_citou": citou, "_promovido": False, "_chao": r["chao_fora"], "_conf": r["confirmada"],
                            "_nome": cand[p][2] or nome, "_zona": p[0], "_linha": primeira[(p[0], p[1], p[2])]}
            w_out[uid] = {"n": nome, "c": mapa}
            if not r["confirmada"] and len(reg.portais):
                duvidas.append("%s: boca sem portal interior<->exterior a %d jd (%s)" % (chave, PORTAL_PERTO, nome or "?"))
        # vizinhança: ambíguo a até PROMOVE jd (3D) de um citado na mesma caverna (só os citados promovem: sem cadeia)
        citados = [(r["comp"], r["alvo"]) for k, r in da_regiao if p_out[k]["_citou"]]
        for k, r in da_regiao:
            if p_out[k]["s"] == 0:
                d = min((math.dist(r["alvo"], a) for cp, a in citados if cp == r["comp"]), default=None)
                if d is not None and d <= PROMOVE:
                    p_out[k]["s"], p_out[k]["_promovido"] = 1, True
                    log("    promovido a s=1: %s (%.1f jd de um alvo citado)" % (k, d))
        log("  %d/%d %s (uid %d): %d pontos, região %dx%d amostras x %d camadas, %d nós, %.0fs" % (
            n_c + 1, len(por_col), nome or "(sem nome)", uid, len(pts), reg.H, reg.W, reg.K, reg.nos, time.time() - t0))
        del reg
    return {"w": w_out, "p": p_out, "fora": fora, "examinados": exam, "candidatos": len(cand), "duvidas": duvidas,
            "segundos": time.time() - t0, "triagem_s": t_tri, "pontos": len(pontos)}


def relatorio(res, nbytes, log=print):
    p = res["p"]
    cav = sum(e["s"] == 1 for e in p.values())
    log("\n%d pontos |goto, %d examinados, %d candidatos na triagem -> %d caverna (s=1), %d ambíguos (s=0)" % (
        res["pontos"], res["examinados"], res["candidatos"], cav, len(p) - cav))
    log("fora: %s" % dict(res["fora"]))
    log("s=1 por motivo: texto cita o WMO %d, vizinho (%d jd) de um citado na mesma caverna %d; s=0 sem chão de fora a "
        "%d jd: %d" % (sum(e["_citou"] for e in p.values()), PROMOVE, sum(e["_promovido"] for e in p.values()), RAIO,
                       sum(e["s"] == 0 and not e["_chao"] for e in p.values())))
    por_zona = collections.Counter((e["_zona"], e["s"]) for e in p.values())
    zs = sorted({z for z, _ in por_zona})
    log("por zona (s=1/s=0): " + ", ".join("%s %d/%d" % (z, por_zona[(z, 1)], por_zona[(z, 0)]) for z in zs))
    log("%d WMOs, %d bytes, %.0fs (triagem %.0fs)" % (len(res["w"]), nbytes, res["segundos"], res["triagem_s"]))
    for d in res["duvidas"][:20]:
        log("  dúvida: " + d)


def lista(res, arq):
    """Lista de conferência (TSV): um ponto por linha, com o motivo da classificação e a linha do guia."""
    with open(arq, "w", encoding="utf-8") as fh:
        fh.write("ponto\ts\tcita\tpromovido\tchao_fora\tportal\tnome\tl\tz\tlinha\n")
        for k, e in sorted(res["p"].items(), key=lambda t: (-t[1]["s"], t[0])):
            fh.write("%s\t%d\t%d\t%d\t%d\t%d\t%s\t%d\t%d\t%s\n" % (k, e["s"], e["_citou"], e["_promovido"], e["_chao"],
                                                                  e["_conf"], e["_nome"], e["l"], e["z"], e["_linha"]))


def demo(res):
    chave, boca, nome = SLAG_PIT
    e = res["p"].get(chave)
    assert e, "%s devia estar no Caves.lua" % chave
    assert e["s"] == 1, "o Slag Pit devia ser caverna certa (s=1): %r" % e
    d = math.hypot(e["e"][0] - boca[0], e["e"][1] - boca[1])
    assert d <= 10, "a boca do Slag Pit devia ficar a ~10 jd de %s: %s (%.1f jd)" % (boca, e["e"], d)
    assert 200 <= e["l"] <= 300, "caminho da boca ao Maltorius devia ter 200-300 jd: %d" % e["l"]
    assert res["w"][e["w"]]["n"] == nome, res["w"][e["w"]]
    alvo = (-6633.9, -1232.6)                             # 40.77,35.89 no mundo
    assert tuple(e["p"][0]) == tuple(e["e"]), "a polilinha começa na entrada"
    assert math.hypot(e["p"][-1][0] - alvo[0], e["p"][-1][1] - alvo[1]) <= RAIO + 2, "a polilinha termina no alvo"
    lat = res["p"].get(LATHORIC)
    assert lat and lat["s"] == 1, "Lathoric the Black (%s) devia ser s=1 (vizinho do Dying Archaeologist): %r" % (LATHORIC, lat)
    for k in (TOPO_DE, ):
        t_ = res["p"].get(k)
        assert not t_ or t_["s"] != 1, "%s (\"atop Jintha'alor\") não devia ser s=1: %r" % (k, t_)
    jd = res["p"].get(JD_COLLIE)
    assert not jd or jd["s"] == 1, "J.D. Collie (%s, caverna de Marshal's Refuge) devia ser s=1: %r" % (JD_COLLIE, jd)
    enc = res["p"].get(ENCOSTA)
    assert not enc or enc["s"] != 1, "%s (encosta de Raptor Ridge) não devia ser s=1: %r" % (ENCOSTA, enc)
    print("ok: %s s=1 (vizinhança); %s %s" % (LATHORIC, ENCOSTA, "s=%d" % enc["s"] if enc else "fora do Caves.lua"))
    print("ok: %s -> %s, boca %.1f jd da conferida, caminho %d jd, %d jd abaixo do terreno, %d pontos" % (
        chave, nome, d, e["l"], e["z"], len(e["p"])))


def argumentos(args=None):
    import argparse
    ap = argparse.ArgumentParser(description="Gera Caves.lua (alvo de guia numa caverna: entrada e caminho).")
    ap.add_argument("--demo", action="store_true", help="só confere os casos conhecidos (Slag Pit, Lathoric, Jintha'Alor, "
                    "J.D. Collie, Raptor Ridge); não escreve")
    ap.add_argument("--zona", help="só os pontos desta zona (como no guia); não escreve, salvo com --out")
    ap.add_argument("--cdn", action="store_true", help="lê do CDN público mesmo com cliente instalado")
    ap.add_argument("--out", metavar="ARQ", help="escreve em ARQ em vez de ../Caves.lua")
    ap.add_argument("--lista", metavar="ARQ", help="lista de conferência (TSV) de cada ponto e do motivo")
    return ap.parse_args(args)


if __name__ == "__main__":
    a = argumentos()
    c = gt.abre(a.cdn)
    res = gera(c, a.zona)
    escrever = not a.demo and (not a.zona or a.out)
    nbytes = escreve(res["w"], res["p"], (a.out or OUT) if escrever else None)
    relatorio(res, nbytes)
    if a.lista:
        lista(res, a.lista)
    if not a.zona or a.zona == "Searing Gorge":
        demo(res)
