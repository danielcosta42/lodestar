--=============================================================================
-- Locale — tabela de strings localizadas (ns.L).
-- Padrão: enUS é a base (define TODAS as chaves). Cada arquivo de idioma só
-- sobrescreve o que traduz e faz early-return se não for o locale do client.
-- Chave ausente cai no valor base (enUS); se nem isso, mostra a própria chave.
-- Para corrigir/adicionar tradução: edite Locales/<locale>.lua, uma linha.
--=============================================================================
local ADDON, ns = ...

ns.L = setmetatable({}, { __index = function(_, k) return "[" .. tostring(k) .. "]" end })

-- Traduz notas/dicas geradas com marcador {token}payload -> template localizado.
function ns:LocalizeText(text)
	if not text or text == "" then return text end
	local key, arg = text:match("^{(%w+)}(.*)$")
	if not key then return text end
	-- rawget: o metatable devolve "[KEY]" p/ ausentes, o que quebraria o `or`
	local fmt = rawget(self.L, "NOTE_" .. key:upper()) or rawget(self.L, "TIP_" .. key:upper())
	if not fmt then return arg ~= "" and arg or text end
	if fmt:find("%%s") then return fmt:format(arg) end
	return fmt
end
