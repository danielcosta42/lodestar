## [1.1.0](https://github.com/danielcosta42/lodestar/compare/v1.0.0...v1.1.0) (2026-07-13)


### Features

* add a settings (gear) button to the panel header ([f9acbff](https://github.com/danielcosta42/lodestar/commit/f9acbff8cbaa7a89b95e9767df94eb4716f232b9))
* detect flight/taxi travel and show live ETA instead of direction ([5e64601](https://github.com/danielcosta42/lodestar/commit/5e64601ca2159ae866a39dcb603b10df845c8375))
* flight-path travel routing + prominent travel guard banner ([f2d721a](https://github.com/danielcosta42/lodestar/commit/f2d721a27a858f74e5f696d6037aa010606e2b67))
* greedy auto-accept — grab all quests at a guide-directed NPC (session survives step-advance) ([341fd94](https://github.com/danielcosta42/lodestar/commit/341fd945c1b7f0072811817dad6a4a128656c415))
* prerequisite detour — open the guide that teaches a blocking prereq as a tab (never stuck) ([851a88a](https://github.com/danielcosta42/lodestar/commit/851a88a3aa0bba6fdbd85e18b726b9cc62d3fb17))
* safe-by-default automations (auto-reward + auto-share are opt-in) and fully localized settings screen ([0f16679](https://github.com/danielcosta42/lodestar/commit/0f16679cfbede6dc9fa061cc7482dddfb042678d))


### Bug Fixes

* **guides:** repeatable dailies (Ogri'la/Skyguard 'Bomb Them Again!') now come after their unlock chain, so the NPC actually offers them ([8f19f8e](https://github.com/danielcosta42/lodestar/commit/8f19f8e11ff1817d92350935e7e0e8fd5c4ad29f))
* prefer real zone over SoD fakes in uiMapToZone; flight hop only for own faction ([4f49c43](https://github.com/danielcosta42/lodestar/commit/4f49c43403915ccc10a36c2f0dbd0e2a240ab812))
* prereq detour is order-independent — a prereq taught in the current guide never triggers a cross-guide banner ([2984b7d](https://github.com/danielcosta42/lodestar/commit/2984b7de193a7f39ff684ef3706dacdf844dffc2))
* settings option descriptions wrap instead of overflowing behind the toggle; hide unsubstituted version token in dev ([3dc26a4](https://github.com/danielcosta42/lodestar/commit/3dc26a411862bd229cb916830f825fe59b5a0a2a))
* travel routing uses map-based zone detection (handles Ogri'la/Skettis subzones) and no longer dead-ends flights from Shattrath ([51b8962](https://github.com/danielcosta42/lodestar/commit/51b89626e89bf7637e47fc8a47765f40b51f7889))

