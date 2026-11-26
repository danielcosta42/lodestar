--=============================================================================
-- UI kit — direção de arte do Lodestar 3: cartões arredondados com fio e sombra, pílulas, hierarquia por
-- cor/tipografia. Os dois temas (claro e escuro) têm a MESMA forma; só a paleta muda (issue #93).
--=============================================================================
local ADDON, ns = ...
local UI = {}
ns.UI = UI

UI.MEDIA  = "Interface\\AddOns\\" .. ADDON .. "\\Media\\"
UI.GLYPH  = "Interface\\AddOns\\" .. ADDON .. "\\lodestar-glyphs\\"   -- ícones de UI
UI.ICON   = "Interface\\AddOns\\" .. ADDON .. "\\lodestar-icones\\"   -- marca/logo

-- Paleta. Dois temas (specs/lodestar-3): o claro é o padrão; o escuro é o de sempre. UI.COL é UMA tabela, mudada
-- no lugar por UI.ApplyTheme (no ADDON_LOADED, antes de qualquer janela nascer): quem guardou `local C = UI.COL`,
-- ou até `UI.COL.accent`, vê o tema certo. Trocar de tema vale depois de um /reload.
--
-- UI.HUD é fixa (o escuro): o que é desenhado direto sobre o mundo — seta, bússola, coordenadas, item da quest —
-- precisa de texto claro com sombra em qualquer tema.
local DARK = {
	bg          = { 0.070, 0.067, 0.051, 0.96 },  -- fundo dos painéis (#12110D)
	panel       = { 0.118, 0.110, 0.086, 1.00 },  -- cards/superfícies (#1E1C16)
	card        = { 0.118, 0.110, 0.086, 1.00 },
	header      = { 0.130, 0.115, 0.078, 1.00 },  -- barra de título (dourado sutil)
	border      = { 0.878, 0.659, 0.306, 0.30 },  -- borda dourada sutil
	borderHi    = { 0.878, 0.659, 0.306, 0.60 },  -- borda dourada em hover
	line        = { 1, 1, 1, 0.06 },              -- fio separador
	accent      = { 0.878, 0.659, 0.306, 1.00 },  -- OURO primário (#E0A84E)
	accentBright= { 0.941, 0.812, 0.541, 1.00 },  -- ouro claro / topo gradiente (#F0CF8A)
	accentDeep  = { 0.776, 0.490, 0.133, 1.00 },  -- ouro escuro / base gradiente (#C67D22)
	accentDk    = { 0.776, 0.490, 0.133, 1.00 },  -- (alias legado)
	accentSoft  = { 0.878, 0.659, 0.306, 0.16 },
	amber       = { 0.941, 0.647, 0.235, 1.00 },  -- seta/distância (#F0A53C)
	amberSoft   = { 0.941, 0.647, 0.235, 0.16 },
	done        = { 0.435, 0.749, 0.451, 1.00 },  -- verde concluído (#6FBF73)
	doneSoft    = { 0.435, 0.749, 0.451, 0.16 },
	active      = { 0.941, 0.902, 0.824, 1.00 },  -- texto primário (#F0E6D2)
	soft        = { 0.788, 0.604, 0.325, 1.00 },  -- ouro apagado (#C99A53)
	muted       = { 0.604, 0.569, 0.498, 1.00 },  -- secundário (#9A917F)
	dim         = { 0.420, 0.400, 0.361, 1.00 },  -- rótulos apagados (#6B665C)
	faded       = { 0.373, 0.420, 0.451, 1.00 },  -- texto de feito/riscado (#5F6B73)
	tip         = { 0.498, 0.690, 0.878, 1.00 },  -- azul dicas (#7FB0E0)
	tipSoft     = { 0.498, 0.690, 0.878, 0.16 },
	danger      = { 1.000, 0.420, 0.420, 1.00 },
	dangerSoft  = { 1.000, 0.420, 0.420, 0.16 },
	epic        = { 0.741, 0.471, 0.957, 1.00 },
	epicSoft    = { 0.741, 0.471, 0.957, 0.16 },
	factionA    = { 0.416, 0.624, 0.878, 1.00 },  -- Aliança (#6A9FE0)
	factionH    = { 0.820, 0.416, 0.353, 1.00 },  -- Horda (#D16A5A)
	green       = { 0.290, 0.640, 0.360, 1.00 },  -- switch ligado
	track       = { 0, 0, 0, 0.45 },              -- trilho de barra
	chip        = { 0, 0, 0, 0.35 },              -- fundo de chip
	hover       = { 1, 1, 1, 0.05 },
	ink         = { 0.941, 0.902, 0.824, 1.00 },  -- botão primário: fundo
	onInk       = { 0.070, 0.067, 0.051, 1.00 },  -- botão primário: texto
	shadow      = { 0.00, 0.00, 0.00, 0.55 },
	qUncommon   = { 0.118, 1.000, 0.000, 1.00 },
	qRare       = { 0.000, 0.439, 0.867, 1.00 },
	qEpic       = { 0.639, 0.208, 0.933, 1.00 },
}
local LIGHT = {
	bg          = { 0.984, 0.973, 0.949, 0.98 },  -- papel (#FBF8F2)
	panel       = { 1.000, 1.000, 1.000, 1.00 },  -- cartão (#FFFFFF)
	card        = { 1.000, 1.000, 1.000, 1.00 },
	header      = { 0.957, 0.933, 0.886, 1.00 },  -- faixa (#F4EEE2)
	border      = { 0.902, 0.863, 0.796, 1.00 },  -- fio (#E6DCCB)
	borderHi    = { 0.827, 0.769, 0.651, 1.00 },  -- fio forte (#D3C4A6)
	line        = { 0.941, 0.910, 0.855, 1.00 },  -- separador (#F0E8DA)
	accent      = { 0.612, 0.420, 0.063, 1.00 },  -- ouro que lê sobre o claro (#9C6B10)
	accentBright= { 0.725, 0.522, 0.122, 1.00 },  -- ouro das barras (#B9851F)
	accentDeep  = { 0.541, 0.373, 0.071, 1.00 },  -- (#8A5F12)
	accentDk    = { 0.541, 0.373, 0.071, 1.00 },
	accentSoft  = { 0.965, 0.914, 0.800, 1.00 },  -- (#F6E9CC)
	amber       = { 0.663, 0.396, 0.039, 1.00 },  -- (#A9650A)
	amberSoft   = { 0.988, 0.937, 0.851, 1.00 },  -- (#FCEFD9)
	done        = { 0.180, 0.541, 0.306, 1.00 },  -- (#2E8A4E)
	doneSoft    = { 0.890, 0.953, 0.910, 1.00 },  -- (#E3F3E8)
	active      = { 0.114, 0.133, 0.188, 1.00 },  -- tinta (#1D2230)
	soft        = { 0.541, 0.416, 0.208, 1.00 },  -- (#8A6A35)
	muted       = { 0.306, 0.333, 0.400, 1.00 },  -- (#4E5566)
	dim         = { 0.424, 0.451, 0.514, 1.00 },  -- (#6C7383)
	faded       = { 0.541, 0.565, 0.627, 1.00 },  -- (#8A90A0)
	tip         = { 0.176, 0.424, 0.710, 1.00 },  -- (#2D6CB5)
	tipSoft     = { 0.894, 0.933, 0.980, 1.00 },  -- (#E4EEFA)
	danger      = { 0.698, 0.227, 0.227, 1.00 },  -- (#B23A3A)
	dangerSoft  = { 0.976, 0.890, 0.882, 1.00 },  -- (#F9E3E1)
	epic        = { 0.557, 0.169, 0.816, 1.00 },  -- (#8E2BD0)
	epicSoft    = { 0.953, 0.902, 0.984, 1.00 },  -- (#F3E6FB)
	factionA    = { 0.176, 0.424, 0.710, 1.00 },
	factionH    = { 0.698, 0.227, 0.227, 1.00 },
	green       = { 0.180, 0.541, 0.306, 1.00 },
	track       = { 0.937, 0.902, 0.839, 1.00 },  -- (#EFE6D6)
	chip        = { 0.957, 0.933, 0.886, 1.00 },
	hover       = { 0.114, 0.133, 0.188, 0.05 },
	ink         = { 0.114, 0.133, 0.188, 1.00 },
	onInk       = { 0.984, 0.973, 0.949, 1.00 },
	shadow      = { 0.00, 0.00, 0.00, 0.22 },
	qUncommon   = { 0.102, 0.541, 0.200, 1.00 },  -- (#1A8A33)
	qRare       = { 0.043, 0.388, 0.769, 1.00 },  -- (#0B63C4)
	qEpic       = { 0.557, 0.169, 0.816, 1.00 },
}
local function copyc(c) return { c[1], c[2], c[3], c[4] } end

-- O tema escuro das janelas: a mesma estrutura do claro (papel, cartão mais claro que o papel, faixa, fio
-- visível), em tons escuros quentes. O DARK acima segue sendo a paleta do HUD (UI.HUD).
local DARK_UI = {}
for k, v in pairs(DARK) do DARK_UI[k] = copyc(v) end
for k, v in pairs({
	bg       = { 0.082, 0.078, 0.063, 0.97 },  -- papel (#15140F)
	panel    = { 0.129, 0.122, 0.102, 1.00 },  -- cartão (#211F1A)
	card     = { 0.129, 0.122, 0.102, 1.00 },
	header   = { 0.106, 0.100, 0.082, 1.00 },  -- faixa (#1B1915)
	border   = { 1, 1, 1, 0.09 },
	borderHi = { 1, 1, 1, 0.20 },
	line     = { 1, 1, 1, 0.06 },
	track    = { 1, 1, 1, 0.10 },
	chip     = { 1, 1, 1, 0.07 },
	hover    = { 1, 1, 1, 0.05 },
}) do DARK_UI[k] = v end
UI.THEMES = { light = LIGHT, dark = DARK_UI }

UI.HUD = {}
for k, v in pairs(DARK) do UI.HUD[k] = copyc(v) end

UI.COL = {}
function UI.ApplyTheme(name)
	local t = UI.THEMES[name] or LIGHT
	for k, v in pairs(t) do
		local cur = UI.COL[k]
		if cur then cur[1], cur[2], cur[3], cur[4] = v[1], v[2], v[3], v[4] else UI.COL[k] = copyc(v) end
	end
	UI.theme = UI.THEMES[name] and name or "light"
	UI.dark = UI.theme == "dark"
end
UI.ApplyTheme("light")

-- "rrggbb" de uma cor da paleta, para |cff…|r
function UI.Hex(key)
	local c = type(key) == "table" and key or UI.COL[key] or UI.COL.active
	return ("%02x%02x%02x"):format(math.floor(c[1] * 255 + 0.5), math.floor(c[2] * 255 + 0.5), math.floor(c[3] * 255 + 0.5))
end

-- Fontes: Barlow (OFL, Media/Fonts) nos idiomas de alfabeto latino; nos outros, a fonte do jogo, que tem os glifos.
local LATIN = { enUS = true, enGB = true, ptBR = true, ptPT = true, deDE = true, esES = true, esMX = true,
	frFR = true, itIT = true }
local FONTS = "Interface\\AddOns\\" .. ADDON .. "\\Media\\Fonts\\"
if LATIN[GetLocale and GetLocale() or "enUS"] then
	UI.FONT       = FONTS .. "Barlow-Medium.ttf"
	UI.FONT_BOLD  = FONTS .. "Barlow-SemiBold.ttf"
	UI.FONT_NUM   = FONTS .. "BarlowCondensed-SemiBold.ttf"
	UI.FONT_TITLE = FONTS .. "Barlow-Bold.ttf"
else
	UI.FONT       = STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF"
	UI.FONT_BOLD  = UI.FONT
	UI.FONT_NUM   = "Fonts\\ARIALN.TTF"
	UI.FONT_TITLE = UI.FONT
end

-- helpers ---------------------------------------------------------------------
local function unpackc(c, a)
	return c[1], c[2], c[3], a or c[4] or 1
end
UI.unpackc = unpackc

-- opts: num (condensada, números e rótulos), bold, title, color, outline, shadow, hud (texto sobre o mundo:
-- sempre com sombra escura, em qualquer tema)
function UI.SetFont(fs, size, opts)
	opts = opts or {}
	local font = opts.title and UI.FONT_TITLE or (opts.num and UI.FONT_NUM) or (opts.bold and UI.FONT_BOLD) or UI.FONT
	fs:SetFont(font, size, opts.outline or "")
	if not fs:GetFont() then fs:SetFont(STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF", size, opts.outline or "") end
	if opts.color then fs:SetTextColor(unpackc(opts.color)) end
	if opts.shadow == false or not opts.hud then        -- sombra só no texto sobre o mundo
		fs:SetShadowOffset(0, 0)
	else
		fs:SetShadowColor(0, 0, 0, 0.9)
		fs:SetShadowOffset(1, -1)
	end
	return fs
end

-- Textura 9-slice da Media (cantos arredondados que não esticam). Sem a API (cliente velho): cor sólida.
local SLICES = { ["round-12"] = 12, ["round-12-line"] = 12, ["round-6"] = 6, ["round-6-line"] = 6, pill = 15, shadow = 32 }
function UI.Slice(parent, file, layer, color, sub)
	local t = parent:CreateTexture(nil, layer or "BACKGROUND", nil, sub)
	if t.SetTextureSliceMargins then
		t:SetTexture(UI.MEDIA .. file)
		local m = SLICES[file] or 8
		t:SetTextureSliceMargins(m, m, m, m)
		if t.SetTextureSliceMode then t:SetTextureSliceMode(0) end
		if color then t:SetVertexColor(unpackc(color)) end
	elseif color then
		t:SetColorTexture(unpackc(color))
	end
	return t
end

-- textura de cor sólida
function UI.Rect(parent, layer, color)
	local t = parent:CreateTexture(nil, layer or "ARTWORK")
	if color then t:SetColorTexture(unpackc(color)) end
	return t
end

-- borda de 1px nos 4 lados (crisp, sem backdrop)
local function addBorder(frame, color)
	local px = 1
	local sides = {}
	for _, s in ipairs({ "TOP", "BOTTOM", "LEFT", "RIGHT" }) do
		local t = frame:CreateTexture(nil, "BORDER")
		t:SetColorTexture(unpackc(color))
		if s == "TOP" then
			t:SetPoint("TOPLEFT"); t:SetPoint("TOPRIGHT"); t:SetHeight(px)
		elseif s == "BOTTOM" then
			t:SetPoint("BOTTOMLEFT"); t:SetPoint("BOTTOMRIGHT"); t:SetHeight(px)
		elseif s == "LEFT" then
			t:SetPoint("TOPLEFT"); t:SetPoint("BOTTOMLEFT"); t:SetWidth(px)
		else
			t:SetPoint("TOPRIGHT"); t:SetPoint("BOTTOMRIGHT"); t:SetWidth(px)
		end
		sides[s] = t
	end
	frame._border = sides
	return sides
end
UI.AddBorder = addBorder

-- Painel: arredondado com fio (e sombra, se é janela de topo), nos dois temas. opts: color, border (false = sem
-- fio: superfície interna, reta), borderColor, top / bottom (faixa de topo ou de rodapé de janela: só os cantos de
-- fora arredondados),
-- radius (6 = cantos pequenos, para botões), accentStripe.
function UI.Panel(parent, opts)
	opts = opts or {}
	local f = CreateFrame("Frame", opts.name, parent)
	local color = opts.color or UI.COL.bg
	local r = opts.radius == 6 and "round-6" or "round-12"
	if opts.border == false and not (opts.top or opts.bottom) then
		f.bg = UI.Rect(f, "BACKGROUND", color); f.bg:SetAllPoints()
		f.flat = true
	else
		-- janela de topo: sombra suave por trás (o papel precisa descolar do mundo)
		if parent == UIParent and opts.border ~= false then
			local sh = UI.Slice(f, "shadow", "BACKGROUND", UI.COL.shadow, -8)
			sh:SetPoint("TOPLEFT", -22, 18); sh:SetPoint("BOTTOMRIGHT", 22, -26)
		end
		f.bg = UI.Slice(f, r, "BACKGROUND", color); f.bg:SetAllPoints()
		if opts.top or opts.bottom then   -- faixa de topo (ou de rodapé): o lado de dentro fica reto
			local edge = opts.top and "BOTTOM" or "TOP"
			f.fill = UI.Rect(f, "BACKGROUND", color)
			f.fill:SetPoint(edge .. "LEFT"); f.fill:SetPoint(edge .. "RIGHT"); f.fill:SetHeight(r == "round-6" and 6 or 12)
		end
		if opts.border ~= false then
			f.line = UI.Slice(f, r .. "-line", "BORDER", opts.borderColor or UI.COL.border); f.line:SetAllPoints()
		end
	end
	function f:SetColor(c)
		if self.flat then self.bg:SetColorTexture(unpackc(c)) else self.bg:SetVertexColor(unpackc(c)) end
		if self.fill then self.fill:SetColorTexture(unpackc(c)) end
	end
	function f:SetLine(c) if self.line then self.line:SetVertexColor(unpackc(c)) end end
	if opts.accentStripe then
		local s = UI.Rect(f, "ARTWORK", opts.accentColor or UI.COL.accent)
		s:SetPoint("TOPLEFT", 0, -12); s:SetPoint("BOTTOMLEFT", 0, 12); s:SetWidth(3)
		f.stripe = s
	end
	return f
end

-- Barra de progresso (fundo + preenchimento)
function UI.Bar(parent, color)
	local bar = CreateFrame("Frame", nil, parent)
	local bg = UI.Slice(bar, "pill", "BACKGROUND", UI.COL.track)
	bg:SetAllPoints()
	local fill = UI.Slice(bar, "pill", "ARTWORK", color or UI.COL.accentBright)
	fill:SetPoint("TOPLEFT"); fill:SetPoint("BOTTOMLEFT")
	fill:SetWidth(1)
	bar.fill, bar.track = fill, bg
	function bar:SetColor(c) self.fill:SetVertexColor(unpackc(c)) end
	function bar:SetProgress(frac)
		frac = math.max(0, math.min(1, frac or 0))
		local w = self:GetWidth() * frac
		self.fill:SetWidth(math.max(1, w))
	end
	return bar
end

-- Botão arredondado; `kind` = "primary" (tinta cheia, a ação principal da tela) ou nada (contorno).
-- b:Fit(min) ajusta a largura ao texto (nunca corta).
function UI.Button(parent, text, w, h, kind)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(w or 74, h or 22)
	local fs = b:CreateFontString(nil, "OVERLAY")
	b.text = fs
	fs:SetPoint("CENTER")
	local primary = kind == "primary"
	local bg = UI.Slice(b, "round-6", "BACKGROUND", primary and UI.COL.ink or UI.COL.card); bg:SetAllPoints()
	local line = UI.Slice(b, "round-6-line", "BORDER", primary and UI.COL.ink or UI.COL.border); line:SetAllPoints()
	b.bg, b.line = bg, line
	UI.SetFont(fs, 12.5, { bold = true, color = primary and UI.COL.onInk or UI.COL.muted })
	fs:SetText(text)
	function b:Fit(min) self:SetWidth(math.max(min or 0, math.ceil(self.text:GetStringWidth()) + 28)) end
	b:SetScript("OnEnter", function()
		if primary then bg:SetVertexColor(unpackc(UI.COL.accentDeep)); line:SetVertexColor(unpackc(UI.COL.accentDeep))
		else line:SetVertexColor(unpackc(UI.COL.borderHi)); fs:SetTextColor(unpackc(UI.COL.active)) end
	end)
	b:SetScript("OnLeave", function()
		if primary then bg:SetVertexColor(unpackc(UI.COL.ink)); line:SetVertexColor(unpackc(UI.COL.ink))
		else line:SetVertexColor(unpackc(UI.COL.border)); fs:SetTextColor(unpackc(UI.COL.muted)) end
	end)
	return b
end

-- Chip: rótulo compacto com fundo + ícone (glyph) opcional
function UI.Chip(parent, color, textColor)
	local c = CreateFrame("Frame", nil, parent)
	local bg = UI.Slice(c, "pill", "BACKGROUND", color or UI.COL.accentSoft)
	bg:SetAllPoints()
	c.bg = bg
	c.icon = c:CreateTexture(nil, "OVERLAY"); c.icon:SetSize(11, 11)
	c.icon:SetPoint("LEFT", 5, 0); c.icon:Hide()
	local fs = c:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 11, { num = true, color = textColor or (UI.dark and UI.COL.accent or UI.COL.accentDeep) })
	fs:SetPoint("LEFT", 6, 0)
	c.text = fs
	function c:SetIcon(glyph, tint)
		self.icon:SetTexture(UI.GLYPH .. glyph .. "-64")
		if tint then self.icon:SetVertexColor(unpackc(tint)) else self.icon:SetVertexColor(1, 1, 1, 1) end
		self.icon:Show()
		self.text:ClearAllPoints(); self.text:SetPoint("LEFT", self.icon, "RIGHT", 3, 0)
	end
	function c:Set(txt)
		self.text:SetText(txt)
		local w = self.text:GetStringWidth() + 12
		if self.icon:IsShown() then w = w + 16 end
		self:SetWidth(w)
	end
	c:SetHeight(16)
	return c
end

-- Textura da nossa Media, tingível
function UI.Media(parent, file, layer)
	local t = parent:CreateTexture(nil, layer or "ARTWORK")
	t:SetTexture(UI.MEDIA .. file)
	return t
end

-- Glyph de UI (pasta lodestar-glyphs). size = 64 (default) ou 128.
function UI.Glyph(parent, name, layer, size)
	local t = parent:CreateTexture(nil, layer or "ARTWORK")
	t:SetTexture(UI.GLYPH .. name .. "-" .. (size or 64))
	return t
end

-- Ícone/marca (pasta lodestar-icones). size p/ os tamanhos disponíveis.
function UI.Icon(parent, name, layer, size)
	local t = parent:CreateTexture(nil, layer or "ARTWORK")
	t:SetTexture(UI.ICON .. name .. "-" .. (size or 128))
	return t
end

-- Botão de fechar (glyph)
function UI.CloseButton(parent, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(18, 18)
	local t = UI.Glyph(b, "fechar", "OVERLAY", 64); t:SetPoint("CENTER"); t:SetSize(12, 12)
	t:SetVertexColor(unpackc(UI.COL.muted))
	b:SetScript("OnEnter", function() t:SetVertexColor(unpackc(UI.COL.accent)) end)
	b:SetScript("OnLeave", function() t:SetVertexColor(unpackc(UI.COL.muted)) end)
	b:SetScript("OnClick", onClick)
	return b
end

--------------------------------------------------------------------------------
-- Switch (toggle): trilho + knob deslizante; verde quando ligado
--------------------------------------------------------------------------------
function UI.Switch(parent, onToggle)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(46, 24)
	local off = UI.dark and { 1, 1, 1, 0.16 } or UI.COL.track
	local track = UI.Slice(b, "pill", "BACKGROUND", off)
	track:SetAllPoints()
	local function paintTrack(c) track:SetVertexColor(unpackc(c)) end
	local knob = UI.Media(b, "dot", "OVERLAY"); knob:SetSize(18, 18)
	knob:SetPoint("LEFT", 3, 0); knob:SetVertexColor(1, 1, 1, 1)
	b.knob = knob
	function b:SetOn(on)
		self._on = on and true or false
		paintTrack(self._on and UI.COL.green or off)
		knob:ClearAllPoints()
		knob:SetPoint(self._on and "RIGHT" or "LEFT", self._on and -3 or 3, 0)
	end
	b:SetScript("OnClick", function(self)
		self:SetOn(not self._on)
		if onToggle then onToggle(self._on) end
	end)
	return b
end

--------------------------------------------------------------------------------
-- Slider: trilho + preenchimento dourado + thumb; rótulo de valor à direita
--------------------------------------------------------------------------------
function UI.Slider(parent, minV, maxV, step, onChange)
	local s = CreateFrame("Slider", nil, parent)
	s:SetOrientation("HORIZONTAL"); s:SetHeight(16)
	s:SetMinMaxValues(minV, maxV); s:SetValueStep(step or 1)
	if s.SetObeyStepOnDrag then s:SetObeyStepOnDrag(true) end
	local bg = UI.Slice(s, "pill", "BACKGROUND", UI.COL.track)
	bg:SetPoint("LEFT"); bg:SetPoint("RIGHT"); bg:SetHeight(6)
	local fill = UI.Slice(s, "pill", "ARTWORK", UI.COL.accentBright)
	fill:SetPoint("LEFT", bg, "LEFT"); fill:SetHeight(6); fill:SetWidth(1)
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetTexture(UI.MEDIA .. "dot"); thumb:SetSize(16, 16)
	thumb:SetVertexColor(unpackc(UI.COL.accentBright))
	s:SetThumbTexture(thumb)
	local function paint(val)
		local frac = (maxV > minV) and (val - minV) / (maxV - minV) or 0
		fill:SetWidth(math.max(1, (bg:GetWidth() or 100) * frac))
	end
	s:SetScript("OnValueChanged", function(self, val)
		paint(val)
		if onChange then onChange(val) end
	end)
	-- só repinta ao mostrar (largura só existe após o layout): regravar o valor aqui
	-- desfazia o que mudou por fora desde que a página foi montada
	s:SetScript("OnShow", function(self) paint(self:GetValue() or minV) end)
	return s
end

--------------------------------------------------------------------------------
-- Tab: botão de aba; ativo = texto claro + sublinhado dourado
--------------------------------------------------------------------------------
function UI.Tab(parent, text, onClick)
	local t = CreateFrame("Button", nil, parent)
	t:SetHeight(26)
	local fs = t:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 12, { num = true, color = UI.COL.muted })
	fs:SetPoint("CENTER", 0, 0); fs:SetText(text)
	t:SetWidth(fs:GetStringWidth() + 26)
	local ul = UI.Rect(t, "ARTWORK", UI.COL.accent)
	ul:SetPoint("BOTTOMLEFT", 4, 0); ul:SetPoint("BOTTOMRIGHT", -4, 0); ul:SetHeight(2); ul:Hide()
	t.fs = fs
	function t:SetActive(on)
		fs:SetTextColor(unpackc(on and UI.COL.active or UI.COL.muted))
		ul:SetShown(on)
	end
	t:SetScript("OnEnter", function() if not ul:IsShown() then fs:SetTextColor(unpackc(UI.COL.active)) end end)
	t:SetScript("OnLeave", function() if not ul:IsShown() then fs:SetTextColor(unpackc(UI.COL.muted)) end end)
	t:SetScript("OnClick", onClick)
	return t
end

-- Ornamento de canto: aposentado (issue #93) — o cartão arredondado basta nos dois temas.
function UI.CornerFlourish() end

--------------------------------------------------------------------------------
-- Lodestar 3 (specs/lodestar-3): cartão, janela, botão de ícone, selo, segmentado, item de menu lateral, rolagem.
-- Mesma forma nos dois temas: cantos arredondados e sombra.
--------------------------------------------------------------------------------
function UI.Text(parent, size, color, opts)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	opts = opts or {}
	opts.color = color or UI.COL.active
	UI.SetFont(fs, size, opts)
	fs:SetJustifyH(opts.justify or "LEFT")
	if opts.wrap ~= nil then fs:SetWordWrap(opts.wrap) end
	return fs
end

-- Cartão: superfície arredondada com fio. opts: color, line (false = sem fio), shadow, radius ("12" | "6").
function UI.Card(parent, opts)
	opts = opts or {}
	local f = CreateFrame("Frame", opts.name, parent)
	local r = opts.radius == 6 and "round-6" or "round-12"
	if opts.shadow then
		local sh = UI.Slice(f, "shadow", "BACKGROUND", UI.COL.shadow, -8)
		sh:SetPoint("TOPLEFT", -22, 18); sh:SetPoint("BOTTOMRIGHT", 22, -26)
	end
	f.bg = UI.Slice(f, r, "BACKGROUND", opts.color or UI.COL.card); f.bg:SetAllPoints()
	if opts.line ~= false then
		f.line = UI.Slice(f, r .. "-line", "BORDER", opts.lineColor or UI.COL.border); f.line:SetAllPoints()
	end
	function f:SetColor(c) self.bg:SetVertexColor(unpackc(c)) end
	function f:SetLine(c) if self.line then self.line:SetVertexColor(unpackc(c)) end end
	return f
end

-- Janela de topo: cartão com sombra, arrastável pelo topo, Esc fecha, no estrato pedido.
function UI.Window(name, w, h, opts)
	opts = opts or {}
	local f = UI.Card(UIParent, { name = name, shadow = true, color = UI.COL.bg })
	f:SetSize(w, h)
	f:SetPoint(opts.point or "CENTER")
	f:SetFrameStrata(opts.strata or "DIALOG"); f:SetToplevel(true)
	f:SetMovable(true); f:EnableMouse(true); f:SetClampedToScreen(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", function(self) self:StartMoving() end)
	f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing(); if opts.onMoved then opts.onMoved(self) end end)
	if opts.esc ~= false and name then tinsert(UISpecialFrames, name) end
	return f
end

-- Botão quadrado com glifo (cabeçalhos, ações rápidas). glyph = nome em lodestar-glyphs.
function UI.IconButton(parent, glyph, size, tip, onClick)
	local b = CreateFrame("Button", nil, parent)
	size = size or 28
	b:SetSize(size, size)
	local bg = UI.Slice(b, "round-6", "BACKGROUND", UI.COL.header)
	bg:SetAllPoints()
	local g = UI.Glyph(b, glyph, "OVERLAY", 64)
	g:SetSize(math.floor(size * 0.52), math.floor(size * 0.52)); g:SetPoint("CENTER")
	g:SetVertexColor(unpackc(UI.COL.muted))
	b.glyph, b.bg = g, bg
	b:SetScript("OnEnter", function(self)
		g:SetVertexColor(unpackc(UI.COL.accent))
		if tip then GameTooltip:SetOwner(self, "ANCHOR_BOTTOM"); GameTooltip:SetText(tip); GameTooltip:Show() end
	end)
	b:SetScript("OnLeave", function() g:SetVertexColor(unpackc(UI.COL.muted)); GameTooltip:Hide() end)
	if onClick then b:SetScript("OnClick", onClick) end
	return b
end

-- Selo em pílula: texto curto com fundo suave. kind = "gold" | "ok" | "warn" | "info" | "danger" | "epic" | "plain".
local BADGE = {
	gold = { "accentSoft", "accentDeep" }, ok = { "doneSoft", "done" }, warn = { "amberSoft", "amber" },
	info = { "tipSoft", "tip" }, danger = { "dangerSoft", "danger" }, epic = { "epicSoft", "epic" },
	plain = { "chip", "muted" },
}
function UI.Badge(parent, text, kind)
	local b = CreateFrame("Frame", nil, parent)
	local k = BADGE[kind or "gold"] or BADGE.gold
	b.bg = UI.Slice(b, "pill", "BACKGROUND", UI.COL[k[1]])
	b.bg:SetAllPoints()
	b.text = UI.Text(b, 11, UI.COL[k[2]], { num = true })
	b.text:SetPoint("CENTER", 0, 0)
	function b:Set(txt, newKind)
		if newKind then
			local nk = BADGE[newKind] or BADGE.gold
			self.bg:SetVertexColor(unpackc(UI.COL[nk[1]]))
			self.text:SetTextColor(unpackc(UI.COL[nk[2]]))
		end
		self.text:SetText(txt)
		self:SetSize(math.max(18, self.text:GetStringWidth() + 14), 17)
	end
	b:Set(text or "")
	return b
end

-- Linha de lista padrão (issue #93): marcador em ladrilho (glifo num quadrado arredondado, no tom do selo), título,
-- linha de baixo (texto ou barra) e, à direita, um valor e/ou uma ação que cabe no texto. Altura fixa; sem a linha de
-- baixo, o título centra. Fio embaixo; realce ao passar o mouse quando a linha é clicável.
--   r:Set{ glyph, tone ("gold" | "ok" | "info" | "epic" | "warn" | "danger" | "plain"), title, titleColor, wrap,
--          sub, subColor, progress (0..1), progressColor, value, valueColor, action, onAction, onClick }
function UI.ListRow(parent, height)
	local C = UI.COL
	local r = CreateFrame("Button", nil, parent)
	r:SetHeight(height or 48)
	r.hl = UI.Slice(r, "round-6", "BACKGROUND", C.hover); r.hl:SetAllPoints(); r.hl:Hide()
	r.tile = UI.Slice(r, "round-6", "ARTWORK", C.accentSoft); r.tile:SetSize(28, 28); r.tile:SetPoint("LEFT", 8, 0)
	r.glyph = r:CreateTexture(nil, "OVERLAY"); r.glyph:SetSize(15, 15); r.glyph:SetPoint("CENTER", r.tile, "CENTER")
	r.title = UI.Text(r, 13, C.active, { bold = true, wrap = false })
	r.sub = UI.Text(r, 11.5, C.dim, { num = true, wrap = false })
	r.bar = UI.Bar(r, C.accentBright); r.bar:SetHeight(5); r.bar:Hide()
	r.value = UI.Text(r, 12, C.dim, { num = true, justify = "RIGHT" })
	r.action = CreateFrame("Button", nil, r); r.action:SetHeight(24)
	r.actionFS = UI.Text(r.action, 12.5, C.tip, { bold = true }); r.actionFS:SetPoint("CENTER")
	r.action:SetScript("OnEnter", function() r.actionFS:SetTextColor(unpackc(C.accent)) end)
	r.action:SetScript("OnLeave", function() r.actionFS:SetTextColor(unpackc(C.tip)) end)
	r.sep = UI.Rect(r, "BORDER", C.line); r.sep:SetHeight(1)
	r.sep:SetPoint("BOTTOMLEFT", 8, 0); r.sep:SetPoint("BOTTOMRIGHT", -8, 0)
	r:SetScript("OnEnter", function(self) if self._click then self.hl:Show() end end)
	r:SetScript("OnLeave", function(self) self.hl:Hide() end)
	function r:Set(t)
		local k = BADGE[t.tone or "gold"] or BADGE.gold
		local left = 12
		if t.glyph then
			self.tile:SetVertexColor(unpackc(C[k[1]]))
			self.glyph:SetTexture(UI.GLYPH .. t.glyph .. "-64"); self.glyph:SetVertexColor(unpackc(C[k[2]]))
			self.tile:Show(); self.glyph:Show()
			left = 48
		else
			self.tile:Hide(); self.glyph:Hide()
		end
		-- direita: ação, depois o valor
		local right = -10
		if t.action then
			self.actionFS:SetText(t.action)
			self.action:SetWidth(math.ceil(self.actionFS:GetStringWidth()) + 14)
			self.action:ClearAllPoints(); self.action:SetPoint("RIGHT", self, "RIGHT", -4, 0)
			self.action:SetScript("OnClick", t.onAction)
			self.action:Show()
			right = -4 - self.action:GetWidth() - 6
		else
			self.action:Hide()
		end
		if t.value and t.value ~= "" then
			self.value:SetText(t.value); self.value:SetTextColor(unpackc(t.valueColor or C.dim))
			self.value:ClearAllPoints(); self.value:SetPoint("RIGHT", self, "RIGHT", right, 0)
			self.value:Show()
			right = right - math.ceil(self.value:GetStringWidth()) - 10
		else
			self.value:Hide()
		end
		-- texto
		local two = (t.sub and t.sub ~= "") or t.progress ~= nil
		self.title:SetText(t.title or "")
		self.title:SetTextColor(unpackc(t.titleColor or C.active))
		self.title:SetWordWrap(t.wrap and true or false)
		if self.title.SetMaxLines then self.title:SetMaxLines(t.wrap and 2 or 1) end
		self.title:ClearAllPoints()
		if two then
			self.title:SetPoint("TOPLEFT", self, "TOPLEFT", left, t.wrap and -6 or -9)
			self.title:SetPoint("TOPRIGHT", self, "TOPRIGHT", right, t.wrap and -6 or -9)
		else
			self.title:SetPoint("LEFT", self, "LEFT", left, 0)
			self.title:SetPoint("RIGHT", self, "RIGHT", right, 0)
		end
		self.sub:ClearAllPoints(); self.bar:ClearAllPoints()
		if t.progress ~= nil then
			self.sub:Hide()
			self.bar:SetPoint("TOPLEFT", self.title, "BOTTOMLEFT", 0, -7)
			self.bar:SetPoint("TOPRIGHT", self.title, "BOTTOMRIGHT", 0, -7)
			self.bar:SetColor(t.progressColor or C.accentBright)
			self.bar:SetProgress(t.progress); self.bar:Show()
		else
			self.bar:Hide()
			self.sub:SetText(t.sub or ""); self.sub:SetTextColor(unpackc(t.subColor or C.dim))
			self.sub:SetPoint("TOPLEFT", self.title, "BOTTOMLEFT", 0, -4)
			self.sub:SetPoint("TOPRIGHT", self.title, "BOTTOMRIGHT", 0, -4)
			self.sub:SetShown(two)
		end
		self._click = t.onClick
		self:SetScript("OnClick", t.onClick)
	end
	return r
end

-- Controle segmentado: { { label, value }, ... }; onSelect(value).
function UI.Segmented(parent, items, onSelect)
	local f = CreateFrame("Frame", nil, parent)
	local bg = UI.Slice(f, "round-6", "BACKGROUND", UI.dark and UI.COL.chip or UI.COL.header)
	bg:SetAllPoints()
	f.buttons = {}
	local x = 3
	for i, it in ipairs(items) do
		local b = CreateFrame("Button", nil, f)
		b:SetHeight(24)
		local sel = UI.Slice(b, "round-6", "BACKGROUND", UI.COL.card)
		sel:SetAllPoints(); sel:Hide()
		local fs = UI.Text(b, 12, UI.COL.muted, { bold = true }); fs:SetPoint("CENTER"); fs:SetText(it[1])
		b:SetWidth(fs:GetStringWidth() + 22)
		b:SetPoint("LEFT", f, "LEFT", x, 0)
		x = x + b:GetWidth() + 2
		b.sel, b.fs, b.value = sel, fs, it[2]
		b:SetScript("OnClick", function() f:Select(it[2]); if onSelect then onSelect(it[2]) end end)
		f.buttons[i] = b
	end
	f:SetSize(x + 1, 30)
	function f:Select(value)
		for _, b in ipairs(self.buttons) do
			local on = b.value == value
			b.sel:SetShown(on)
			b.fs:SetTextColor(unpackc(on and UI.COL.active or UI.COL.muted))
		end
		self.value = value
	end
	function f:SetLabel(value, label)
		for _, b in ipairs(self.buttons) do if b.value == value then b.fs:SetText(label) end end
	end
	return f
end

-- Item do menu lateral da Central: glifo + rótulo + contador opcional.
function UI.NavItem(parent, label, glyph, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetHeight(32)
	local sel = UI.Slice(b, "round-6", "BACKGROUND", UI.COL.card)
	sel:SetAllPoints(); sel:Hide()
	local bar = UI.Rect(b, "ARTWORK", UI.COL.accent); bar:SetPoint("TOPLEFT", 0, -7); bar:SetPoint("BOTTOMLEFT", 0, 7)
	bar:SetWidth(3); bar:Hide()
	local g = glyph and UI.Glyph(b, glyph, "OVERLAY", 64)
	if g then g:SetSize(15, 15); g:SetPoint("LEFT", 12, 0); g:SetVertexColor(unpackc(UI.COL.dim)) end
	local fs = UI.Text(b, 13, UI.COL.muted, { bold = true })
	fs:SetPoint("LEFT", g or b, g and "RIGHT" or "LEFT", g and 9 or 12, 0); fs:SetText(label)
	b.count = UI.Badge(b, "", "ok"); b.count:SetPoint("RIGHT", -8, 0); b.count:Hide()
	b.sel, b.fs, b.g, b.bar = sel, fs, g, bar
	function b:SetActive(on)
		self.sel:SetShown(on); self.bar:SetShown(on)
		self.fs:SetTextColor(unpackc(on and UI.COL.active or UI.COL.muted))
		if self.g then self.g:SetVertexColor(unpackc(on and UI.COL.accent or UI.COL.dim)) end
	end
	function b:SetCount(n, kind)
		if n and n ~= "" and n ~= 0 then self.count:Set(tostring(n), kind); self.count:Show() else self.count:Hide() end
	end
	b:SetScript("OnEnter", function(self) if not self.sel:IsShown() then self.fs:SetTextColor(unpackc(UI.COL.active)) end end)
	b:SetScript("OnLeave", function(self) if not self.sel:IsShown() then self.fs:SetTextColor(unpackc(UI.COL.muted)) end end)
	b:SetScript("OnClick", onClick)
	return b
end

-- Área com rolagem vertical: devolve o ScrollFrame e o filho (a largura do filho é a da área).
function UI.Scroll(parent)
	local sf = CreateFrame("ScrollFrame", nil, parent)
	local child = CreateFrame("Frame", nil, sf)
	child:SetSize(1, 1)
	sf:SetScrollChild(child)
	sf:EnableMouseWheel(true)
	local thumb = UI.Rect(parent, "OVERLAY", UI.COL.borderHi); thumb:SetWidth(3); thumb:Hide()
	local function sync()
		local max = math.max(0, child:GetHeight() - sf:GetHeight())
		local v = math.min(sf:GetVerticalScroll(), max)
		sf:SetVerticalScroll(v)
		if max <= 0 then thumb:Hide(); return end
		local vh = sf:GetHeight()
		local th = math.max(24, vh * vh / (vh + max))
		thumb:SetHeight(th); thumb:ClearAllPoints()
		thumb:SetPoint("TOPRIGHT", sf, "TOPRIGHT", 6, -(vh - th) * v / max); thumb:Show()
	end
	sf:SetScript("OnMouseWheel", function(self, d)
		local max = math.max(0, child:GetHeight() - self:GetHeight())
		self:SetVerticalScroll(math.max(0, math.min(max, self:GetVerticalScroll() - d * 48)))
		sync()
	end)
	sf:SetScript("OnSizeChanged", function(self, w) child:SetWidth(w); sync() end)
	sf.child, sf.Sync = child, sync
	return sf, child
end

--------------------------------------------------------------------------------
-- Menu: uma coluna de botões presa ao `anchor`; clicar de novo, fora ou Esc fecha.
-- items = { { texto, função }, ... }
--------------------------------------------------------------------------------
local menu
function UI.Menu(anchor, items)
	if menu and menu:IsShown() and menu._anchor == anchor then return menu:Hide() end
	if not menu then
		menu = UI.Card(UIParent, { name = "LodestarMenu", shadow = true, color = UI.COL.bg })
		menu:SetFrameStrata("FULLSCREEN_DIALOG"); menu:SetClampedToScreen(true)
		menu.buttons = {}
		tinsert(UISpecialFrames, "LodestarMenu")
		ns:On("GLOBAL_MOUSE_DOWN", function()
			if menu:IsShown() and not menu:IsMouseOver() and not (menu._anchor and menu._anchor:IsMouseOver()) then
				menu:Hide()
			end
		end)
	end
	menu._anchor = anchor
	for i, it in ipairs(items) do
		local b = menu.buttons[i]
		if not b then
			b = UI.Button(menu, "", 200, 20)
			b:SetPoint("TOPLEFT", 4, -4 - (i - 1) * 22)
			b.text:ClearAllPoints(); b.text:SetPoint("LEFT", 8, 0)
			menu.buttons[i] = b
		end
		b.text:SetText(it[1])
		b:SetScript("OnClick", function() menu:Hide(); it[2]() end)
		b:Show()
	end
	for i = #items + 1, #menu.buttons do menu.buttons[i]:Hide() end
	menu:SetSize(208, 8 + #items * 22 - 2)
	menu:ClearAllPoints(); menu:SetPoint("TOPRIGHT", anchor, "BOTTOMRIGHT", 0, -2)
	menu:Show()
end
