# Lodestar

**Free & open leveling guides for World of Warcraft: Forever.**

Lodestar is an in-game, step-by-step guide engine — a community-built alternative to paid guide addons. It routes you (Alliance & Horde), automates the tedious quest clicks, and points an arrow at your next objective. No gating, no nag screens, no telemetry — 100% **MIT-licensed**.

Install it, log in, and Lodestar automatically loads the best guide for your level and zone. That's it.

### Why this addon exists

Forever keeps its quest text, objectives and coordinates **on the server** — the client ships
bare quest IDs and nothing else. Lodestar's routes are generated from the open **QuestieDB**
(Forever flavor), which now carries Forever's own content — the new Skyborne starting zone,
Zephras Isle, included. For what no database has yet, the only way to get it is by **being there**,
so Lodestar collects it while you play and gives it back, open.

See [docs/forever.md](docs/forever.md) for the measurements and what is still open.

---

## Features

### Guidance
- Clean step window with your current objective, checkboxes, and a preview of what's next.
- On-screen **waypoint arrow**, a **compass strip** at the top of the screen, and the route drawn as
  dots on the **minimap** and the **world map** — flights along their real track, boats and zeppelins
  along their crossing.
- **Travel planner** — the fastest trip by travel time, leg by leg: walking, the flight paths you know
  (and new ones you pick up on the way), boats, zeppelins, the Deeprun Tram, your hearthstone and
  class teleports. It replans as you go, and the flight map highlights where to fly.
- **Goes where you need** — your guide step, your corpse while you're a ghost, a **Shift+click** on the
  map or minimap, a typed coordinate, or the **nearest** class/profession trainer, repair, vendor, inn,
  bank, auction house, flight master or stable (nearest by travel time, not straight line). All in the
  **Travel** panel — the compass button in the guide header.
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
Part of Forever's new content is not in any public database yet, so Lodestar harvests it as you play: who gives
and who ends each quest, with NPC ID and coordinates, the objectives, and the waypoint the server
itself points at. It goes to `LodestarDB.scan`, and `tools/` turns it into routes.

Nothing personal is collected. Nothing leaves your machine unless you turn on **Share quest
locations with the family** (off by default), which whispers only the *where* — quest ID, NPC ID, map
and coordinate — to guildmates running the companion, so the guides grow. Nothing about your character
goes in the message, and the addon on the other side drops who sent it. Off, sharing a harvest stays
what it always was: a file you hand over on purpose.

### For contributors
- **Import / export** guides with share codes; record your own route in-game.
- Fully localized: enUS, ptBR, deDE, esES, esMX, frFR, itIT, koKR, ruRU, zhCN, zhTW.

---

## Getting started

- `/ls` (or the minimap button) opens/closes the guide window.
- `/ls menu` browses the full library — leveling, dungeons, class quests, reputation and events.
- `/ls config` opens the settings.
- Everything has a place in the interface — the guide header (library, Travel, settings, ··· actions),
  the minimap button's right-click menu, and Settings. The slash commands are shortcuts.

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
| `/ls travel` | Open the Travel panel |
| `/ls near <type>` | Route to the nearest service: `trainer`, `prof <name>`, `repair`, `vendor`, `inn`, `bank`, `auction`, `flight`, `stable` |
| `/ls way <x> <y> [zone]` · `/ls way off` | Set / clear a manual destination |

### Optional
- **TomTom** — if installed, Lodestar can hand the arrow/waypoint off to it.

---

## Credits & license

- Routes are generated from the open **[QuestieDB](https://github.com/Questie/QuestieDB)** (Forever
  flavor) by the Questie team, plus what `/ls scan` collects in-game for content no database has yet.
- Flight paths, boats and zeppelins come from the game client's own tables (TaxiNodes, TaxiPath,
  TaxiPathNode, via [wago.tools](https://wago.tools)); `tools/gen_travel.py` regenerates them.
- No data is scraped from any site: Wowhead's terms allow browsers only, and we intend this data
  to be reusable by anyone.
- Code: **MIT**. Bug reports and pull requests welcome on [GitHub](https://github.com/danielcosta42/lodestar).
