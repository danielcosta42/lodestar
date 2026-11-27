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

-- O que o guia pede dos passos `from` em diante: os goals `collect`/`get` de objetivo de quest (`|q`: os sem quest são
-- o "pegue o item aqui", com id de objeto), ativos e não feitos, de itens negociáveis. Os passos à frente são julgados
-- pelo estado simulado: as quests que os passos de antes pegam e entregam (`sim`, o `haveq`/`completed` das condições).
-- Por item, o maior pedido de cada quest (o mesmo objetivo aparece em mais de um passo), somado entre quests; pedido
-- que não se sabe (goal sem número, quest fora do diário) marca o item como `semConta`.
-- fns = { ativo(step, sim), goalAtivo(goal, sim), feito(goal), negociavel(id) -> true | false | nil, precisa(goal) }.
-- -> { { id, nome, precisa, semConta }, ... } em ordem de nome; { [id] = true } dos itens ainda sem dados
function SH.Needs(steps, from, fns)
	local porItem, nomes, pend = {}, {}, {}
	local sim = { haveq = {}, completed = {} }
	for i = from or 1, #(steps or {}) do
		local st = steps[i]
		if not fns.ativo or fns.ativo(st, sim) then
			for _, g in ipairs(st.goals or {}) do
				if (g.verb == "collect" or g.verb == "get") and g.id and g.q and g.q.id
					and (not fns.goalAtivo or fns.goalAtivo(g, sim)) and not (fns.feito and fns.feito(g)) then
					local ok = fns.negociavel(g.id)
					if ok == nil then
						pend[g.id] = true
					elseif ok then
						local n = fns.precisa and fns.precisa(g)
						if n == nil then n = g.count end
						local it = porItem[g.id] or { qs = {} }
						porItem[g.id] = it
						if n then
							it.qs[g.q.id] = math.max(it.qs[g.q.id] or 0, n)
						else
							it.semConta = true
						end
						nomes[g.id] = nomes[g.id] or g.text
					end
				end
			end
			-- o que este passo pega e entrega vale para os de depois
			for _, g in ipairs(st.goals or {}) do
				if g.id and (not fns.goalAtivo or fns.goalAtivo(g, sim)) then
					if g.verb == "accept" then sim.haveq[g.id] = true
					elseif g.verb == "turnin" then sim.completed[g.id] = true end
				end
			end
		end
	end
	local out = {}
	for id, it in pairs(porItem) do
		local n = 0
		for _, c in pairs(it.qs) do n = n + c end
		out[#out + 1] = { id = id, nome = nomes[id], precisa = n, semConta = it.semConta }
	end
	table.sort(out, function(a, b)
		if (a.nome or "") ~= (b.nome or "") then return (a.nome or "") < (b.nome or "") end
		return a.id < b.id
	end)
	return out, pend
end

-- Tira o que já se tem (`tem(id)`: bolsa e banco) -> o que falta: { { id, nome, falta }, ... }. Item com pedido que
-- não se sabe fica, com `falta` nil ("?"), a não ser que o que se sabe já falte (aí a conta conhecida manda).
function SH.Missing(needs, tem)
	local out = {}
	for _, n in ipairs(needs or {}) do
		local falta = n.precisa - ((tem and tem(n.id)) or 0)
		if falta > 0 then
			out[#out + 1] = { id = n.id, nome = n.nome, falta = falta, semConta = n.semConta }
		elseif n.semConta then
			out[#out + 1] = { id = n.id, nome = n.nome, semConta = true }
		end
	end
	return out
end

-- O pedido do diário que é deste goal: com o índice do objetivo (`|q Q/n`), aquele; quest de um objetivo só, ele; senão
-- (o `|q Q` sozinho é a quest inteira) o único objetivo de item cujo texto tem o nome do item. `nomes`: o nome do item
-- no cliente e o do guia. -> numRequired | nil
function SH.NeedFromObjectives(objs, obj, nomes)
	if type(objs) ~= "table" then return nil end
	local function n(o) local v = o and tonumber(o.numRequired); return v and v > 0 and v or nil end
	if obj then return n(objs[obj]) end
	if #objs == 1 then return n(objs[1]) end
	local achado
	for _, o in ipairs(objs) do
		if o.type == "item" and type(o.text) == "string" then
			local t = o.text:lower()
			for _, nome in pairs(nomes or {}) do                     -- pairs: o nome do cliente pode faltar (nil)
				if type(nome) == "string" and nome ~= "" and t:find(nome:lower(), 1, true) then
					if achado and achado ~= o then return nil end      -- dois casam: não se sabe qual
					achado = o
				end
			end
		end
	end
	return n(achado)
end

-- "faltam 6" / "faltam 6+" (há pedido que não se sabe) / "faltam ?"
function SH.FaltaTexto(it, fmt)
	if not it.falta then return fmt:format("?") end
	return fmt:format(tostring(it.falta) .. (it.semConta and "+" or ""))
end

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local UI = ns.UI
local lista, assinatura, sujo = {}, nil, true
local painel
local negociaveis = {}         -- [id] = true | false: classe e vínculo não mudam

local function on() return ns.db and ns.db.shopping ~= false end

-- negociável pelo cliente, guardado por item; a classe (instantânea) antes do vínculo — o item de quest não pede dados
-- ao servidor. Sem dados ainda, pede e responde nil.
local function negociavel(id)
	if negociaveis[id] ~= nil then return negociaveis[id] end
	local classID = select(6, ns.ItemInfoInstant(id))
	if classID == 12 then negociaveis[id] = false; return false end
	local bind = select(14, ns.ItemInfo(id))
	if bind == nil then
		if C_Item and C_Item.RequestLoadItemDataByID then pcall(C_Item.RequestLoadItemDataByID, id) end
		return nil
	end
	negociaveis[id] = SH.Tradeable(classID, bind)
	return negociaveis[id]
end

local function tem(id) return ns.ItemCount(id, true) or 0 end

-- quanto o objetivo pede: o do diário (quest pegada) quando ele é deste goal, senão o número do guia
local function precisa(g)
	local QS = ns.QuestState
	if QS and QS.Objectives and g.q and g.q.id and ns.IsQuestInLog and ns.IsQuestInLog(g.q.id) then
		local need = SH.NeedFromObjectives(QS.Objectives(g.q.id), g.q.obj, { (ns.ItemInfo(g.id)), g.text })
		if need then return need end
	end
	return g.count
end

-- feito: a quest já entregue, ou o objetivo marcado à mão (o objetivo pronto e não entregue ainda tem os itens na
-- bolsa, que contam para o que as outras quests pedem)
local function feito(g)
	if g.q and g.q.id and ns.IsQuestDone and ns.IsQuestDone(g.q.id) then return true end
	return ns.char and ns.char.completedGoals and g._gkey and ns.char.completedGoals[g._gkey] and true or false
end

-- o nome do item no idioma do cliente (a casa de leilões busca por ele); sem cache, o do guia
local function nomeLocal(it) return (ns.ItemInfo(it.id)) or it.nome or tostring(it.id) end

local function refaz()
	local antes = lista
	local g = ns.currentGuide
	local nova = {}
	if g and ns.char and on() then
		local needs = SH.Needs(g.steps, ns.char.currentStep or 1, {
			ativo = function(st, sim) return ns:IsStepActive(st, sim) end,
			goalAtivo = function(gl, sim) return ns:IsGoalActive(gl, sim) end,
			feito = feito, negociavel = negociavel, precisa = precisa,
		})
		nova = SH.Missing(needs, tem)
	end
	local mudou = #nova ~= #antes
	for k = 1, #nova do
		local a, b = antes[k], nova[k]
		if not mudou and (not a or a.id ~= b.id or a.falta ~= b.falta or a.semConta ~= b.semConta) then mudou = true end
	end
	lista = nova
	if mudou and ns.Viewer then ns.Viewer:Refresh() end   -- a linha da janela do guia acompanha
end

function SH:List() return lista end
function SH:Dirty() sujo = true end

-- a busca exata do item na casa de leilões aberta (o Forever só tem a nova, Blizzard_AuctionHouseUI)
function SH.Search(it)
	local ah = AuctionHouseFrame
	if not (ah and ah.SearchBar and ah.SearchBar.SearchBox) then return false end
	if ah.SetDisplayMode and AuctionHouseFrameDisplayMode and AuctionHouseFrameDisplayMode.Buy then
		pcall(ah.SetDisplayMode, ah, AuctionHouseFrameDisplayMode.Buy)
	end
	ah.SearchBar.SearchBox:SetText('"' .. nomeLocal(it) .. '"')
	if ah.SearchBar.StartSearch then ah.SearchBar:StartSearch() end
	return true
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

-- o painel com a lista de agora (`refazer`: recalcula antes — ao abrir a casa de leilões); sem nada a comprar, some
function SH:ShowPanel(refazer)
	local ah = AuctionHouseFrame
	if refazer then pcall(refaz); sujo = false end
	if not (on() and #lista > 0 and ah and ah.IsShown and ah:IsShown()) then if painel then painel:Hide() end return end
	local p = build()
	p:ClearAllPoints(); p:SetPoint("TOPLEFT", ah, "TOPRIGHT", 8, 0)
	local n = math.min(#lista, LINHAS)
	local y = 34
	for i, r in ipairs(p.rows) do
		local it = lista[i]
		if it and i <= n then
			r.icon:SetTexture(ns.ItemIcon(it.id) or 134400)
			r.name:SetText(nomeLocal(it))
			r.count:SetText(SH.FaltaTexto(it, ns.L.SHOP_MISSING))
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
	local api = Auctionator and Auctionator.API and Auctionator.API.v1
	p.atr:SetShown(api ~= nil and api.CreateShoppingList ~= nil)
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
	if AuctionHouseFrame and AuctionHouseFrame.IsShown and AuctionHouseFrame:IsShown() then pcall(SH.ShowPanel, SH) end
end)
for _, ev in ipairs({ "BAG_UPDATE_DELAYED", "QUEST_LOG_UPDATE", "GET_ITEM_INFO_RECEIVED", "_GUIDE_LOADED" }) do
	ns:On(ev, function() sujo = true end)
end
ns:On("AUCTION_HOUSE_SHOW", function() C_Timer.After(0.1, function() pcall(SH.ShowPanel, SH, true) end) end)
ns:On("AUCTION_HOUSE_CLOSED", function() if painel then painel:Hide() end end)
