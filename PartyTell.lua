--=============================================================================
-- PartyTell — avisar o grupo (specs/revamp-polestar, R13; ligado, desliga nas Configurações, #127): quando uma quest
-- do diário fica pronta para entregar, uma linha no chat do grupo, "Lodestar: [Quest] pronta para entregar"; quando
-- um objetivo dela fecha, "Lodestar: [Quest] · 8/8 Kobold Vermin slain" (o texto do objetivo como o jogo dá). Só em grupo (não raide, não campo de
-- batalha); uma vez por quest e por objetivo; nada no login, no /reload nem para o que já estava feito ao entrar no
-- grupo. No topo, o núcleo puro (Ready, Objectives; testado fora do jogo). Abaixo, o envio.
--=============================================================================
local ADDON, ns = ...
local P = {}
ns.PartyTell = P

-- As quests que passaram de "por fazer" a "pronta" entre dois retratos do diário ({ [id] = pronta }). Quest que não
-- estava no retrato de antes (aceita agora, login) não conta: ela já chegou pronta.
function P.Ready(before, now)
	local out = {}
	if not (before and now) then return out end
	for id, done in pairs(now) do
		if done and before[id] == false then out[#out + 1] = id end
	end
	table.sort(out)
	return out
end

-- Os objetivos que passaram de "por fazer" a "feito" entre dois retratos ({ [quest] = { [i] = feito } }), menos os
-- das quests que ficaram prontas agora (a linha de pronta já diz). Quest ou objetivo que não estava no retrato de
-- antes não conta. -> { { quest, i }, ... } em ordem
function P.Objectives(before, now, ready)
	local out, pronta = {}, {}
	for _, q in ipairs(ready or {}) do pronta[q] = true end
	if not (before and now) then return out end
	for q, objs in pairs(now) do
		local antes = before[q]
		if antes and not pronta[q] then
			for i, feito in pairs(objs) do
				if feito and antes[i] == false then out[#out + 1] = { q, i } end
			end
		end
	end
	table.sort(out, function(a, b) return a[1] < b[1] or (a[1] == b[1] and a[2] < b[2]) end)
	return out
end

P.MAX_LINHAS = 3          -- por atualização do diário: o grupo não é inundado

--------------------------------------------------------------------------------
-- No jogo
--------------------------------------------------------------------------------
if not ns.On then return end

local last, lastObj, sent, sentObj = nil, nil, {}, {}
-- o envio do chat mudou de lugar entre versões do cliente (o mesmo de Race.lua e ReportCard.lua)
local function send(msg, canal)
	local f = (C_ChatInfo and C_ChatInfo.SendChatMessage) or SendChatMessage
	if not f then error("sem envio de chat") end
	return f(msg, canal)
end

-- retrato do diário: { [quest] = pronta }, { [quest] = { [i] = feito } }, { [quest] = { [i] = texto } }
local function snapshot()
	local t, o, txt, QL = {}, {}, {}, C_QuestLog or {}
	if not (QL.GetNumQuestLogEntries and QL.GetInfo and QL.IsComplete) then return t, o, txt end
	for i = 1, QL.GetNumQuestLogEntries() or 0 do
		local info = QL.GetInfo(i)
		local q = info and not info.isHeader and info.questID
		if q then
			t[q] = QL.IsComplete(q) and true or false
			local objs = QL.GetQuestObjectives and QL.GetQuestObjectives(q)
			if type(objs) == "table" then
				o[q], txt[q] = {}, {}
				-- objetivo sem texto (os dados do servidor ainda chegando): desconhecido, não "por fazer" — senão o
				-- retrato seguinte pareceria um objetivo que acabou de fechar
				for j, ob in ipairs(objs) do
					if ob.text and ob.text ~= "" then o[q][j], txt[q][j] = ob.finished and true or false, ob.text end
				end
			end
		end
	end
	return t, o, txt
end

local function inParty()
	-- o grupo de casa: num grupo só de instância o canal PARTY não existe (seria INSTANCE_CHAT)
	local home = LE_PARTY_CATEGORY_HOME or 1
	if not (IsInGroup and IsInGroup(home)) or (IsInRaid and IsInRaid()) then return false end
	local inInst, kind = IsInInstance()
	return not (inInst and (kind == "pvp" or kind == "arena"))
end

local function link(qid)
	if GetQuestLink then
		local ok, l = pcall(GetQuestLink, qid)
		if ok and type(l) == "string" and l:find("|H") then return l end
	end
	return "[" .. (ns.QuestState and ns.QuestState.Title(qid) or tostring(qid)) .. "]"
end

local function check()
	local now, nowObj, txt = snapshot()
	local ready = P.Ready(last, now)
	local objs = P.Objectives(lastObj, nowObj, ready)
	last, lastObj = now, nowObj
	if not (ns.db and ns.db.partyTell ~= false and inParty()) then return end
	local linhas = 0
	-- cada linha uma vez (o que não saiu — chat travado, canal recusado, além das 3 — se perde: não se repete)
	for _, qid in ipairs(ready) do
		if not sent[qid] and linhas < P.MAX_LINHAS then
			sent[qid] = pcall(send, ("Lodestar: %s %s"):format(link(qid), ns.L.PT_READY), "PARTY") or nil
			linhas = linhas + 1
		end
	end
	for _, qo in ipairs(objs) do
		local q, i = qo[1], qo[2]
		local k, texto = q .. ":" .. i, txt[q] and txt[q][i]
		-- quest já avisada pronta (perdeu e recuperou itens): o objetivo não volta a falar
		if texto and texto ~= "" and not sentObj[k] and not sent[q] and linhas < P.MAX_LINHAS then
			sentObj[k] = pcall(send, ("Lodestar: %s · %s"):format(link(q), texto), "PARTY") or nil
			linhas = linhas + 1
		end
	end
end

-- a conta de agora (a fumaça chama direto: o QUEST_LOG_UPDATE espera 0,6 s)
function P:Check() return pcall(check) end

local pending
ns:On("QUEST_LOG_UPDATE", function()
	if pending then return end
	pending = true
	C_Timer.After(0.6, function() pending = nil; pcall(check) end)
end)
-- entrou num grupo: o que já estava pronto não é notícia
ns:On("GROUP_JOINED", function() last, lastObj = snapshot() end)
