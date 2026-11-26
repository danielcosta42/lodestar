"""Leitor do CDN público da Blizzard (TACT) — o CASC sem cliente instalado (só leitura).

O WoW: Forever é o produto `wowf`. O serviço de versões diz a configuração da build e a do CDN
de cada região; a da build aponta a tabela de codificação (conteúdo -> chave codificada) e a raiz
(FileDataID -> conteúdo); a do CDN lista os arquivos-pacote (data/xx/yy/<hash>), cada um com o seu
índice (<hash>.index: chave codificada -> posição e tamanho no pacote). Um arquivo vem do pacote por
pedido HTTP de intervalo (Range), ou inteiro se for solto (data/xx/yy/<chave>), em BLTE.

Tudo o que baixa fica em tools/build/cdn/ (fora do git): as configurações, a codificação, um índice
único dos pacotes (indices-<config do CDN>.npz, montado dos ~1400 índices, que não ficam) e cada
arquivo lido, pela chave codificada. Só se baixa o que se lê: `prefetch` junta os pedidos do mesmo
pacote em intervalos contíguos e baixa em paralelo.

Mesma interface do casc.Casc (o leitor do cliente local): `le(fdid)`, `versao`, e as funções do
módulo casc (`casc.quadrantes`, `casc.pedacos_wow`).

    python casc_cdn.py --demo     # lê o WDT de Kalimdor do CDN e conta os quadrantes

Formato conferido no `wowf` 1.60.1.71139: índice de pacote v1 (blocos de 4 KB, chave de 16 bytes,
tamanho e posição de 4), índice de soltos sem posição, raiz MFST v2. Nada de código de terceiros:
o formato é o documentado (wowdev.wiki, TACT/CASC).
"""
import concurrent.futures as cf
import http.client
import os
import struct
import sys
import time
import urllib.error
import urllib.request

import numpy as np

import casc

PRODUTO = "wowf"
REGIAO = "us"
VERSOES = "https://%s.version.battle.net/v2/products/%s/%s"
CACHE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "build", "cdn")
AGENTE = "Lodestar-casc_cdn/1.0"
FIOS = 12                       # pedidos em paralelo
JUNTA = 256 * 1024              # dois arquivos do mesmo pacote a menos disso: um pedido só
MAX_PEDIDO = 8 * 1024 * 1024    # ...até este tamanho por pedido


def _tabela_psv(texto):
    """Tabela do serviço de versões ('Nome!TIPO:n|...', linhas '|'): [{coluna: valor}]."""
    linhas = [l for l in texto.splitlines() if l and not l.startswith("##")]
    cab = [h.split("!")[0] for h in linhas[0].split("|")]
    return [dict(zip(cab, l.split("|"))) for l in linhas[1:]]


def _config(texto):
    conf = {}
    for l in texto.splitlines():
        if "=" in l and not l.startswith("#"):
            k, v = l.split("=", 1)
            conf[k.strip()] = v.split()
    return conf


def _baixa(url, intervalo=None, tentativas=4):
    req = urllib.request.Request(url, headers={"User-Agent": AGENTE})
    if intervalo:
        req.add_header("Range", "bytes=%d-%d" % intervalo)
    for t in range(tentativas):
        try:
            with urllib.request.urlopen(req, timeout=120) as resp:
                b = resp.read()
            if intervalo and len(b) != intervalo[1] - intervalo[0] + 1:
                raise IOError("intervalo veio com %d bytes" % len(b))
            return b
        except urllib.error.HTTPError as e:
            if e.code == 404:
                raise
            if t == tentativas - 1:
                raise
        except (IOError, OSError, http.client.HTTPException) as e:
            if t == tentativas - 1:
                raise IOError("%s: %s" % (url, e))
        time.sleep(1 + 2 * t)


def _grava(caminho, b):
    os.makedirs(os.path.dirname(caminho), exist_ok=True)
    tmp = caminho + ".part"
    with open(tmp, "wb") as fh:
        fh.write(b)
    os.replace(tmp, caminho)


def _le_indice(b, soltos=False):
    """Índice de pacote (ou de soltos): chaves (n,16) uint8, posições e tamanhos (n,) uint32."""
    rodape = b[-28:]
    versao, _, _, bloco_kb, n_pos, n_tam, n_chave, n_soma = rodape[8:16]
    n = struct.unpack_from("<I", rodape, 16)[0]
    assert versao == 1 and n_chave == 16 and n_tam == 4 and n_pos == (0 if soltos else 4), rodape[8:16]
    bloco = bloco_kb * 1024
    ent = n_chave + n_tam + n_pos
    por_bloco = bloco // ent
    nblocos = -(-n // por_bloco)
    a = np.frombuffer(b, np.uint8, nblocos * bloco).reshape(nblocos, bloco)[:, :por_bloco * ent]
    a = a.reshape(-1, ent)[:n]
    chaves = np.ascontiguousarray(a[:, :16])
    tam = a[:, 16:20].copy().view(">u4").ravel().astype(np.uint32)
    pos = a[:, 20:24].copy().view(">u4").ravel().astype(np.uint32) if n_pos else np.zeros(n, np.uint32)
    return chaves, pos, tam


def _parte_chave(chaves):
    """Chave de 16 bytes -> (alta uint64, baixa uint32): ordena e busca no numpy."""
    hi = chaves[:, :8].copy().view(">u8").ravel().astype(np.uint64)
    lo = chaves[:, 8:12].copy().view(">u4").ravel().astype(np.uint32)
    return hi, lo


class CascCdn(casc.Casc):
    def __init__(self, produto=PRODUTO, regiao=REGIAO, build_config=None, cdn_config=None, cache=CACHE,
                 verbose=True):
        self.cache = cache
        self.verbose = verbose
        self.origem = "CDN %s" % produto
        self.baixado = 0                                   # bytes baixados nesta sessão
        os.makedirs(cache, exist_ok=True)
        ver = _tabela_psv(self._servico(produto, regiao, "versions"))
        linha = next(r for r in ver if r["Region"] == regiao)
        cdns = _tabela_psv(self._servico(produto, regiao, "cdns"))
        cdn = next(r for r in cdns if r["Name"] == regiao)
        self.caminho = cdn["Path"]
        srv = [s.split("?")[0].rstrip("/") for s in cdn["Servers"].split()]
        self.servidores = [s for s in srv if s.startswith("https://")] + [s for s in srv if not s.startswith("https://")]
        if not build_config:
            build_config, cdn_config = linha["BuildConfig"], linha["CDNConfig"]
            self.versao = linha["VersionsName"]
        else:
            self.versao = None
        self.build = _config(self._baixa_cache("config", build_config).decode("utf-8"))
        self.cdn = _config(self._baixa_cache("config", cdn_config).decode("utf-8"))
        self.cdn_config = cdn_config
        if not self.versao:
            self.versao = self.build.get("build-name", [build_config])[0]
        self._log("build %s (config %s), %d pacotes" % (self.versao, build_config, len(self.cdn["archives"])))
        self._monta_indice()
        self._enc = self._le_codificacao(bytes.fromhex(self.build["encoding"][1]))
        self._raiz = self._le_raiz(bytes.fromhex(self.build["root"][0]))
        self._log("raiz: %d arquivos" % len(self._raiz))

    def _log(self, msg):
        if self.verbose:
            print("[cdn] " + msg, file=sys.stderr, flush=True)

    # -- rede e cache -------------------------------------------------------------
    def _servico(self, produto, regiao, tipo):
        """versions/cdns: do serviço; sem rede, o último guardado."""
        local = os.path.join(self.cache, "%s-%s-%s.txt" % (produto, regiao, tipo))
        try:
            b = _baixa(VERSOES % (regiao, produto, tipo))
            _grava(local, b)
        except (IOError, OSError):
            if not os.path.exists(local):
                raise
            with open(local, "rb") as fh:
                b = fh.read()
        return b.decode("utf-8")

    def _url(self, tipo, h, sufixo=""):
        return ["%s/%s/%s/%s/%s/%s%s" % (s, self.caminho, tipo, h[:2], h[2:4], h, sufixo) for s in self.servidores]

    def _pede(self, tipo, h, sufixo="", intervalo=None):
        erro = None
        for url in self._url(tipo, h, sufixo):
            try:
                b = _baixa(url, intervalo)
                self.baixado += len(b)
                return b
            except (IOError, OSError) as e:
                erro = e
        raise erro

    def _local(self, tipo, h):
        return os.path.join(self.cache, tipo, h[:2], h[2:4], h)

    def _baixa_cache(self, tipo, h):
        p = self._local(tipo, h)
        if os.path.exists(p):
            with open(p, "rb") as fh:
                return fh.read()
        b = self._pede(tipo, h)
        _grava(p, b)
        return b

    # -- índices dos pacotes -----------------------------------------------------
    def _monta_indice(self):
        """Um índice só de todos os pacotes (chave -> pacote, posição, tamanho), guardado em .npz, e o
        dos soltos (file-index). Os ~1400 índices vêm uma vez, em paralelo, e não ficam no disco."""
        arq = os.path.join(self.cache, "indices-%s.npz" % self.cdn_config)
        if not os.path.exists(arq):
            pacotes = self.cdn["archives"]
            self._log("montando o índice de %d pacotes (só uma vez)..." % len(pacotes))
            partes = [None] * len(pacotes)

            def um(i):
                ch, pos, tam = _le_indice(self._pede("data", pacotes[i], ".index"))
                hi, lo = _parte_chave(ch)
                partes[i] = (hi, lo, np.full(len(hi), i, np.uint16), pos, tam)

            with cf.ThreadPoolExecutor(FIOS) as ex:
                for k, _ in enumerate(ex.map(um, range(len(pacotes)))):
                    if k % 200 == 199:
                        self._log("  %d/%d índices (%.0f MB)" % (k + 1, len(pacotes), self.baixado / 1e6))
            hi, lo, pac, pos, tam = (np.concatenate([p[j] for p in partes]) for j in range(5))
            soltos = self.cdn.get("file-index")
            if soltos:
                ch, _, stam = _le_indice(self._pede("data", soltos[0], ".index"), soltos=True)
                shi, slo = _parte_chave(ch)
                hi, lo = np.concatenate([hi, shi]), np.concatenate([lo, slo])
                pac = np.concatenate([pac, np.full(len(shi), 0xFFFF, np.uint16)])       # 0xFFFF: solto
                pos, tam = np.concatenate([pos, np.zeros(len(shi), np.uint32)]), np.concatenate([tam, stam])
            o = np.lexsort((lo, hi))
            np.savez(arq, hi=hi[o], lo=lo[o], pac=pac[o], pos=pos[o], tam=tam[o])
        z = np.load(arq)
        self._ihi, self._ilo, self._ipac, self._ipos, self._itam = z["hi"], z["lo"], z["pac"], z["pos"], z["tam"]
        self._log("índice: %d chaves" % len(self._ihi))

    def onde(self, ek):
        """Onde está a chave codificada: (pacote, posição, tamanho), (None, 0, tamanho) se solta, ou None."""
        hi, lo = _parte_chave(np.frombuffer(ek[:16], np.uint8).reshape(1, 16))
        i = int(np.searchsorted(self._ihi, hi[0]))
        while i < len(self._ihi) and self._ihi[i] == hi[0]:
            if self._ilo[i] == lo[0]:
                p = int(self._ipac[i])
                return (None if p == 0xFFFF else p), int(self._ipos[i]), int(self._itam[i])
            i += 1
        return None

    # -- leitura ------------------------------------------------------------------
    def le_ekey(self, ek):
        h = ek.hex()
        p = self._local("data", h)
        if os.path.exists(p):
            with open(p, "rb") as fh:
                b = fh.read()
        else:
            o = self.onde(ek)
            if o and o[0] is not None:
                b = self._pede("data", self.cdn["archives"][o[0]], intervalo=(o[1], o[1] + o[2] - 1))
            else:
                try:                                   # solto (ou fora do índice: a codificação é solta)
                    b = self._pede("data", h)
                except urllib.error.HTTPError as e:
                    if e.code == 404:
                        return None
                    raise
            _grava(p, b)
        try:
            return self._blte(b)
        except casc.Cifrado:
            return None                                # sem a chave (KeyRing vazio): como se não houvesse

    def ekey(self, fdid):
        ck = self._raiz.get(fdid)
        return ck and self.ckey_para_ekey(ck)

    def prefetch(self, fdids):
        """Baixa de uma vez os arquivos que ainda não estão no cache, juntando os intervalos do mesmo
        pacote (vizinhos a menos de JUNTA bytes) num pedido só. Devolve quantos bytes baixou."""
        antes = self.baixado
        por_pacote, soltos = {}, []
        for f in set(fdids):
            ek = self.ekey(f)
            if not ek or os.path.exists(self._local("data", ek.hex())):
                continue
            o = self.onde(ek)
            if o and o[0] is not None:
                por_pacote.setdefault(o[0], []).append((o[1], o[2], ek.hex()))
            else:
                soltos.append(ek.hex())
        pedidos = []
        for pac, lst in por_pacote.items():
            lst.sort()
            grupo = [lst[0]]
            for it in lst[1:]:
                ini = grupo[0][0]
                fim = grupo[-1][0] + grupo[-1][1]
                if it[0] - fim <= JUNTA and it[0] + it[1] - ini <= MAX_PEDIDO:
                    grupo.append(it)
                else:
                    pedidos.append((pac, grupo))
                    grupo = [it]
            pedidos.append((pac, grupo))

        def pede(pg):
            pac, grupo = pg
            ini = grupo[0][0]
            fim = max(p + t for p, t, _ in grupo)
            b = self._pede("data", self.cdn["archives"][pac], intervalo=(ini, fim - 1))
            for p, t, h in grupo:
                _grava(self._local("data", h), b[p - ini:p - ini + t])

        def solto(h):
            try:
                _grava(self._local("data", h), self._pede("data", h))
            except urllib.error.HTTPError:
                pass

        if pedidos or soltos:
            n = sum(len(g) for _, g in pedidos) + len(soltos)
            self._log("baixando %d arquivos em %d pedidos..." % (n, len(pedidos) + len(soltos)))
            with cf.ThreadPoolExecutor(FIOS) as ex:
                list(ex.map(pede, pedidos))
                list(ex.map(solto, soltos))
            self._log("  %.1f MB" % ((self.baixado - antes) / 1e6))
        return self.baixado - antes


def demo():
    c = CascCdn()
    print("build:", c.versao, "| arquivos na raiz:", len(c._raiz))
    kalimdor_wdt = 782779                     # Map.db2: Kalimdor (id 1) -> WdtFileDataID
    w = c.le(kalimdor_wdt)
    assert w and w[:4] == b"REVM", "WDT de Kalimdor não leu"
    q = casc.quadrantes(w)
    assert len(q) > 500, len(q)
    print("Kalimdor: %d quadrantes com ADT; %.1f MB baixados nesta sessão" % (len(q), c.baixado / 1e6))


if __name__ == "__main__":
    demo()
