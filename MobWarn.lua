--=============================================================================
-- MobWarn — avisa quando você mira um inimigo muito acima do seu nível (evita
-- pulls suicidas durante o leveling). Toast breve, throttle por alvo.
--=============================================================================
local ADDON, ns = ...

local lastGUID, lastAt = nil, 0

local function check()
	if not (ns.db and ns.db.mobWarning) then return end
	if not UnitExists("target") or UnitIsPlayer("target") or UnitIsDead("target") then return end
	if not UnitCanAttack("player", "target") then return end

	local lvl = UnitLevel("target")           -- -1 = ?? (muito acima)
	local mine = UnitLevel("player") or 1
	local danger = (lvl == -1) or (lvl and lvl - mine >= 5)
	if not danger then return end

	local guid = UnitGUID("target")
	local now = GetTime()
	if guid == lastGUID and (now - lastAt) < 8 then return end   -- não repete o mesmo alvo
	lastGUID, lastAt = guid, now

	local name = UnitName("target") or "?"
	local lvltxt = (lvl == -1) and "??" or tostring(lvl)
	if ns.Toast then
		ns.Toast:Show({ title = ns.L.MOB_DANGER_T, text = ns.L.MOB_DANGER:format(name, lvltxt),
			color = ns.UI.COL.amber, hold = 4, glyph = "alvo" })
	end
end

ns:On("PLAYER_TARGET_CHANGED", check)
