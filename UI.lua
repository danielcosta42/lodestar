--=============================================================================
-- UI kit — direção de arte do Lodestar. Visual clean: painéis retangulares,
-- bordas de 1px, cor sólida, hierarquia por cor/tipografia. Sem glass/orgânico.
--=============================================================================
local ADDON, ns = ...
local UI = {}
ns.UI = UI

UI.MEDIA  = "Interface\\AddOns\\" .. ADDON .. "\\Media\\"
UI.GLYPH  = "Interface\\AddOns\\" .. ADDON .. "\\lodestar-glyphs\\"   -- ícones de UI
UI.ICON   = "Interface\\AddOns\\" .. ADDON .. "\\lodestar-icones\\"   -- marca/logo

-- Paleta (spec Lodestar: preto quente + dourado premium; verde=feito, azul=dica) --
UI.COL = {
	bg          = { 0.070, 0.067, 0.051, 0.96 },  -- fundo dos painéis (#12110D)
	panel       = { 0.118, 0.110, 0.086, 1.00 },  -- cards/superfícies (#1E1C16)
	header      = { 0.130, 0.115, 0.078, 1.00 },  -- barra de título (dourado sutil)
	border      = { 0.878, 0.659, 0.306, 0.30 },  -- borda dourada sutil
	borderHi    = { 0.878, 0.659, 0.306, 0.60 },  -- borda dourada em hover
	accent      = { 0.878, 0.659, 0.306, 1.00 },  -- OURO primário (#E0A84E)
	accentBright= { 0.941, 0.812, 0.541, 1.00 },  -- ouro claro / topo gradiente (#F0CF8A)
	accentDeep  = { 0.776, 0.490, 0.133, 1.00 },  -- ouro escuro / base gradiente (#C67D22)
	accentDk    = { 0.776, 0.490, 0.133, 1.00 },  -- (alias legado)
	amber       = { 0.941, 0.647, 0.235, 1.00 },  -- seta/distância (#F0A53C)
	done        = { 0.435, 0.749, 0.451, 1.00 },  -- verde concluído (#6FBF73)
	active      = { 0.941, 0.902, 0.824, 1.00 },  -- texto primário (#F0E6D2)
	soft        = { 0.788, 0.604, 0.325, 1.00 },  -- ouro apagado (#C99A53)
	muted       = { 0.604, 0.569, 0.498, 1.00 },  -- secundário (#9A917F)
	dim         = { 0.420, 0.400, 0.361, 1.00 },  -- rótulos apagados (#6B665C)
	tip         = { 0.498, 0.690, 0.878, 1.00 },  -- azul dicas (#7FB0E0)
	factionA    = { 0.416, 0.624, 0.878, 1.00 },  -- Aliança (#6A9FE0)
	factionH    = { 0.820, 0.416, 0.353, 1.00 },  -- Horda (#D16A5A)
	green       = { 0.290, 0.640, 0.360, 1.00 },  -- switch ligado
	shadow      = { 0.00, 0.00, 0.00, 0.55 },
}

UI.FONT       = STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF"  -- corpo (papel de Barlow)
UI.FONT_NUM   = "Fonts\\ARIALN.TTF"       -- estreita, rótulos/números (Barlow Condensed)
-- Friz Quadrata (serif humanista) é bem mais próxima da Cinzel do que MORPHEUS,
-- e sem o espaçamento largo estranho. Troque por Cinzel.ttf quando tiver o arquivo.
UI.FONT_TITLE = STANDARD_TEXT_FONT or "Fonts\\FRIZQT__.TTF"

-- helpers ---------------------------------------------------------------------
local function unpackc(c, a)
	return c[1], c[2], c[3], a or c[4] or 1
end
UI.unpackc = unpackc

-- Gradiente compatível (API nova SetGradient; fallback SetGradientAlpha).
function UI.Gradient(tex, orientation, c1, c2)
	tex:SetColorTexture(1, 1, 1, 1)
	if tex.SetGradient and CreateColor then
		local ok = pcall(tex.SetGradient, tex, orientation,
			CreateColor(unpackc(c1)), CreateColor(unpackc(c2)))
		if ok then return end
	end
	if tex.SetGradientAlpha then
		tex:SetGradientAlpha(orientation, unpackc(c1), unpackc(c2))
	end
end

function UI.SetFont(fs, size, opts)
	opts = opts or {}
	local font = opts.title and UI.FONT_TITLE or (opts.num and UI.FONT_NUM) or UI.FONT
	fs:SetFont(font, size, opts.outline or "")
	if opts.color then fs:SetTextColor(unpackc(opts.color)) end
	if opts.shadow ~= false then
		fs:SetShadowColor(0, 0, 0, 0.9)
		fs:SetShadowOffset(1, -1)
	end
	return fs
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

-- Painel limpo: fundo sólido + borda 1px + (opcional) faixa de acento à esquerda
function UI.Panel(parent, opts)
	opts = opts or {}
	local f = CreateFrame("Frame", opts.name, parent)
	local bg = UI.Rect(f, "BACKGROUND", opts.color or UI.COL.bg)
	bg:SetAllPoints()
	f.bg = bg
	if opts.border ~= false then addBorder(f, opts.borderColor or UI.COL.border) end
	if opts.accentStripe then
		local s = UI.Rect(f, "ARTWORK", opts.accentColor or UI.COL.accent)
		s:SetPoint("TOPLEFT"); s:SetPoint("BOTTOMLEFT"); s:SetWidth(3)
		f.stripe = s
	end
	return f
end

-- Barra de progresso (fundo + preenchimento)
function UI.Bar(parent, color)
	local bar = CreateFrame("Frame", nil, parent)
	local bg = UI.Rect(bar, "BACKGROUND", { 0, 0, 0, 0.45 }); bg:SetAllPoints()
	local fill = UI.Rect(bar, "ARTWORK", color or UI.COL.accent)
	fill:SetPoint("TOPLEFT"); fill:SetPoint("BOTTOMLEFT")
	fill:SetWidth(1)
	bar.fill = fill
	function bar:SetProgress(frac)
		frac = math.max(0, math.min(1, frac or 0))
		local w = self:GetWidth() * frac
		self.fill:SetWidth(math.max(1, w))
	end
	return bar
end

-- Botão "ghost" clean (sem arte da Blizzard)
function UI.Button(parent, text, w, h)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(w or 74, h or 22)
	local bg = UI.Rect(b, "BACKGROUND", UI.COL.panel); bg:SetAllPoints()
	addBorder(b, UI.COL.border)
	local fs = b:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 12, { num = true, color = UI.COL.muted })
	fs:SetPoint("CENTER")
	fs:SetText(text)
	b.text = fs
	b:SetScript("OnEnter", function()
		bg:SetColorTexture(unpackc(UI.COL.header))
		fs:SetTextColor(unpackc(UI.COL.active))
		for _, t in pairs(b._border) do t:SetColorTexture(unpackc(UI.COL.borderHi)) end
	end)
	b:SetScript("OnLeave", function()
		bg:SetColorTexture(unpackc(UI.COL.panel))
		fs:SetTextColor(unpackc(UI.COL.muted))
		for _, t in pairs(b._border) do t:SetColorTexture(unpackc(UI.COL.border)) end
	end)
	return b
end

-- Chip: rótulo compacto com fundo + ícone (glyph) opcional
function UI.Chip(parent, color, textColor)
	local c = CreateFrame("Frame", nil, parent)
	local bg = UI.Rect(c, "BACKGROUND", color or { 0, 0, 0, 0.35 }); bg:SetAllPoints()
	c.bg = bg
	c.icon = c:CreateTexture(nil, "OVERLAY"); c.icon:SetSize(11, 11)
	c.icon:SetPoint("LEFT", 5, 0); c.icon:Hide()
	local fs = c:CreateFontString(nil, "OVERLAY")
	UI.SetFont(fs, 11, { num = true, color = textColor or UI.COL.muted })
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
	local track = UI.Rect(b, "BACKGROUND", { 1, 1, 1, 0.14 }); track:SetAllPoints()
	addBorder(b, { 1, 1, 1, 0.10 })
	local knob = UI.Media(b, "dot", "OVERLAY"); knob:SetSize(18, 18)
	knob:SetPoint("LEFT", 3, 0); knob:SetVertexColor(0.96, 0.96, 0.96, 1)
	b.knob = knob
	function b:SetOn(on)
		self._on = on and true or false
		if self._on then track:SetColorTexture(unpackc(UI.COL.green))
		else track:SetColorTexture(1, 1, 1, 0.14) end
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
	local bg = UI.Rect(s, "BACKGROUND", { 0, 0, 0, 0.35 })
	bg:SetPoint("LEFT"); bg:SetPoint("RIGHT"); bg:SetHeight(6)
	local fill = UI.Rect(s, "ARTWORK", UI.COL.accent)
	fill:SetPoint("LEFT", bg, "LEFT"); fill:SetHeight(6); fill:SetWidth(1)
	local thumb = s:CreateTexture(nil, "OVERLAY")
	thumb:SetTexture(UI.MEDIA .. "dot"); thumb:SetSize(16, 16)
	thumb:SetVertexColor(0.96, 0.94, 0.86, 1)
	s:SetThumbTexture(thumb)
	s:SetScript("OnValueChanged", function(self, val)
		local frac = (maxV > minV) and (val - minV) / (maxV - minV) or 0
		fill:SetWidth(math.max(1, (bg:GetWidth() or 100) * frac))
		if onChange then onChange(val) end
	end)
	-- reaplica ao mostrar (largura só existe após o layout)
	s:SetScript("OnShow", function(self)
		local h = self:GetScript("OnValueChanged")
		if h then h(self, self:GetValue()) end
	end)
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

-- Ornamento de canto (linhas douradas em ⌐) — decorativo p/ janelas
function UI.CornerFlourish(frame)
	local C = UI.COL.accent
	for _, corner in ipairs({ "TOPLEFT", "TOPRIGHT" }) do
		local h = UI.Rect(frame, "OVERLAY", C); h:SetSize(16, 2)
		local v = UI.Rect(frame, "OVERLAY", C); v:SetSize(2, 16)
		local xo = corner == "TOPLEFT" and 6 or -6
		h:SetPoint(corner, xo, -6); v:SetPoint(corner, xo, -6)
		h:SetAlpha(0.7); v:SetAlpha(0.7)
	end
end
