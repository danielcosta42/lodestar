-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Reputation/Alliance/Ravenholdt", {
	faction = "Alliance",
	author = "Lodestar Generator",
}, [[
step
  only Rogue
  talk Ormok##3328
  accept A Simple Request##8233 |goto Orgrimmar 43.9,54.63
step
  only Rogue
  talk Fahrad##6707
  accept Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  note Take the Seal of Ravenholdt to Fahrad at Ravenholdt Manor, hidden away in the hills of Hillsbrad.
  kill Ravenholdt##13936 |q 6681 |goto Alterac Mountains 81.27,74.62
step
  only Rogue
  talk Fahrad##6707
  turnin The Manor, Ravenholdt##6681 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin A Simple Request##8233 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Fahrad##6707
  turnin Junkboxes Needed##8249 |goto Alterac Mountains 84.45,80.32
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.02,78.88
step
  only Rogue
  talk Ravenholdt Guard##6766
  accept Syndicate Emblems##6701 |goto Alterac Mountains 84.53,78.71
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Sealed Azure Bag##8234 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Ravenholdt Guard##6766
  turnin Syndicate Emblems##6701 |goto Alterac Mountains 84.53,78.71
step
  only Rogue
  talk Archmage Xylem##8379
  accept Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  turnin Encoded Fragments##8235 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Archmage Xylem##8379
  accept The Azure Key##8236 |goto Azshara 29.25,40.21
step
  only Rogue
  talk Lord Jorach Ravenholdt##6768
  turnin The Azure Key##8236 |goto Alterac Mountains 86.02,78.88
]])
