-- AUTO-GERADO pelo roteador Lodestar. Fonte: Questie (dados abertos).
local ADDON, ns = ...
if not ns then return end
ns:RegisterGuide("Dailies/Cooking (Dailies)", {
	author = "Lodestar Generator",
}, [[
step
  talk The Rokk##24393
  accept Revenge is Tasty##11377 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  accept Super Hot Stew##11379 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  accept Manalicious##11380 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  accept Soup for the Soul##11381 |goto Shattrath City 61.75,15.55
step
  note The Rokk in Lower City has asked you to cook up some Kaliri Stew using his cooking pot. Return to him when it's done.
  get Revenge is Tasty |q 11377 |goto Shattrath City 61.75,15.55
step
  note The Rokk in Lower City has asked you to cook up some Demon Broiled Surprise using his cooking pot, two Mok'Nathal Shortribs and a Crunchy Serpent. Return to him when it's done.
  get Super Hot Stew |q 11379 |goto Shattrath City 61.75,15.55
step
  note The Rokk in Lower City has asked you collect 15 Mana Berries from the Eco-Domes in Netherstorm.
  get Manalicious |q 11380 |goto Shattrath City 61.75,15.55
step
  note The Rokk in Lower City has asked you to cook up some Spiritual Soup using his cooking pot. Return to him when it's done.
  get Soup for the Soul |q 11381 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Revenge is Tasty##11377 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Super Hot Stew##11379 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Manalicious##11380 |goto Shattrath City 61.75,15.55
step
  talk The Rokk##24393
  turnin Soup for the Soul##11381 |goto Shattrath City 61.75,15.55
]])
