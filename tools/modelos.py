"""Superfícies de colisão dos modelos postos no mapa — prédios, pontes, muralhas, cais (WMO) e rampas,
escadas, pedras, carroças (M2) —, em coordenada de mundo, para o gerador do terreno (gen_terrain.py).

De onde vem cada coisa (formato documentado, wowdev.wiki; nada de código de terceiros):
  - ADT _obj0 (o 2º FileDataID de cada quadrante no MAID do WDT): MODF (WMO) e MDDF (M2), 64 e 36 bytes por
    colocação; a mesma colocação aparece em todo quadrante que ela toca (uniqueId tira a repetição).
    Com a flag 0x8 (MODF) / 0x40 (MDDF) o nameId é o FileDataID do modelo.
  - Posição em "espaço de colocação" (x, y em cima, z): mundo x = 32·TILE − z, y = 32·TILE − x, z = y.
    Rotação (graus): R = Rz(ry + 180°) · Ry(rx) · Rx(rz) — conferida com a caixa (extents) do MODF de 684 WMO
    inclinados (erro mediano 0,002 jd). Escala: MDDF sempre (1024 = 1); MODF com a flag 0x4.
  - WMO raiz: MOHD (nº de grupos), GFID (FileDataID de cada grupo), MODS/MODD/MODI (doodads: conjunto 0 sempre,
    mais o do MODF). Grupo: MOGP com MOVT (vértices), MOVI (triângulos) e MOPY (ou MPY2) por triângulo. Colide
    o triângulo com F_COLLISION (0x08) ou que se desenha sem ser detalhe (0x20 sem 0x04); o resto (enfeite) não.
  - M2 (MD21 > MD20): no cabeçalho, os triângulos e vértices de colisão (0xD8: índices, posições, normais).

O que sai: triângulos (n, 3, 3) em jardas de mundo, só os pisáveis (normal para cima, inclinação ≤ a RAMPA do
gerador). Face de colisão pura do WMO (0x08 sem desenho) vale dos dois lados: é plano invisível sem frente
garantida. Render e M2: o lado da frente (a normal de colisão do M2 concorda com a ordem dos vértices).
"""
import struct

import numpy as np

import casc

TILE = 1600 / 3
TOPO = 32 * TILE


def _arr(d, off, n, tipo, por=1):
    return np.frombuffer(d, tipo, n * por, off).reshape(-1, por) if n else np.zeros((0, por), tipo)


def _rx(a):
    c, s = np.cos(a), np.sin(a)
    return np.array([[1, 0, 0], [0, c, -s], [0, s, c]])


def _ry(a):
    c, s = np.cos(a), np.sin(a)
    return np.array([[c, 0, s], [0, 1, 0], [-s, 0, c]])


def _rz(a):
    c, s = np.cos(a), np.sin(a)
    return np.array([[c, -s, 0], [s, c, 0], [0, 0, 1]])


def matriz(rot, escala=1.0):
    """Rotação (graus, espaço de colocação) e escala -> matriz 3×3 do modelo para o mundo."""
    rx, ry, rz = np.radians(rot)
    return _rz(ry + np.pi) @ _ry(rx) @ _rx(rz) * escala


def mundo(pos):
    return np.array([TOPO - pos[2], TOPO - pos[0], pos[1]])


def quaternio(q):
    x, y, z, w = q
    return np.array([[1 - 2 * (y * y + z * z), 2 * (x * y - z * w), 2 * (x * z + y * w)],
                     [2 * (x * y + z * w), 1 - 2 * (x * x + z * z), 2 * (y * z - x * w)],
                     [2 * (x * z - y * w), 2 * (y * z + x * w), 1 - 2 * (x * x + y * y)]])


def colocacoes(c, objs):
    """Dos ADT _obj0 ({(linha, coluna): fdid}): WMO [(fdid, uid, M, T, conjunto)] e M2 [(fdid, uid, M, T)],
    sem repetição (uniqueId). M (3×3) e T (3,) levam do modelo ao mundo."""
    c.prefetch([f for f in objs.values() if f])
    wmos, m2s, vistos_w, vistos_m = [], [], set(), set()
    for k in sorted(objs):
        b = objs[k] and c.le(objs[k])
        if not b:
            continue
        d = dict(casc.pedacos_wow(b))
        modf, mddf = d.get("MODF", b""), d.get("MDDF", b"")
        for j in range(len(modf) // 64):
            f = struct.unpack_from("<II3f3f6fHHHH", modf, j * 64)
            if f[1] in vistos_w or not f[14] & 0x8:          # sem FileDataID: o nome viria do MWMO (não há)
                continue
            vistos_w.add(f[1])
            esc = f[17] / 1024 if f[14] & 0x4 else 1.0
            wmos.append((f[0], f[1], matriz(f[5:8], esc), mundo(f[2:5]), f[15]))
        for j in range(len(mddf) // 36):
            f = struct.unpack_from("<II3f3fHH", mddf, j * 36)
            if f[1] in vistos_m or not f[9] & 0x40:
                continue
            vistos_m.add(f[1])
            m2s.append((f[0], f[1], matriz(f[5:8], f[8] / 1024), mundo(f[2:5])))
    return wmos, m2s


class Modelos:
    """Lê (e guarda) a colisão de cada WMO e M2 uma vez só."""

    def __init__(self, c):
        self.c = c
        self._wmo, self._grp, self._m2 = {}, {}, {}

    # -- WMO -----------------------------------------------------------------------
    def wmo_raiz(self, fdid):
        """{'grupos': [fdid], 'conjuntos': [(início, n)], 'doodads': [(fdid, T(3), R(3×3), escala)]}"""
        if fdid in self._wmo:
            return self._wmo[fdid]
        b = self.c.le(fdid)
        r = None
        if b:
            d = dict(casc.pedacos_wow(b))
            ng = struct.unpack_from("<I", d["MOHD"], 4)[0]
            gf = d.get("GFID", b"")
            grupos = [g for g in struct.unpack_from("<%dI" % (len(gf) // 4), gf)[:ng] if g]
            mods, modd, modi = d.get("MODS", b""), d.get("MODD", b""), d.get("MODI", b"")
            ids = struct.unpack_from("<%dI" % (len(modi) // 4), modi) if modi else ()
            conj = [struct.unpack_from("<II", mods, k * 32 + 20) for k in range(len(mods) // 32)]
            doods = []
            for k in range(len(modd) // 40):
                ni, px, py, pz, qx, qy, qz, qw, esc = struct.unpack_from("<I3f4ff", modd, k * 40)
                ni &= 0xFFFFFF
                doods.append((ids[ni] if ni < len(ids) else 0, np.array([px, py, pz]),
                              quaternio((qx, qy, qz, qw)), esc))
            r = {"grupos": grupos, "conjuntos": conj, "doodads": doods}
        self._wmo[fdid] = r
        return r

    def wmo_grupo(self, fdid):
        """Triângulos que colidem, no espaço do WMO: (n,3,3) float32 e (n,) dupla face."""
        if fdid in self._grp:
            return self._grp[fdid]
        b = self.c.le(fdid)
        r = (np.zeros((0, 3, 3), np.float32), np.zeros(0, bool))
        if b:
            mogp = dict(casc.pedacos_wow(b)).get("MOGP")
            sub = dict(casc.pedacos_wow(mogp[0x44:])) if mogp else {}
            if "MOVT" in sub and ("MOVI" in sub or "MOVX" in sub):
                V = np.frombuffer(sub["MOVT"], "<f4").reshape(-1, 3)
                I = (np.frombuffer(sub["MOVI"], "<u2") if "MOVI" in sub
                     else np.frombuffer(sub["MOVX"], "<u4")).reshape(-1, 3)
                if "MOPY" in sub:
                    fl = np.frombuffer(sub["MOPY"], np.uint8)[0::2].astype(np.int32)
                elif "MPY2" in sub:
                    fl = np.frombuffer(sub["MPY2"], "<u2")[0::2].astype(np.int32)
                else:
                    fl = np.full(len(I), 0x20, np.int32)
                fl = fl[:len(I)]
                colide = ((fl & 0x08) != 0) | (((fl & 0x20) != 0) & ((fl & 0x04) == 0))
                ok = colide & (I < len(V)).all(axis=1)
                r = (V[I[ok]].astype(np.float32), ((fl[ok] & 0x20) == 0))
        self._grp[fdid] = r
        return r

    # -- M2 ------------------------------------------------------------------------
    def m2(self, fdid):
        """Triângulos de colisão do M2 no espaço do modelo: (n,3,3) float32."""
        if fdid in self._m2:
            return self._m2[fdid]
        b = self.c.le(fdid)
        r = np.zeros((0, 3, 3), np.float32)
        if b:
            d = b
            if b[:4] == b"MD21":                       # pedaços com o nome na ordem (não ao contrário)
                p = 0
                while p + 8 <= len(b):
                    n, t = b[p:p + 4], struct.unpack_from("<I", b, p + 4)[0]
                    if n == b"MD21":
                        d = b[p + 8:p + 8 + t]
                        break
                    p += 8 + t
            if d[:4] == b"MD20" and len(d) >= 0xE8:
                ni, oi, nv, ov = struct.unpack_from("<4I", d, 0xD8)
                if nv and ni and oi + 2 * ni <= len(d) and ov + 12 * nv <= len(d):
                    I = np.frombuffer(d, "<u2", ni - ni % 3, oi).reshape(-1, 3)
                    V = np.frombuffer(d, "<f4", 3 * nv, ov).reshape(-1, 3)
                    I = I[(I < nv).all(axis=1)]
                    r = V[I].astype(np.float32)
        self._m2[fdid] = r
        return r

    # -- tudo junto ------------------------------------------------------------------
    def baixa(self, wmos, m2s):
        """Baixa de uma vez (CDN) as raízes, os grupos e os M2 (os de doodad do WMO também)."""
        c = self.c
        c.prefetch({w[0] for w in wmos})
        raizes = [self.wmo_raiz(w[0]) for w in wmos]
        c.prefetch({g for r in raizes if r for g in r["grupos"]})
        doods = set()
        for w, r in zip(wmos, raizes):
            if r:
                for ini, n in self._conjuntos(r, w[4]):
                    doods.update(d[0] for d in r["doodads"][ini:ini + n] if d[0])
        c.prefetch({m[0] for m in m2s} | doods)

    @staticmethod
    def _conjuntos(r, conjunto):
        cj = r["conjuntos"]
        out = [cj[0]] if cj else []
        if 0 < conjunto < len(cj):
            out.append(cj[conjunto])
        return out

    def triangulos(self, wmos, m2s, doodads_wmo=True):
        """Todos os triângulos de colisão no mundo: (n,3,3) float32 e (n,) dupla face."""
        tris, dupla = [], []

        def poe(T, M, P, d2=None):
            if len(T):
                tris.append((T.reshape(-1, 3) @ M.T + P).reshape(-1, 3, 3).astype(np.float32))
                dupla.append(d2 if d2 is not None else np.zeros(len(T), bool))

        por_m2 = {}
        for f, _, M, P in m2s:
            por_m2.setdefault(f, []).append((M, P))
        for w in wmos:
            r = self.wmo_raiz(w[0])
            if not r:
                continue
            M, P = w[2], w[3]
            for g in r["grupos"]:
                T, d2 = self.wmo_grupo(g)
                poe(T, M, P, d2)
            if doodads_wmo:
                for ini, n in self._conjuntos(r, w[4]):
                    for f, t, q, e in r["doodads"][ini:ini + n]:
                        if f:
                            por_m2.setdefault(f, []).append((M @ q * e, M @ t + P))
        for f, lst in por_m2.items():
            T = self.m2(f)
            if not len(T):
                continue
            Ms = np.stack([m for m, _ in lst])                    # (k,3,3)
            Ps = np.stack([p for _, p in lst])                    # (k,3)
            W = np.einsum("kij,nvj->knvi", Ms, T) + Ps[:, None, None, :]
            tris.append(W.reshape(-1, 3, 3).astype(np.float32))
            dupla.append(np.zeros(len(W) * len(T), bool))
        if not tris:
            return np.zeros((0, 3, 3), np.float32), np.zeros(0, bool)
        return np.concatenate(tris), np.concatenate(dupla)


def pisaveis(tris, dupla, cos_min):
    """Só os triângulos em que se pisa: normal para cima (ou para baixo, se dupla face) com cos ≥ cos_min."""
    n = np.cross(tris[:, 1] - tris[:, 0], tris[:, 2] - tris[:, 0])
    norma = np.linalg.norm(n, axis=1)
    nz = n[:, 2] / np.maximum(norma, 1e-12)
    ok = (norma > 1e-6) & ((nz >= cos_min) | (dupla & (nz <= -cos_min)))
    return tris[ok]
