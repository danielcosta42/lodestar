-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Leveling/Horde/Moonglade (57-60)", {
	faction = "Horde",
	author = "Lodestar Generator",
	next = "Leveling/Horde/Silithus (59-60)",
}, [[
step
  note {fp}Faustron
  goto Moonglade 32.09,66.61 |tip {vendor}
step
  talk Rabine Saturna##11801
  accept Wasteland##1124 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  note Travel to Silithus and search for a Reliquary of Purity within the ruins of Southwind Village. If you are able to find it, return with it to Rabine Saturna in Nighthaven, Moonglade.
  get A Reliquary of Purity |q 5527 |goto Moonglade 51.69,45.1
step
  talk Umber##11939
  accept Uncovering Past Secrets##6845 |goto Moonglade 44.88,35.6
step
  talk Keeper Remulos##11832
  accept The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  note Travel to the four Emerald Dream portals in Azeroth and collect a Fragment of the Nightmare's Corruption from each. Return to Keeper Remulos in the Moonglade when you have completed this task.
  get The Nightmare's Corruption |q 8735 |goto Moonglade 36.18,41.79
step
  talk Layo Starstrike##13220
  turnin Wasteland##1124 |goto Silithus 81.87,18.93 |tip {turninat}Silithus
step
  talk Rabine Saturna##11801
  turnin Uncovering Past Secrets##6845 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  turnin A Reliquary of Purity##5527 |goto Moonglade 51.69,45.1
step
  talk Rabine Saturna##11801
  accept Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  note Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade.
  get Shards of the Felvine |q 5526 |goto Moonglade 51.69,45.1
step
  talk Umber##11939
  accept Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Keeper Remulos##11832
  turnin The Nightmare's Corruption##8735 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Rabine Saturna##11801
  turnin Shards of the Felvine##5526 |goto Moonglade 51.69,45.1
step
  talk Umber##11939
  turnin Under the Chitin Was...##1185 |goto Moonglade 44.88,35.6
step
  talk Keeper Remulos##11832
  turnin The Nightmare Manifests##8736 |goto Moonglade 36.18,41.79
step
  talk Keeper Remulos##11832
  accept The Champion Returns##8741 |goto Moonglade 36.18,41.79
step
  talk Anachronos##15192
  turnin The Champion Returns##8741 |goto Tanaris 64.2,51.42 |tip {turninat}Tanaris
step
  note {travel}Silithus
  goto Silithus 81.87,18.93
]])
