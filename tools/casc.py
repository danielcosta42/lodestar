"""Leitor mínimo do armazenamento CASC local do cliente (só leitura, só o que o Lodestar usa).

O cliente guarda tudo em Data/: a configuração da build aponta a tabela de codificação
(conteúdo -> chave codificada) e a raiz (FileDataID -> conteúdo); os índices locais
(Data/data/*.idx) dizem em que data.### e em que posição está cada chave codificada; o
arquivo vem em BLTE (pedaços crus ou zlib).

    python casc.py --demo        # lê o WDT de Kalimdor e conta os quadrantes

Formato conferido no cliente do Forever (build 1.60.1.70245): índice v7, raiz MFST v2.
"""
import os
import struct
import zlib

RAIZ_WOW = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                         "..", "..", "..", "..", ".."))
PRODUTO = "wow_classic_beta"
ENUS = 0x2


class Casc:
    def __init__(self, raiz=RAIZ_WOW, produto=PRODUTO):
        self.dados = os.path.join(raiz, "Data", "data")
        info = [l.rstrip("\n").split("|") for l in open(os.path.join(raiz, ".build.info"), encoding="utf-8")]
        cab = [h.split("!")[0] for h in info[0]]
        linha = next(dict(zip(cab, r)) for r in info[1:] if dict(zip(cab, r)).get("Product") == produto)
        self.versao = linha["Version"]
        bk = linha["Build Key"]
        conf = {}
        for l in open(os.path.join(raiz, "Data", "config", bk[:2], bk[2:4], bk), encoding="utf-8"):
            if "=" in l:
                k, v = l.split("=", 1)
                conf[k.strip()] = v.split()
        self._idx = {}                     # balde -> {chave(9): (arquivo, posição, tamanho)}
        self._ultimo = {}
        for f in os.listdir(self.dados):
            if f.endswith(".idx") and len(f) == 14:
                b, v = int(f[:2], 16), int(f[2:10], 16)
                if v >= self._ultimo.get(b, (-1, ""))[0]:
                    self._ultimo[b] = (v, f)
        self._enc = self._le_codificacao(bytes.fromhex(conf["encoding"][1]))
        self._raiz = self._le_raiz(bytes.fromhex(conf["root"][0]))

    # -- índices locais ------------------------------------------------------
    def _balde(self, ek):
        x = 0
        for b in ek[:9]:
            x ^= b
        return (x & 0xF) ^ (x >> 4)

    def _indice(self, balde):
        if balde not in self._idx:
            d = {}
            with open(os.path.join(self.dados, self._ultimo[balde][1]), "rb") as fh:
                b = fh.read()
            tam = struct.unpack_from("<I", b, 0x20)[0]
            for p in range(0x28, 0x28 + tam - tam % 18, 18):
                k = b[p:p + 9]
                if k not in d:
                    hi, lo = struct.unpack_from(">BI", b, p + 9)
                    off = (hi << 32) | lo
                    d[k] = (off >> 30, off & 0x3FFFFFFF, struct.unpack_from("<I", b, p + 14)[0])
            self._idx[balde] = d
        return self._idx[balde]

    def _blte(self, b):
        assert b[:4] == b"BLTE", b[:4]
        hs = struct.unpack_from(">I", b, 4)[0]
        if hs == 0:
            pedacos, pos = [(len(b) - 8, None)], 8
        else:
            n = int.from_bytes(b[9:12], "big")
            pedacos = [struct.unpack_from(">II", b, 12 + i * 24) for i in range(n)]
            pos = hs
        out = []
        for comp, _ in pedacos:
            c = b[pos:pos + comp]
            pos += comp
            modo = c[:1]
            if modo == b"N":
                out.append(c[1:])
            elif modo == b"Z":
                out.append(zlib.decompress(c[1:]))
            else:
                raise ValueError("pedaço BLTE %r não suportado" % modo)
        return b"".join(out)

    def le_ekey(self, ek):
        ent = self._indice(self._balde(ek)).get(ek[:9])
        if not ent:
            return None                    # não está no armazenamento local (só no CDN)
        arq, off, tam = ent
        with open(os.path.join(self.dados, "data.%03d" % arq), "rb") as fh:
            fh.seek(off)
            b = fh.read(tam)
        return self._blte(b[30:])

    # -- codificação (conteúdo -> chave codificada), por página sob demanda ------
    def _le_codificacao(self, ek):
        b = self.le_ekey(ek)
        assert b[:2] == b"EN"
        _, hc, he, pag_ce, _, n_ce, _, _, esp = struct.unpack_from(">BBBHHIIBI", b, 2)
        tab = 22 + esp
        self._enc_paginas = [b[tab + i * 32:tab + i * 32 + 16] for i in range(n_ce)]
        self._enc_base, self._enc_tam, self._enc_b = tab + n_ce * 32, pag_ce * 1024, b
        return {}

    def ckey_para_ekey(self, ck):
        if ck in self._enc:
            return self._enc[ck]
        import bisect
        i = bisect.bisect_right(self._enc_paginas, ck) - 1
        if i < 0:
            return None
        b, p = self._enc_b, self._enc_base + i * self._enc_tam
        fim = p + self._enc_tam
        while p < fim:
            n = b[p]
            if n == 0:
                break
            c = b[p + 6:p + 22]
            e = b[p + 22:p + 38]
            self._enc[c] = e
            p += 22 + 16 * n
        return self._enc.get(ck)

    # -- raiz (FileDataID -> conteúdo), só enUS/sem idioma -----------------------
    def _le_raiz(self, ck):
        b = self.le_ekey(self.ckey_para_ekey(ck))
        raiz, pos = {}, 0
        if b[:4] == b"TSFM":
            hs, ver = struct.unpack_from("<II", b, 4)
            if 12 <= hs <= 64 and ver in (1, 2):     # cabeçalho v1+: tamanho e versão
                pos = hs
            else:                                    # o antigo: só os dois contadores
                pos, ver = 12, 0
        else:
            ver = 0
        while pos < len(b):
            if ver >= 2:
                n, loc, f1, f2 = struct.unpack_from("<IIII", b, pos)
                pos += 17
                flags = f1 | f2 | (b[pos - 1] << 17)
            else:
                n, flags, loc = struct.unpack_from("<III", b, pos)
                pos += 12
            ids = struct.unpack_from("<%di" % n, b, pos)
            pos += 4 * n
            chaves = [b[pos + 16 * i:pos + 16 * i + 16] for i in range(n)]
            pos += 16 * n
            if not (flags & 0x10000000):
                pos += 8 * n                   # hashes de nome
            if loc & ENUS or loc == 0xFFFFFFFF or loc == 0:
                fid = -1
                for d, c in zip(ids, chaves):
                    fid += d + 1
                    raiz.setdefault(fid, c)
        return raiz

    def le(self, fdid):
        """Bytes do arquivo pelo FileDataID; None se a build não o tem."""
        ck = self._raiz.get(fdid)
        ek = ck and self.ckey_para_ekey(ck)
        return self.le_ekey(ek) if ek else None


def pedacos_wow(b):
    """Pedaços de arquivo de mapa (4CC ao contrário no disco): [(nome, bytes), ...]."""
    out, p = [], 0
    while p + 8 <= len(b):
        nome = b[p:p + 4][::-1].decode("latin-1")
        tam = struct.unpack_from("<I", b, p + 4)[0]
        out.append((nome, b[p + 8:p + 8 + tam]))
        p += 8 + tam
    return out


def quadrantes(wdt):
    """FileDataID do ADT raiz de cada quadrante existente: {(linha, coluna): fdid}."""
    maid = dict(pedacos_wow(wdt)).get("MAID")
    out = {}
    for i in range(64 * 64):
        raiz = struct.unpack_from("<I", maid, i * 32)[0]
        if raiz:
            out[(i // 64, i % 64)] = raiz
    return out


def demo():
    c = Casc()
    print("build:", c.versao, "| arquivos na raiz:", len(c._raiz))
    kalimdor_wdt = 782779                     # Map.db2: Kalimdor (id 1) -> WdtFileDataID
    w = c.le(kalimdor_wdt)
    assert w and w[:4] == b"REVM", "WDT de Kalimdor não leu"
    q = quadrantes(w)
    assert len(q) > 500, len(q)
    print("Kalimdor: %d quadrantes com ADT" % len(q))


if __name__ == "__main__":
    demo()
