-- RaidAttuneData — GERADO (gen_raidattune.py). Painel de atunação (Onda 1b).
-- ns.raidAttune = ordered { short, tier, faction, final, key, chain{} }.
local ADDON, ns = ...
ns.raidAttune = {
	{short="Karazhan",tier="T4",faction="",final=9838,key="Attunements/Karazhan",chain={9824,9825,9826,9829,9831,9832,9836,9837,9838}},
	{short="Heroicas (Chave)",tier="Chave",faction="",final=10884,key="Attunements/Heroic Dungeons - Trial of the Naaru",chain={10458,10480,10481,10513,10514,10515,10519,10521,10522,10523,10527,10528,10537,10540,10541,10546,10547,10550,10570,10576,10577,10578,10579,10588,10680,10681,10883,10884}},
	{short="CoT · Black Morass",tier="Chave",faction="",final=10297,key="Attunements/Caverns of Time - Black Morass",chain={10277,10279,10282,10283,10284,10285,10296,10297}},
	{short="Chave da Arcatraz",tier="Chave",faction="",final=10704,key="Attunements/Arcatraz Key",chain={10205,10262,10263,10264,10265,10266,10267,10268,10269,10275,10276,10280,10704}},
	{short="Mount Hyjal",tier="T6",faction="",final=10445,key="Attunements/Hyjal Summit - Vials of Eternity",chain={10445}},
	{short="Black Temple",tier="T6",faction="",final=10901,key="Attunements/Black Temple - Cudgel of Kar'desh",chain={10900,10901}},
	{short="Onyxia",tier="T4",faction="A",final=6502,key="Attunements/Alliance/Onyxia's Lair (Alliance)",chain={4182,4183,4184,4185,4186,4223,4224,4241,4242,4264,4282,4322,6402,6403,6501,6502}},
	{short="Onyxia",tier="T4",faction="H",final=6602,key="Attunements/Horde/Onyxia's Lair (Horde)",chain={4903,4941,4974,6566,6567,6568,6569,6570,6582,6583,6584,6585,6601,6602}},
}
