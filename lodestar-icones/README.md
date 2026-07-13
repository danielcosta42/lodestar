# Ícones Lodestar — uso no WoW

Gerados em dois formatos:

- **`.tga`** → formato que o cliente do WoW **carrega direto** (32-bit, com transparência). Use estes nos `SetTexture`.
- **`.png`** → apenas para pré-visualização/edição. **O WoW não exibe PNG** — se quiser BLP, converta o `.tga` com BLPNG/BLPConverter.

Todas as imagens são quadradas e **power-of-two** (32/64/128/256/512), como o WoW exige para texturas.

## Arquivos

| Arquivo | Uso |
|---|---|
| `logo-estrela-*` | Estrela sobre **fundo transparente** — marca principal / decorações. Recolorível com `tex:SetVertexColor(r,g,b)`. |
| `icone-gema-*` | Ícone completo (estrela em gema) — **ícone do addon** na lista de AddOns. |
| `minimapa-*` | Versão redonda — **botão do minimapa**. |

## Onde colocar

```
SeuAddon/
└─ Media/Textures/
   ├─ icone-gema-64.tga
   ├─ minimapa-32.tga
   └─ logo-estrela-256.tga
```

## Exemplos de código (Lua)

**Ícone na lista de AddOns** (`.toc`, retail/anniversary):
```
## IconTexture: Interface\AddOns\SeuAddon\Media\Textures\icone-gema-64.tga
```

**Textura genérica num frame:**
```lua
local tex = frame:CreateTexture(nil, "ARTWORK")
tex:SetTexture([[Interface\AddOns\SeuAddon\Media\Textures\logo-estrela-256.tga]])
tex:SetSize(64, 64)
tex:SetPoint("CENTER")
-- opcional: tingir a estrela para verde (objetivo perto), etc.
-- tex:SetVertexColor(0.44, 0.75, 0.45)
```

**Botão do minimapa** (com LibDBIcon):
```lua
local LDB = LibStub("LibDataBroker-1.1"):NewDataObject("Lodestar", {
  type = "launcher",
  icon = [[Interface\AddOns\SeuAddon\Media\Textures\minimapa-32.tga]],
  OnClick = function() Lodestar:Toggle() end,
})
LibStub("LibDBIcon-1.0"):Register("Lodestar", LDB, LodestarDB.minimap)
```

> Dica: caminhos de textura no WoW **não levam a extensão** em versões antigas, mas em TBC Anniversary/retail o `.tga` explícito funciona. Se der textura verde/quebrada, tente sem a extensão.
