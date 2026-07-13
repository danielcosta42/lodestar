--=============================================================================
-- Parser: texto da DSL -> { steps = { {goals={...}, ...}, ... } }
--=============================================================================
local ADDON, ns = ...

-- Verbos reconhecidos. Qualquer linha que não comece por um deles vira nota.
local VERBS = {
	accept = true, turnin = true, kill = true, collect = true, talk = true,
	click = true, use = true, buy = true, fpath = true, home = true,
	ding = true, goto_ = true, note = true, get = true, run = true,
}
-- "goto" é palavra reservada em Lua; no texto é "goto", mapeado abaixo.

local function trim(s) return (s:gsub("^%s+", ""):gsub("%s+$", "")) end

-- "Elwynn Forest 48.9,41.6,3" -> zone, x, y, radius
local function parseGoto(val)
	local zone, x, y, r = val:match("^(.-)%s*([%d%.]+)%s*,%s*([%d%.]+)%s*,?%s*([%d%.]*)%s*$")
	if not x then return nil end
	zone = trim(zone)
	return {
		zone = zone ~= "" and zone or nil,
		x = tonumber(x),
		y = tonumber(y),
		radius = tonumber(r),  -- pode ser nil
	}
end

-- "7/1" -> {id=7, obj=1};  "1598" -> {id=1598}
local function parseQ(val)
	local id, obj = val:match("^(%d+)/(%d+)$")
	if id then return { id = tonumber(id), obj = tonumber(obj) } end
	id = val:match("^(%d+)$")
	if id then return { id = tonumber(id) } end
	return nil
end

-- Aplica " |chave valor" a um goal. Chamado tanto no fim da linha do goal
-- quanto em linhas que começam com "|" (tips extras etc).
local function applyMods(goal, modstr)
	for key, val in modstr:gmatch("|(%S+)%s?([^|]*)") do
		val = trim(val)
		if key == "tip" then
			goal.tips = goal.tips or {}
			goal.tips[#goal.tips + 1] = val
		elseif key == "goto" then
			goal.goto_ = parseGoto(val) or goal.goto_
		elseif key == "q" then
			goal.q = parseQ(val)
		elseif key == "only" then
			goal.only = val
		elseif key == "complete" then
			goal.complete = val
		elseif key == "next" then
			goal.next = val
		elseif key == "gossip" then
			goal.gossip = tonumber(val) or val
		elseif key == "reward" then
			goal.reward = tonumber(val)
		elseif key == "confirm" then
			goal.confirm = true
		else
			goal[key] = val ~= "" and val or true
		end
	end
end

-- Separa "main |mods" e devolve (main, modstr|nil)
local function splitLine(line)
	local s = line:find("%s|")
	if not s then return line, nil end
	return trim(line:sub(1, s - 1)), line:sub(s + 1)
end

-- "10 Kobold Vermin##6" -> count=10, name="Kobold Vermin", id=6
local function parseTarget(text)
	local count = text:match("^(%d+)%s")
	if count then text = text:gsub("^%d+%s+", "") end
	local name, id = text:match("^(.-)##(%d+)")
	if id then
		return tonumber(count), trim(name), tonumber(id)
	end
	return tonumber(count), trim(text), nil
end

local function newGoal(verb, text)
	local count, name, id = parseTarget(text or "")
	return {
		verb = verb,
		count = count,
		text = name,
		id = id,
		raw = text,
	}
end

-- Parseia o corpo do guia. Retorna lista de steps.
function ns:ParseGuide(body)
	local steps = {}
	local step = nil
	local lastGoal = nil

	local function pushStep()
		step = { goals = {}, notes = {} }
		steps[#steps + 1] = step
		lastGoal = nil
	end

	for rawline in (body .. "\n"):gmatch("([^\r\n]*)\r?\n") do
		local line = trim(rawline)
		if line == "" then
			-- ignora linhas em branco
		elseif line:sub(1, 2) == "--" then
			-- comentário na DSL (linhas de seção dos guias gerados)
		elseif line == "step" then
			pushStep()
		elseif line:sub(1, 1) == "|" then
			-- linha só de modificadores: anexa ao último goal (ou ao step)
			applyMods(lastGoal or step or (pushStep() or step), line)
		else
			if not step then pushStep() end
			local main, modstr = splitLine(line)
			local verb, text = main:match("^(%S+)%s*(.*)$")
			local vkey = verb == "goto" and "goto_" or verb

			if verb == "label" then
				step.label = trim(text)
			elseif verb == "sticky" then
				step.sticky = true
			elseif verb == "only" and text ~= "" then
				step.only = trim(text)   -- condição do step inteiro
			elseif VERBS[vkey] then
				local goal = newGoal(vkey, text)
				if vkey == "goto_" then
					goal.goto_ = parseGoto(text)   -- "goto x,y" sem ##
				end
				if modstr then applyMods(goal, modstr) end
				step.goals[#step.goals + 1] = goal
				lastGoal = goal
			else
				-- texto livre: nota. Vira goal "note" pra aparecer na UI.
				local goal = newGoal("note", line)
				goal.text = main            -- preserva a linha inteira
				if modstr then applyMods(goal, modstr) end
				step.goals[#step.goals + 1] = goal
				lastGoal = goal
			end
		end
	end

	return steps
end
