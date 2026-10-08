"""
Parser do subconjunto Lua usado pelos bancos do Questie.

Os DBs guardam os dados como:  QuestieDB.<var> = [[return { [id] = {campos...}, ... }]]
Os valores são apenas: strings ('..' ou ".."), números, nil, e tabelas aninhadas
(estilo array {a,b,c} e/ou map {[k]=v}). Sem funções nem expressões.

Uma tabela Lua vira um dict Python com chaves inteiras 1-based para itens
posicionais (fiel à semântica Lua) e a chave explícita para itens {[k]=v}.
"""
import sys


class LuaParser:
    def __init__(self, text):
        self.s = text
        self.i = 0
        self.n = len(text)

    # -- utilidades de scan -------------------------------------------------
    def _skip_ws(self):
        s, n = self.s, self.n
        while self.i < n:
            c = s[self.i]
            if c in " \t\r\n":
                self.i += 1
            elif c == "-" and self.i + 1 < n and s[self.i + 1] == "-":
                # comentário de linha (raro nos dados, mas por segurança)
                while self.i < n and s[self.i] != "\n":
                    self.i += 1
            else:
                break

    def _peek(self):
        return self.s[self.i] if self.i < self.n else ""

    # -- parse de valores ---------------------------------------------------
    def parse_value(self):
        self._skip_ws()
        c = self._peek()
        if c == "{":
            return self.parse_table()
        if c == "'" or c == '"':
            return self.parse_string(c)
        if c == "n" and self.s.startswith("nil", self.i):
            self.i += 3
            return None
        if c == "t" and self.s.startswith("true", self.i):
            self.i += 4
            return True
        if c == "f" and self.s.startswith("false", self.i):
            self.i += 5
            return False
        return self.parse_number()

    def parse_string(self, quote):
        s, n = self.s, self.n
        self.i += 1  # abre aspas
        out = []
        while self.i < n:
            c = s[self.i]
            if c == "\\":
                nxt = s[self.i + 1] if self.i + 1 < n else ""
                if nxt.isdigit():
                    j = self.i + 1
                    num = ""
                    while j < n and s[j].isdigit() and len(num) < 3:
                        num += s[j]
                        j += 1
                    out.append(chr(int(num)))
                    self.i = j
                    continue
                mapping = {"n": "\n", "t": "\t", "r": "\r", "a": "\a",
                           "b": "\b", "f": "\f", "v": "\v"}
                out.append(mapping.get(nxt, nxt))
                self.i += 2
            elif c == quote:
                self.i += 1
                break
            else:
                out.append(c)
                self.i += 1
        return "".join(out)

    def parse_number(self):
        s, n = self.s, self.n
        start = self.i
        if self._peek() == "-":
            self.i += 1
        while self.i < n and (s[self.i].isdigit() or s[self.i] in ".eExX+-"):
            self.i += 1
        tok = s[start:self.i]
        if tok == "":
            raise ValueError(f"valor inesperado em {start}: {s[start:start+20]!r}")
        try:
            if any(ch in tok for ch in ".eE") and "x" not in tok.lower():
                return float(tok)
            return int(tok, 0)
        except ValueError:
            return float(tok)

    def parse_table(self):
        self.i += 1  # consome '{'
        result = {}
        pos = 1
        while True:
            self._skip_ws()
            c = self._peek()
            if c == "}":
                self.i += 1
                break
            if c == "":
                raise ValueError("tabela não fechada")
            if c == "[":
                # chave explícita: [k] = v
                self.i += 1
                self._skip_ws()
                if self._peek() in "'\"":
                    key = self.parse_string(self._peek())
                else:
                    key = self.parse_number()
                self._skip_ws()
                assert self._peek() == "]", f"esperava ] em {self.i}"
                self.i += 1
                self._skip_ws()
                assert self._peek() == "=", f"esperava = em {self.i}"
                self.i += 1
                result[key] = self.parse_value()
            else:
                result[pos] = self.parse_value()
                pos += 1
            self._skip_ws()
            if self._peek() == ",":
                self.i += 1
        return result


def extract_db_string(path, var_name):
    """Extrai o conteúdo da long-string `QuestieDB.<var> = [[return { ... }]]`."""
    with open(path, encoding="utf-8") as fh:
        text = fh.read()
    marker = f"{var_name} = [[return "
    start = text.find(marker)
    if start < 0:
        raise ValueError(f"não achei '{marker}' em {path}")
    start += len(marker)
    # long-string Lua não pode conter "]]", então o primeiro "]]" após o
    # início é sempre o fecho correto (mesmo com várias tabelas no arquivo).
    end = text.find("]]", start)
    if end < 0:
        raise ValueError("não achei fechamento ]]")
    return text[start:end]


def parse_db(path, var_name):
    """Retorna dict {id(int): {campo_index(int): valor}}."""
    body = extract_db_string(path, var_name)
    parser = LuaParser(body)
    return parser.parse_value()


if __name__ == "__main__":
    # teste rápido: python parse_lua.py <arquivo> <var> [id]
    path, var = sys.argv[1], sys.argv[2]
    data = parse_db(path, var)
    print(f"{len(data)} entradas em {var}")
    if len(sys.argv) > 3:
        qid = int(sys.argv[3])
        print(f"[{qid}] = {data.get(qid)}")
