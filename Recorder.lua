--=============================================================================
-- Recorder — gravador básico de guia: registra aceitar/entregar de quests com a
-- sua posição enquanto você joga, e cospe a DSL pronta (pra revisar/exportar).
-- /ls record liga/desliga.
--=============================================================================
local ADDON, ns = ...
local R = {}
ns.Recorder = R

local recording, lines

local function here()
	local zone = GetZoneText and GetZoneText() or ""
	local m = C_Map and C_Map.GetBestMapForUnit and C_Map.GetBestMapForUnit("player")
	local p = m and C_Map.GetPlayerMapPosition and C_Map.GetPlayerMapPosition(m, "player")
	if p then
		local x, y = p:GetXY()
		if x then return ("%s %.1f,%.1f"):format(zone, x * 100, y * 100) end
	end
	return zone
end

local function questName(qid)
	if qid and C_QuestLog and C_QuestLog.GetTitleForQuestID then
		return C_QuestLog.GetTitleForQuestID(qid) or "?"
	end
	return "?"
end

function R:Toggle()
	if recording then
		recording = false
		ns:Print(ns.L.REC_STOP)
		if ns.Share and #lines > 2 then
			ns.Share:ShowText(ns.L.REC_DONE_T, ns.L.REC_DONE_H, table.concat(lines, "\n"), false)
		end
	else
		recording = true
		lines = { "-- gravado pelo Lodestar", "step" }
		ns:Print(ns.L.REC_START)
	end
end
function R:IsRecording() return recording end

ns:On("QUEST_ACCEPTED", function(_, a1, a2)
	if not recording then return end
	local qid = a2 or a1
	lines[#lines + 1] = ("accept %s##%s |goto %s"):format(questName(qid), tostring(qid), here())
	lines[#lines + 1] = "step"
end)
ns:On("QUEST_TURNED_IN", function(_, qid)
	if not recording then return end
	lines[#lines + 1] = ("turnin %s##%s |goto %s"):format(questName(qid), tostring(qid), here())
	lines[#lines + 1] = "step"
end)
