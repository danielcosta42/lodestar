# Lodestar

**Free & open leveling guides for World of Warcraft: Forever.**

Lodestar is an in-game, step-by-step guide engine — a community-built alternative to paid guide addons. It routes you (Alliance & Horde), automates the tedious quest clicks, and points an arrow at your next objective. No gating, no nag screens, no telemetry — 100% **MIT-licensed**.

Install it, log in, and Lodestar automatically loads the best guide for your level and zone. That's it.

### Why this addon exists

Forever keeps its quest text, objectives and coordinates **on the server** — the client ships
6,600 bare quest IDs and nothing else. No amount of datamining will produce a guide for the new
zones. The only way anyone gets that data is by **being there**, so Lodestar collects it while you
play and gives it back, open.

See [docs/forever.md](docs/forever.md) for the measurements and what is still open.

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
- **Gear Advisor** — pings you when a bag item is an upgrade.
- Target markers on tooltips & nameplates; player coordinates on minimap and map.
- Death counter and a shareable end-of-run **Report Card** (with "ghost racing").

### ⭐ Quest collection — `/ls scan`
Forever's new content is not in any public database, so Lodestar harvests it as you play: who gives
and who ends each quest, with NPC ID and coordinates, the objectives, and the waypoint the server
itself points at. It goes to `LodestarDB.scan`, and `tools/` turns it into routes.

Nothing personal is collected and nothing is sent anywhere — sharing a harvest is a file you hand
over on purpose.

### For contributors
- **Import / export** guides with share codes; record your own route in-game.
- Fully localized: enUS, ptBR, deDE, esES, esMX, frFR, itIT, koKR, ruRU, zhCN, zhTW.

---

## Getting started

- `/ls` (or the minimap button) opens/closes the guide window.
- `/ls menu` browses the full library — leveling, dungeons, reputation, dailies and events.
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
| `/ls scan` | Ask the server about the quests only this client knows |

### Optional
- **TomTom** — if installed, Lodestar can hand the arrow/waypoint off to it.

---

## Credits & license

- The vanilla-era routes are derived from the open **[Questie](https://github.com/Questie/Questie)**
  database plus community curation. Forever's own content is collected in-game (see `/ls scan`).
- No data is scraped from any site: Wowhead's terms allow browsers only, and we intend this data
  to be reusable by anyone.
- Code: **MIT**. Bug reports and pull requests welcome on [GitHub](https://github.com/danielcosta42/lodestar).
