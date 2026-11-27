--=============================================================================
-- Shopping — as compras do guia na casa de leilões (#134). Junta os itens de coleta (`collect`/`get`) que o resto do
-- guia atual pede e que se negociam (não são da classe "quest" e não se prendem ao pegar), tira o que já está na
-- bolsa e no banco, e oferece:
--   * na janela do guia, uma linha "N itens do guia na casa de leilões" que leva à casa de leilões mais perto;
--   * na casa de leilões, um painel com cada item, quantos faltam e o botão "Buscar" (busca exata pelo nome no idioma
--     do cliente; quem compra é o jogador); com o Auctionator, a lista de compras "Lodestar" nele.
-- No topo, o núcleo puro (testado fora do jogo). Abaixo, o jogo.
--=============================================================================
local ADDON, ns = ...
local SH = {}
ns.Shopping = SH

-- Negociável pela classe e pelo vínculo (C_Item.GetItemInfo, 14º retorno): não é de quest (classe 12) e não se prende
-- ao pegar — nenhum (0), ao equipar (2) ou ao usar (3). Sem o vínculo ainda (item fora do cache): nil.
function SH.Tradeable(classID, bind)
	if classID == 12 then return false end
	if bind == nil then return nil end
	return bind == 0 or bind == 2 or bind == 3
end

-- O que o guia pede dos passos `from` em diante: os goals `collect`/`get` com item, ativos e não feitos, de itens
-- negociáveis. Por item, o maior pedido de cada quest (o mesmo objetivo aparece em mais de um passo), somado entre
-- quests. fns = { ativo(step), goalAtivo(goal), feito(goal), negociavel(id) -> true | false | nil }.
-- -> { { id, nome, precisa }, ... } em ordem de nome; { [id] = true } dos itens ainda sem dados (pedir e refazer)
function SH.Needs(steps, from, fns)
	local porItem, nomes, pend = {}, {}, {}
	for i = from or 1, #(steps or {}) do
		local st = steps[i]
		if not fns.ativo or fns.ativo(st) then
			for _, g in ipairs(st.goals or {}) do
				if (g.verb == "collect" or g.verb == "get") and g.id and (not fns.goalAtivo or fns.goalAtivo(g))
					and not (fns.feito and fns.feito(g)) then
					local ok = fns.negociavel(g.id)
					if ok == nil then
						pend[g.id] = true
					elseif ok then
						local chave = g.q and g.q.id or ("passo" .. i)
						porItem[g.id] = porItem[g.id] or {}
						porItem[g.id][chave] = math.max(porItem[g.id][chave] or 0, g.count or 1)
						nomes[g.id] = nomes[g.id] or g.text
					end
				end
			end
		end
	end
	local out = {}
	for id, qs in pairs(porItem) do
		local n = 0
		for _, c in pairs(qs) do n = n + c end
		out[#out + 1] = { id = id, nome = nomes[id], precisa = n }
	end
	table.sort(out, function(a, b)
		if (a.nome or "") ~= (b.nome or "") then return (a.nome or "") < (b.nome or "") end
		return a.id < b.id
	end)
	return out, pend
end

-- Tira o que já se tem (`tem(id)`: bolsa e banco) -> só o que falta: { { id, nome, falta }, ... }
function SH.Missing(needs, tem)
	local out = {}
	for _, n in ipairs(needs or {}) do
		local falta = n.precisa - ((tem and tem(n.id)) or 0)
		if falta > 0 then out[#out + 1] = { id = n.id, nome = n.nome, falta = falta } end
	end
	return out
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local UI = ns.UI
local lista, assinatura, sujo = {}, nil, true
local painel

local function on() return ns.db and ns.db.shopping ~= false end

local function itemInfo(id)
	local f = (C_Item and C_Item.GetItemInfo) or GetItemInfo
	if not f then return nil end
	return f(id)
end

-- negociável pelo cliente; sem dados ainda, pede e responde nil
local function negociavel(id)
	local inst = (C_Item and C_Item.GetItemInfoInstant) or GetItemInfoInstant
	local classID = inst and select(6, inst(id))
	local bind = select(14, itemInfo(id))
	if bind == nil and classID ~= 12 and C_Item and C_Item.RequestLoadItemDataByID then
		pcall(C_Item.RequestLoadItemDataByID, id)
	end
	return SH.Tradeable(classID, bind)
end

local function tem(id)
	if C_Item and C_Item.GetItemCount then return C_Item.GetItemCount(id, true) or 0 end
	return GetItemCount and GetItemCount(id, true) or 0
end

-- o nome do item no idioma do cliente (a casa de leilões busca por ele); sem cache, o do guia
local function nomeLocal(it) return (itemInfo(it.id)) or it.nome or tostring(it.id) end

local function refaz()
	local antes = #lista
	local g = ns.currentGuide
	if not (g and ns.char and on()) then
		lista = {}
		if antes > 0 and ns.Viewer then ns.Viewer:Refresh() end
		return
	end
	local needs = SH.Needs(g.steps, ns.char.currentStep or 1, {
		ativo = function(st) return ns:IsStepActive(st) end,
		goalAtivo = function(gl) return ns:IsGoalActive(gl) end,
		feito = function(gl) return ns:IsGoalComplete(gl) end,
		negociavel = negociavel,
	})
	local nova = SH.Missing(needs, tem)
	local mudou = #nova ~= antes
	for i = 1, #nova do
		if not mudou and lista[i] and (lista[i].id ~= nova[i].id or lista[i].falta ~= nova[i].falta) then mudou = true end
	end
	lista = nova
	if mudou and ns.Viewer then ns.Viewer:Refresh() end   -- a linha da janela do guia acompanha
end

function SH:List() return lista end
function SH:Dirty() sujo = true end

-- a busca exata do item na casa de leilões aberta (a nova e a antiga)
function SH.Search(it)
	local nome = nomeLocal(it)
	local ah = AuctionHouseFrame
	if ah and ah.SearchBar and ah.SearchBar.SearchBox then
		if ah.SetDisplayMode and AuctionHouseFrameDisplayMode and AuctionHouseFrameDisplayMode.Buy then
			pcall(ah.SetDisplayMode, ah, AuctionHouseFrameDisplayMode.Buy)
		end
		ah.SearchBar.SearchBox:SetText('"' .. nome .. '"')
		if ah.SearchBar.StartSearch then ah.SearchBar:StartSearch() end
		return true
	end
	if BrowseName and AuctionFrameBrowse_Search then
		BrowseName:SetText(nome)
		if IsUsableCheckButton then IsUsableCheckButton:SetChecked(false) end
		AuctionFrameBrowse_Search()
		return true
	end
	return false
end

-- a lista de compras "Lodestar" no Auctionator (API v1), se ele estiver instalado
function SH.Auctionator()
	local api = Auctionator and Auctionator.API and Auctionator.API.v1
	if not (api and api.CreateShoppingList) then return false end
	local termos = {}
	for _, it in ipairs(lista) do
		local nome, termo = nomeLocal(it), nil
		if api.ConvertToSearchString then
			local ok, s = pcall(api.ConvertToSearchString, "Lodestar", { searchString = nome, isExact = true, quantity = it.falta })
			termo = ok and s or nil
		end
		termos[#termos + 1] = termo or nome
	end
	local ok = pcall(api.CreateShoppingList, "Lodestar", "Lodestar", termos)
	if ok then ns:Print(ns.L.SHOP_AUCTIONATOR_OK) end
	return ok
end

-- o painel ao lado da casa de leilões
local LINHAS = 10
local function build()
	if painel then return painel end
	local C = UI.COL
	painel = UI.Panel(UIParent, { name = "LodestarShopping", accentStripe = true })
	painel:SetSize(250, 60)
	painel:SetFrameStrata("HIGH")
	painel.title = UI.Text(painel, 13, C.active, { wrap = false })
	painel.title:SetPoint("TOPLEFT", 16, -12)
	painel.title:SetText(ns.L.SHOP_TITLE)
	painel.rows = {}
	for i = 1, LINHAS do
		local r = CreateFrame("Frame", nil, painel)
		r:SetSize(222, 26)
		r:SetPoint("TOPLEFT", 14, -34 - (i - 1) * 28)
		r.icon = r:CreateTexture(nil, "ARTWORK"); r.icon:SetSize(20, 20); r.icon:SetPoint("LEFT")
		r.name = UI.Text(r, 12, C.active, { wrap = false })
		r.name:SetPoint("LEFT", r.icon, "RIGHT", 6, 0)
		r.count = UI.Text(r, 11, C.dim, { num = true, wrap = false })
		r.btn = UI.Button(r, ns.L.SHOP_SEARCH, 58, 20)
		r.btn:SetPoint("RIGHT")
		r.count:SetPoint("RIGHT", r.btn, "LEFT", -6, 0)
		r.name:SetPoint("RIGHT", r.count, "LEFT", -6, 0)
		r.btn:SetScript("OnClick", function(self) if self._it then SH.Search(self._it) end end)
		painel.rows[i] = r
	end
	painel.atr = UI.Button(painel, ns.L.SHOP_AUCTIONATOR, 222, 22)
	painel.atr:SetScript("OnClick", function() SH.Auctionator() end)
	painel.more = UI.Text(painel, 11, C.dim, { num = true, wrap = false })
	painel:Hide()
	return painel
end

local function ahFrame() return AuctionHouseFrame or AuctionFrame end

function SH:ShowPanel()
	local ah = ahFrame()
	if not (on() and ah and ah.IsShown and ah:IsShown()) then if painel then painel:Hide() end return end
	refaz(); sujo = false
	local p = build()
	p:ClearAllPoints(); p:SetPoint("TOPLEFT", ah, "TOPRIGHT", 8, 0)
	local n = math.min(#lista, LINHAS)
	local y = 34
	for i, r in ipairs(p.rows) do
		local it = lista[i]
		if it and i <= n then
			r.icon:SetTexture((C_Item and C_Item.GetItemIconByID and C_Item.GetItemIconByID(it.id)) or 134400)
			r.name:SetText(nomeLocal(it))
			r.count:SetText(ns.L.SHOP_MISSING:format(it.falta))
			r.btn._it = it
			r:Show()
			y = y + 28
		else
			r:Hide()
		end
	end
	p.more:SetShown(#lista > n)
	if #lista > n then
		p.more:ClearAllPoints(); p.more:SetPoint("TOPLEFT", 16, -y); p.more:SetText(ns.L.NA_MORE:format(#lista - n))
		y = y + 18
	end
	if n == 0 then
		p.more:Show(); p.more:ClearAllPoints(); p.more:SetPoint("TOPLEFT", 16, -y); p.more:SetText(ns.L.SHOP_NONE)
		y = y + 18
	end
	local api = Auctionator and Auctionator.API and Auctionator.API.v1
	p.atr:SetShown(n > 0 and api ~= nil and api.CreateShoppingList ~= nil)
	if p.atr:IsShown() then p.atr:ClearAllPoints(); p.atr:SetPoint("TOPLEFT", 14, -(y + 4)); y = y + 30 end
	p:SetHeight(y + 12)
	p:Show()
end

-- a linha da janela do guia leva à casa de leilões mais perto (como parada antes do passo; Shift: direto)
function SH:GoTo()
	if ns.Services then ns.Services:GoTo("auction", nil, nil, IsShiftKeyDown and IsShiftKeyDown()) end
end

-- refaz quando algo muda (passo, guia, bolsa, diário, dados de item chegando), no máximo uma vez por segundo
ns:Every(1, function()
	local g = ns.currentGuide
	local sig = tostring(g and g.key) .. ":" .. tostring(ns.char and ns.char.currentStep)
	if sig ~= assinatura then assinatura, sujo = sig, true end
	if not sujo then return end
	sujo = false
	pcall(refaz)
	if painel and painel:IsShown() then pcall(SH.ShowPanel, SH) end
end)
for _, ev in ipairs({ "BAG_UPDATE_DELAYED", "QUEST_LOG_UPDATE", "GET_ITEM_INFO_RECEIVED", "_GUIDE_LOADED" }) do
	ns:On(ev, function() sujo = true end)
end
ns:On("AUCTION_HOUSE_SHOW", function() C_Timer.After(0.1, function() pcall(SH.ShowPanel, SH) end) end)
ns:On("AUCTION_HOUSE_CLOSED", function() if painel then painel:Hide() end end)
