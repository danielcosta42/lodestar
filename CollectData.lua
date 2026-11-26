-- AUTO-GERADO (tools/gen_collect.py). Os colecionáveis do Forever: missões, livros da biblioteca, pets raros.
-- (vazio até os dados de tools/data/collect/ entrarem)
local ADDON, ns = ...
if not ns then return end
ns.collectData = { quests = {}, books = { list = {}, turnin = {}, rewards = {} }, pets = {} }
