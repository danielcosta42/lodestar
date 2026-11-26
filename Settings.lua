--=============================================================================
-- Settings — as configurações, como página da Central (issue #93): seções num cartão à esquerda, conteúdo com
-- rolagem à direita. Tudo vale ao vivo; o que precisa de /reload (tema, desligar o TomTom) recarrega na hora.
--=============================================================================
local ADDON, ns = ...
local S = {}
ns.Settings = S
local UI = ns.UI

local SEC_W = 200                         -- cartão das seções
local CONTENT_W = 470                     -- largura útil do conteúdo (refeita no build pela largura da Central)
local CTRL_W = 110                        -- faixa do controle à direita de cada linha

local view, scroll, list, navBtns, pages, cur

-- o que só vale depois de recarregar a interface: recarrega já (pedir /reload no chat não serve)
local function reload()
	if C_UI and C_UI.Reload then C_UI.Reload() elseif ReloadUI then ReloadUI() end
end
S.Reload = reload

--------------------------------------------------------------------------------
-- linhas de opção
--------------------------------------------------------------------------------
-- altura de um texto com quebra de linha: a da fonte; sem ela (ainda sem layout),
-- uma estimativa por caractere — não por byte, que contava acento em dobro
local function alturaTexto(fs, texto, largura, porLinha)
	local h = fs.GetStringHeight and fs:GetStringHeight()
	if h and h > 0 then return h end
	local chars = select(2, texto:gsub("[^\128-\191]", ""))
	return math.max(1, math.ceil(chars * 6 / largura)) * porLinha
end

-- título + descrição; devolve o título e a altura ocupada
local function labelPair(page, title, desc)
	local y = page._y
	local t = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(t, 13, { color = UI.COL.active })
	t:SetPoint("TOPLEFT", 0, -y)
	t:SetText(title)
	local h = 17
	if desc and desc ~= "" then
		local d = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(d, 11, { color = UI.COL.muted })
		d:SetPoint("TOPLEFT", 0, -y - 19)
		d:SetWidth(CONTENT_W - CTRL_W)            -- nunca invade o controle
		d:SetJustifyH("LEFT"); d:SetWordWrap(true)
		d:SetText(desc)
		h = 19 + alturaTexto(d, desc, CONTENT_W - CTRL_W, 13)
	end
	return t, h
end

-- fecha a linha: espaço embaixo e um fio separando da próxima
local function fimDeLinha(page, h)
	page._y = page._y + math.max(h, 26) + 10
	local sep = UI.Rect(page, "ARTWORK", UI.COL.line)
	sep:SetPoint("TOPLEFT", 0, -page._y); sep:SetSize(CONTENT_W, 1)
	page._y = page._y + 11
end

local function switchRow(page, title, desc, get, set, optin)
	local t, h = labelPair(page, title, desc)
	if optin then   -- selo "opcional": desligado por padrão de propósito
		local b = page:CreateFontString(nil, "OVERLAY")
		UI.SetFont(b, 10, { num = true, color = UI.COL.amber })
		b:SetPoint("LEFT", t, "RIGHT", 8, 0)
		b:SetText("• " .. ns.L.SET_OPTIN)
	end
	local sw = UI.Switch(page, function(on) set(on) end)
	sw:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	sw:SetOn(get())
	fimDeLinha(page, h)
	return sw
end

-- escolha entre poucas opções (controle segmentado à direita): items = { { rótulo, valor } }
local function segRow(page, title, desc, items, get, set)
	local _, h = labelPair(page, title, desc)
	local seg = UI.Segmented(page, items, set)
	seg:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y + 3)
	seg:Select(get())
	fimDeLinha(page, h)
	return seg
end

local function buttonRow(page, title, desc, btnText, onClick)
	local _, h = labelPair(page, title, desc)
	local b = UI.Button(page, btnText, 96, 24)
	b:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	b:SetScript("OnClick", onClick)
	fimDeLinha(page, h)
end

local function sliderRow(page, title, desc, minV, maxV, step, get, set, fmt)
	local _, h = labelPair(page, title, desc)
	local val = page:CreateFontString(nil, "OVERLAY")
	UI.SetFont(val, 13, { num = true, color = UI.COL.accent })
	val:SetPoint("TOPRIGHT", page, "TOPLEFT", CONTENT_W, -page._y)
	local sl = UI.Slider(page, minV, maxV, step, function(v)
		val:SetText((fmt or "%d"):format(v))
		set(v)
	end)
	sl:SetPoint("TOPLEFT", 0, -page._y - h - 8)
	sl:SetWidth(CONTENT_W)
	local function sync()
		local v = get()
		if sl:GetValue() ~= v then sl:SetValue(v) end
		val:SetText((fmt or "%d"):format(v))
	end
	sync()
	sl:HookScript("OnShow", sync)                  -- valor atual, não o de quando a página nasceu
	fimDeLinha(page, h + 26)
end

--------------------------------------------------------------------------------
-- seções
--------------------------------------------------------------------------------
local function fillAuto(p)
	local L = ns.L
	switchRow(p, L.SET_ACCEPT, L.SET_ACCEPT_D,
		function() return ns.db.autoAccept end, function(v) ns.db.autoAccept = v end)
	switchRow(p, L.SET_TURNIN, L.SET_TURNIN_D,
		function() return ns.db.autoTurnin end, function(v) ns.db.autoTurnin = v end)
	switchRow(p, L.SET_REWARD, L.SET_REWARD_D,
		function() return ns.db.autoReward end, function(v) ns.db.autoReward = v end, true)
	switchRow(p, L.SET_GOSSIP, L.SET_GOSSIP_D,
		function() return ns.db.autoGossip end, function(v) ns.db.autoGossip = v end)
	switchRow(p, L.SET_SKIP, L.SET_SKIP_D,
		function() return ns.db.autoSkip ~= false end, function(v) ns.db.autoSkip = v end)
	switchRow(p, L.SET_GREY, L.SET_GREY_D,
		function() return ns.db.skipGrey ~= false end,
		function(v) ns.db.skipGrey = v; if ns.QuestState then ns.QuestState:RefreshGrey() end end)
	switchRow(p, L.SET_REPAIR, L.SET_REPAIR_D,
		function() return ns.db.autoRepair end, function(v) ns.db.autoRepair = v end)
	switchRow(p, L.SET_REPAIR_GUILD, L.SET_REPAIR_GUILD_D,
		function() return ns.db.repairGuild ~= false end, function(v) ns.db.repairGuild = v end)
	switchRow(p, L.SET_SELL, L.SET_SELL_D,
		function() return ns.db.autoSell end, function(v) ns.db.autoSell = v end)
	switchRow(p, L.SET_AUTOFLY, L.SET_AUTOFLY_D,
		function() return ns.db.autoFlight == true end, function(v) ns.db.autoFlight = v end, true)
	switchRow(p, L.SET_TIMERS, L.SET_TIMERS_D,
		function() return ns.db.timerAlerts ~= false end, function(v) ns.db.timerAlerts = v end)
	switchRow(p, L.SET_INSTANCE, L.SET_INSTANCE_D,
		function() return ns.db.hideInInstance ~= false end,
		function(v) ns.db.hideInInstance = v; if ns.Instance then ns.Instance:Apply() end end)
end

local function fillNav(p)
	local L = ns.L
	switchRow(p, L.SET_ARROW, L.SET_ARROW_D,
		function() return ns.db.arrow.enabled end,
		function(v) ns.db.arrow.enabled = v; if ns.Waypoint then ns.Waypoint:Update() end end)
	switchRow(p, L.SET_TRAIL, L.SET_TRAIL_D,
		function() return ns.db.trail end, function(v) ns.db.trail = v end)
	switchRow(p, L.SET_COMPASS, L.SET_COMPASS_D,
		function() return ns.db.compass.enabled end, function(v) ns.db.compass.enabled = v end)
	switchRow(p, L.SET_COMPASS_LOCK, L.SET_COMPASS_LOCK_D,
		function() return ns.db.compass.locked end,
		function(v) ns.db.compass.locked = v; if ns.Compass then ns.Compass:ApplyDisplay() end end)
	sliderRow(p, L.SET_COMPASS_SCALE, "", 50, 200, 5,
		function() return (ns.db.compass.scale or 1) * 100 end,
		function(v) ns.db.compass.scale = v / 100; if ns.Compass then ns.Compass:ApplyDisplay() end end, "%d%%")
	switchRow(p, L.SET_MAPPINS, L.SET_MAPPINS_D,
		function() return ns.db.guideMap end, function(v) ns.db.guideMap = v end)
	switchRow(p, L.SET_CORPSE, L.SET_CORPSE_D,
		function() return ns.db.corpseRoute ~= false end,
		function(v) ns.db.corpseRoute = v; if ns.Destinations.Sync then ns.Destinations.Sync() end end)
	sliderRow(p, L.SET_MMRANGE, L.SET_MMRANGE_D, 50, 200, 5,
		function() return (ns.db.minimap.rangeMult or 1) * 100 end,
		function(v) ns.db.minimap.rangeMult = v / 100 end, "%d%%")
	switchRow(p, L.SET_TOMTOM, L.SET_TOMTOM_D,
		function() return ns.db.tomtomShim == true end,
		function(v)
			ns.db.tomtomShim = v
			if v then if ns.TomTomShim then ns.TomTomShim:Install() end else reload() end
		end, true)
end

local function fillHud(p)
	local L = ns.L
	S.themeSeg = segRow(p, L.SET_THEME, L.SET_THEME_D, { { L.SET_THEME_LIGHT, "light" }, { L.SET_THEME_DARK, "dark" } },
		function() return ns.db.theme == "dark" and "dark" or "light" end,
		function(v) if v ~= (ns.db.theme or "light") then ns.db.theme = v; reload() end end)
	sliderRow(p, L.SET_SCALE, "", 70, 140, 5,
		function() return (ns.db.viewer.scale or 1) * 100 end,
		function(v) ns.db.viewer.scale = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	sliderRow(p, L.SET_ALPHA, "", 30, 100, 5,
		function() return (ns.db.viewer.alpha or 1) * 100 end,
		function(v) ns.db.viewer.alpha = v / 100; if ns.Viewer then ns.Viewer:ApplyDisplay() end end, "%d%%")
	switchRow(p, L.SET_XPHUD, L.SET_XPHUD_D,
		function() return ns.db.xpHud end,
		function(v) ns.db.xpHud = v; if ns.XPHud then ns.XPHud:Update() end end)
	switchRow(p, L.SET_SPLITS, L.SET_SPLITS_D,
		function() return ns.db.splits.enabled end,
		function(v) if v ~= ns.db.splits.enabled and ns.Splits then ns.Splits:Toggle() end end)
	sliderRow(p, L.SET_SPLITS_SCALE, "", 70, 160, 5,
		function() return (ns.db.splits.scale or 1) * 100 end,
		function(v) ns.db.splits.scale = v / 100; if ns.Splits then ns.Splits:ApplyScale() end end, "%d%%")
	switchRow(p, L.SET_COORDS, L.SET_COORDS_D,
		function() return ns.db.coords end,
		function(v) ns.db.coords = v; if ns.Coords then ns.Coords.Update() end end)
	switchRow(p, L.SET_MARK, L.SET_MARK_D,
		function() return ns.db.markTargets end,
		function(v) ns.db.markTargets = v; if not v and ns.TargetMarker then ns.TargetMarker:RefreshPlates() end end)
	switchRow(p, L.SET_QITEM, L.SET_QITEM_D,
		function() return ns.db.questItem end,
		function(v) ns.db.questItem = v; if ns.QuestItem then ns.QuestItem.Update() end end)
	switchRow(p, L.SET_MOBWARN, L.SET_MOBWARN_D,
		function() return ns.db.mobWarning end, function(v) ns.db.mobWarning = v end)
	switchRow(p, L.SET_GEAR, L.SET_GEAR_D,
		function() return ns.db.gearAdvisor end, function(v) ns.db.gearAdvisor = v end)
	switchRow(p, L.SET_NEARBY, L.SET_NEARBY_D,
		function() return ns.db.nearby ~= false end,
		function(v) ns.db.nearby = v; if ns.Nearby then ns.Nearby.Scan() end end)
	switchRow(p, L.SET_TARGETBTN, L.SET_TARGETBTN_D,
		function() return ns.db.targetButton ~= false end,
		function(v) ns.db.targetButton = v; if ns.TargetButton then ns.TargetButton.Apply() end end)
	switchRow(p, L.SET_MARKTARGET, L.SET_MARKTARGET_D,
		function() return ns.db.markTarget ~= false end, function(v) ns.db.markTarget = v end)
	switchRow(p, L.SET_RARES, L.SET_RARES_D,
		function() return ns.db.rareAlerts ~= false end, function(v) ns.db.rareAlerts = v end)
	switchRow(p, L.SET_COLLECT, L.SET_COLLECT_D,
		function() return ns.db.collectPins ~= false end, function(v) ns.db.collectPins = v end)
	switchRow(p, L.SET_GEARTIPS, L.SET_GEARTIPS_D,
		function() return ns.db.gearTips ~= false end, function(v) ns.db.gearTips = v end)
	switchRow(p, L.SET_TOASTS, L.SET_TOASTS_D,
		function() return ns.db.toastsEnabled end, function(v) ns.db.toastsEnabled = v end)
end

local function fillGroup(p)
	local L = ns.L
	switchRow(p, L.SET_BUDDY, L.SET_BUDDY_D,
		function() return ns.db.eliteBuddy == true end, function(v) ns.db.eliteBuddy = v end, true)
	switchRow(p, L.SET_SHARE, L.SET_SHARE_D,
		function() return ns.db.autoShareQuest end, function(v) ns.db.autoShareQuest = v end, true)
	switchRow(p, L.SET_PARTYSYNC, L.SET_PARTYSYNC_D,
		function() return ns.db.partySync ~= false end, function(v) ns.db.partySync = v end)
	switchRow(p, L.SET_PARTYTELL, L.SET_PARTYTELL_D,
		function() return ns.db.partyTell == true end, function(v) ns.db.partyTell = v end, true)
	switchRow(p, L.SET_SHAREQ, L.SET_SHAREQ_D,
		function() return ns.db.shareQuests end, function(v) ns.db.shareQuests = v end, true)
	switchRow(p, L.SET_DANGER, L.SET_DANGER_D,
		function() return ns.db.dangerWarn ~= false end, function(v) ns.db.dangerWarn = v end)
	switchRow(p, L.SET_DANGER_SHARE, L.SET_DANGER_SHARE_D,
		function() return ns.db.dangerShare == true end, function(v) ns.db.dangerShare = v end, true)
	switchRow(p, L.SET_CARD, L.SET_CARD_D,
		function() return ns.db.reportCard end, function(v) ns.db.reportCard = v end)
	switchRow(p, L.SET_CARD_EVERY, L.SET_CARD_EVERY_D,
		function() return ns.db.cardEvery end, function(v) ns.db.cardEvery = v end)
	switchRow(p, L.SET_CARD_GUILD, L.SET_CARD_GUILD_D,
		function() return ns.db.cardAskGuild ~= false end, function(v) ns.db.cardAskGuild = v end)
	switchRow(p, L.SET_RACE_CHAT, L.SET_RACE_CHAT_D,
		function() return ns.db.raceChat ~= false end, function(v) ns.db.raceChat = v end)
	switchRow(p, L.SET_RACE_TOAST, L.SET_RACE_TOAST_D,
		function() return ns.db.raceToasts ~= false end, function(v) ns.db.raceToasts = v end)
end

-- as janelas que só abriam pelo /ls
local function fillTools(p)
	local L = ns.L
	buttonRow(p, L.SET_LIBRARY, L.SET_LIBRARY_D,
		L.SET_OPEN, function() if ns.GuideMenu then ns.GuideMenu:Open() end end)
	buttonRow(p, L.SET_RETRO, L.SET_RETRO_D,
		L.SET_OPEN, function() if ns.Retro then ns.Retro:Show() end end)
	buttonRow(p, L.SET_RACE, L.SET_RACE_D,
		L.SET_OPEN, function() if ns.RacePanel then ns.RacePanel:Toggle() end end)
	buttonRow(p, L.SET_GATHER, L.SET_GATHER_D,
		L.SET_OPEN, function() if ns.Gather then ns.Gather:Open() end end)
	buttonRow(p, L.SET_CONS, L.SET_CONS_D,
		L.SET_OPEN, function() if ns.Consumables then ns.Consumables:Toggle() end end)
	buttonRow(p, L.SET_CARDNOW, L.SET_CARDNOW_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("card") end)
	buttonRow(p, L.SET_TOUR, L.SET_TOUR_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("intro") end)
	buttonRow(p, L.SET_TIDY, L.SET_TIDY_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("diario") end)
	buttonRow(p, L.SET_REPORT, L.SET_REPORT_D, L.SET_OPEN, function() SlashCmdList.LODESTAR("report") end)
end

local function fillAdvanced(p)
	local L = ns.L
	switchRow(p, L.SET_DEBUG, L.SET_DEBUG_D,
		function() return ns.db.debug end, function(v) ns.db.debug = v end)
	buttonRow(p, L.SET_TDEBUG, L.SET_TDEBUG_D, L.SET_RUN, function() SlashCmdList.LODESTAR("tdebug") end)
end

local SECOES = {
	{ label = ns.L.SET_SEC_AUTO, glyph = "check", fill = fillAuto },
	{ label = ns.L.SET_SEC_NAV, glyph = "seta-rota", fill = fillNav },
	{ label = ns.L.SET_SEC_HUD, glyph = "losango", fill = fillHud },
	{ label = ns.L.SET_SEC_GROUP, glyph = "estrela", fill = fillGroup },
	{ label = ns.L.SET_SEC_TOOLS, glyph = "livro", fill = fillTools },
	{ label = ns.L.SET_TAB_ADV, glyph = "config", fill = fillAdvanced },
}

--------------------------------------------------------------------------------
-- A página da Central
--------------------------------------------------------------------------------
local PAGE = { label = ns.L.SET_TITLE, glyph = "config", order = 99, hidden = true }

local function version()
	return "v" .. tostring(ns.version or "?"):gsub("^v", "")
end

PAGE.build = function(page, H)
	local C, L = UI.COL, ns.L
	local cw = H:ContentWidth() - 8
	H.PageTitle(page, L.SET_TITLE, version())
	-- seções
	local secCard = UI.Card(page, { color = C.card })
	secCard:SetPoint("TOPLEFT", 0, -52); secCard:SetPoint("BOTTOM", page, "BOTTOM", 0, 0); secCard:SetWidth(SEC_W)
	-- conteúdo
	view = UI.Card(page, { color = C.card })
	view:SetPoint("TOPLEFT", secCard, "TOPRIGHT", 14, 0); view:SetPoint("BOTTOM", page, "BOTTOM", 0, 0)
	view:SetWidth(cw - SEC_W - 14)
	CONTENT_W = cw - SEC_W - 14 - 22 - 26
	scroll, list = UI.Scroll(view)
	scroll:SetPoint("TOPLEFT", 22, -18); scroll:SetPoint("BOTTOMRIGHT", -26, 12)

	navBtns, pages = {}, {}
	for i, def in ipairs(SECOES) do
		local sp = CreateFrame("Frame", nil, list)
		sp:SetPoint("TOPLEFT"); sp:SetWidth(CONTENT_W)
		local head = sp:CreateFontString(nil, "OVERLAY")
		UI.SetFont(head, 16, { title = true, color = C.accent })
		head:SetPoint("TOPLEFT", 0, 0); head:SetText(def.label)
		sp._y = 34
		def.fill(sp)
		sp:SetHeight(sp._y)
		sp:Hide()
		pages[i] = sp
		local b = UI.NavItem(secCard, def.label, def.glyph, function() S:SelectSection(i) end)
		b:SetPoint("TOPLEFT", secCard, "TOPLEFT", 8, -10 - (i - 1) * 34); b:SetPoint("RIGHT", secCard, "RIGHT", -8, 0)
		navBtns[i] = b
	end
	S:SelectSection(cur or 1)
end

PAGE.refresh = function()
	-- os controles leem o valor de agora (um atalho ou o /ls pode ter mudado algo)
	if pages and pages[cur] then pages[cur]:Hide(); pages[cur]:Show() end
end

function S:SelectSection(i)
	cur = i
	if not pages then return end
	for j, sp in ipairs(pages) do sp:SetShown(j == i) end
	for j, b in ipairs(navBtns) do b:SetActive(j == i) end
	list:SetHeight(math.max(1, pages[i]._y))
	scroll:SetVerticalScroll(0)
	scroll.Sync()
end

local function onSettings() return ns.Hub and ns.Hub:IsShown() and ns.Hub:Current() == "settings" end
function S:Show() if ns.Hub then ns.Hub:Show("settings") end end
function S:Hide() if onSettings() then ns.Hub:Hide() end end
function S:Toggle() if onSettings() then ns.Hub:Hide() else S:Show() end end

if ns.Hub then ns.Hub:RegisterPage("settings", PAGE) end
