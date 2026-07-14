## [1.4.0](https://github.com/danielcosta42/lodestar/compare/v1.3.0...v1.4.0) (2026-07-14)


### Features

* **gather:** hand off to Profession Helper's gathering route (/ls gather or Settings) — detects the char's gathering profs via PH; friendly hint if PH absent ([5cb454c](https://github.com/danielcosta42/lodestar/commit/5cb454c4bf0dbe7ed0eab92c9b4148449f2ea873))
* **guides:** warn when a step needs a group (elite mob) + party-finder hook ([ebc7ef5](https://github.com/danielcosta42/lodestar/commit/ebc7ef54f3aed1623b66538524a88a3c86ef3902))
* **raidprep:** pre-raid consumables checklist (/ls check) — flask/pots/food/water/bandages have-vs-need from bags, with prices via Profession Helper (PH.TSM) ([b5de60d](https://github.com/danielcosta42/lodestar/commit/b5de60d12e254b70907ff399d70bc0a56f1ec257))
* **squad:** party/guild route sync over ChehulNet (LSGuide) — broadcast level+guide+step, show who's leveling with Lodestar. Open via /ls party or Settings ([839c65c](https://github.com/danielcosta42/lodestar/commit/839c65c64723691755e07b6d155ab983f7db76b1))


### Bug Fixes

* **guides:** gate Ogri'la ground-camp quests (Banish the Demons/Wrangle Aether Rays/A Special Thank You) behind the 'Ogre Heaven' unlock — the DB records no prereq, so they were ordered before the NPC would offer them. Now ordered after the unlock + detour warns if reached early ([8205c37](https://github.com/danielcosta42/lodestar/commit/8205c37eb20af31200b8570096618398c924267e))
* **guides:** point item-objective steps to the item SOURCE, not the delivery/giver ([6d58088](https://github.com/danielcosta42/lodestar/commit/6d580883f3910a97647b987529e619f3b698ddb4)), closes [#20600](https://github.com/danielcosta42/lodestar/issues/20600)
* **guides:** show HOW to do each leveling quest too — generate_zone now emits objText note + |q-tracked step for objItems/no-spawn quests; write_xml preserves raid-ready includes ([dee555f](https://github.com/danielcosta42/lodestar/commit/dee555fbd27ffcfc9abc9777aab2017fdde5259a))
* **guides:** show HOW to do each quest — emit objText note + |q-tracked objective step for every quest with an objective (was accept->turnin with nothing between). Fixes reputation/class/attunement/dungeon/daily/event guides ([7ff77e5](https://github.com/danielcosta42/lodestar/commit/7ff77e523c66696ada959b89e7d3963c0fb930c2))

