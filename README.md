# Lodestar

**Free & open leveling and raid-prep guides for World of Warcraft: The Burning Crusade Classic.**

Lodestar is an in-game, step-by-step guide engine — a community-built alternative to paid guide addons. It routes you from **1 to 70** (Alliance & Horde), automates the tedious quest clicks, points an arrow at your next objective, and gets boosted characters **raid-ready**. No gating, no nag screens, no telemetry — 100% **MIT-licensed**, and every route is generated from **open community data** (Questie).

Install it, log in, and Lodestar automatically loads the best guide for your level and zone. That's it.

---

## Features

### Guidance
- Clean step window with your current objective, checkboxes, and a preview of what's next.
- On-screen **waypoint arrow**, minimap **ant-trail**, and world-map pins to your goal.
- **Travel planner** — tells you the fastest flight path / portal / boat to the next zone.
- **Multiple guides open at once as tabs** — switch, add, or close routes on the fly, with a clean empty state when none is loaded.

### Automation (never get stuck)
- **Auto-accept**, **auto-turn-in**, and **auto-reward** (picks the best reward using a class-aware gear score).
- Auto-selects the right gossip/quest option and auto-shares quests with your party.
- **Auto-skips** a step whose NPC no longer offers its quest — imperfect data never stalls you.

### Leveling companions
- **XP/hour pace HUD** with ETA-to-level and ahead/behind tracking.
- **Talent suggestions** per level, with a one-click learn button.
- **Gear Advisor** — pings you when a bag item is an upgrade.
- Target markers on tooltips & nameplates; player coordinates on minimap and map.
- Death counter and a shareable end-of-run **Report Card** (with "ghost racing").

### ⭐ Raid Ready — Boosted 60–70
A curated route that takes a **boosted level 60 to 70 and Karazhan-attuned**, purely by dungeon spam:
- **Only dungeon & attunement quests** — no open-world filler.
- A live **dungeon run-counter** (`Blood Furnace 3/12`) that auto-advances the step when you hit the target.
- Full **Karazhan attunement** (all three key fragments), the **Arcatraz key**, the **Shattered Halls key**, and heroic-key reputation earned along the way — walk out ready for **SSC / Tempest Keep**.

### For contributors
- **Import / export** guides with share codes; record your own route in-game.
- Fully localized: enUS, ptBR, deDE, esES, esMX, frFR, itIT, koKR, ruRU, zhCN, zhTW.

---

## Getting started

- `/ls` (or the minimap button) opens/closes the guide window.
- `/ls menu` browses the full library — leveling, dungeons, attunements, reputation, dailies and events.
- `/ls config` opens the settings.

### Slash commands

| Command | Action |
|---|---|
| `/ls` | Toggle the guide window (or open the browser if no guide is loaded) |
| `/ls menu` | Open the guide library |
| `/ls config` | Open settings |
| `/ls reset` | Reset progress on the current guide |
| `/ls next` · `/ls prev` | Step forward / back |
| `/ls export` · `/ls import` | Share or load a custom guide |

### Optional
- **TomTom** — if installed, Lodestar can hand the arrow/waypoint off to it.

---

## Credits & license

- Route data is derived from the open **[Questie](https://github.com/Questie/Questie)** database plus community curation.
- The Boosted 60–70 route is based on the community guide by **Biosparks / myro**.
- Code: **MIT**. Bug reports and pull requests welcome on [GitHub](https://github.com/danielcosta42/lodestar).
