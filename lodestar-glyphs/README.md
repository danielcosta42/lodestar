# Glyphs Lodestar — ícones de UI para o addon

Set de ícones vetoriais coeso (estilo linha) para toda a interface do Lodestar.

- **`.tga`** → usável direto no WoW (32-bit, transparente). Use no `SetTexture`.
- **`.png`** → só para preview/edição (WoW não exibe PNG).
- Cada glyph em **128px** e **64px** (power-of-two). Baixe do 128 se quiser reduzir.
- **Ícones creme = tingíveis:** desenhados em creme claro sobre transparente, então dá para colorir por código com `tex:SetVertexColor(r,g,b)` (ex.: dourado, verde de concluído, azul de dica).
- **Coloridos fixos:** `seta-rota` (dourado) e `faccao-alianca`/`faccao-horda` (azul/vermelho).

## Mapa: função no addon → glyph

**Verbos de objetivo (card Agora / A seguir)**
| Verbo | Glyph | Cor sugerida (VertexColor) |
|---|---|---|
| ACEITE (aceitar missão) | `losango` | dourado `#E0A84E` |
| ENTREGUE (entregar) | `check` | verde `#6FBF73` |
| MATE (matar) | `combate` | dourado |
| FALE (falar com NPC) | `falar` | dourado |
| VÁ / rota | `seta-rota` | (já dourado) |

**Marcadores**
| Uso | Glyph |
|---|---|
| Passo atual | `passo-atual` |
| Objetivo no mundo | `alvo` |
| Waypoint / direção | `seta-rota` |

**Metadados dos cards de guia**
| Uso | Glyph |
|---|---|
| Nível | `losango` |
| Nº de passos | `bandeira` |
| Tempo estimado | `relogio` |
| Avaliação | `estrela` |
| Ouro / farm | `moeda` |

**Categorias da Biblioteca de Guias**
| Categoria | Glyph |
|---|---|
| Leveling | `chevron-cima` (ou `seta-rota`) |
| Masmorras | `escudo` |
| Profissões | `martelo` |
| Reputação | `escudo` |
| Ouro & Farm | `moeda` |
| Treinadores | `treinador` |
| Guia (genérico) | `livro` |

**Navegação e janelas**
| Uso | Glyph |
|---|---|
| Fechar | `fechar` |
| Recolher / expandir | `chevron-baixo` / `chevron-cima` |
| Voltar / Avançar | `chevron-esq` / `chevron-dir` |
| Buscar | `buscar` |
| Configurações | `config` |
| Adicionar | `mais` |
| Facção | `faccao-alianca` / `faccao-horda` |

## Exemplo (Lua)

```lua
local BASE = [[Interface\AddOns\Lodestar\Media\Glyphs\]]

local function Glyph(parent, name, size, r, g, b)
  local t = parent:CreateTexture(nil, "ARTWORK")
  t:SetTexture(BASE .. name .. "-64.tga")
  t:SetSize(size, size)
  if r then t:SetVertexColor(r, g, b) end  -- tinge o glyph creme
  return t
end

-- verbo "ENTREGUE" em verde:
local ok = Glyph(stepFrame, "check", 16, 0.44, 0.75, 0.45)
-- verbo "ACEITE" em dourado:
local accept = Glyph(stepFrame, "losango", 16, 0.88, 0.66, 0.31)
```

> Coloque os arquivos em `Lodestar/Media/Glyphs/`. Se a textura aparecer verde/quebrada, tente o caminho sem a extensão `.tga`.
