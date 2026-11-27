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

### Lodestar 3: the player's hub
- **A light look** by default (the dark one is one switch away), with rounded cards and soft shadows that read over
  the game world. Barlow (OFL) in Latin-script languages; the game's font in the others.
- **The Hub** replaces the guide library: Home (continue your guide, your level and XP, the dungeon for right now, gear
  upgrades, Legacy, collection), Leveling, Dungeons, Gear, Collections, Legacy, Class, Reputation, Attunements and Events.
- **Dungeons** by level, the one that fits you now, its entrance (learned the first time you go in), the guide quests
  to pick up first, and for each boss the loot that upgrades your spec, with the drop chance (loot from pfQuest).
- **Gear** for your spec: pick it (or let Lodestar read it from your talents), tune the stat weights or paste a Pawn
  string, and see for every slot what you wear and the best upgrade within reach — dungeons for your level, rewards of
  the quests on your route and your bags — with where it comes from and how much it gains.
- **Collections**: mounts and pets from the game's own journals, with where each comes from, a source filter,
  "missing only" and Guide me.
- **Legacy**: Forever's Legacy challenges, your account points, each group's progress, your highest character of each
  class and what is closest, with the way there.
- **Secrets** (Forever collectibles): guides for the collectible quest chains (Cozy Sleeping Bag, Night Watchman's
  Torch, Sprite Darter Hatchling and more), every hidden Library Book in one route, and the rare pets for hunters.
  Books (and rare pets, for hunters) you still lack show on the world map and the minimap when you're near, with a
  toast when you're right there; what you already have drops off.
- **Grey quests stay out**: a quest too low for your level (by the game's own grey range) leaves the guide, with what
  only it unlocks, unless it leads to a quest that still gives XP; the automatic guide pick weighs how much of each
  guide is still worth doing.
- **While you're here**: goals of the next steps you're close to (objectives of quests in your log, ready turn-ins,
  quests to pick up ahead), so the step ahead is shorter when you get there. On a grind step, the dungeon that fits you.
- **In this area**: every open objective of the quests in your log whose spawn area you're standing in — this step's
  quests first, then the steps ahead, then the rest of your log — one compact line each with the log count
  ("Savage Owlbeast 0/20"); their areas show softer on the world map, and a click guides you there.
- **Target button** (with a key binding): targets the step's mob or NPC and marks it with a raid icon.
- **Party sync**: with party members who run Lodestar, their counts under the goals you share, who lacks a quest, and
  Share.
- **Rares**: a toast when a known rare usually spawns near you, and a Rares page for your zone (pfQuest data).
- **Characters**: every character on the account with level, professions, gold and when you last played them.
- A notice when someone in your circle runs a newer Lodestar.

### Guidance
- Clean step window with your current objective, checkboxes, and a preview of what's next.
- On-screen **waypoint arrow**, a **compass strip** at the top of the screen, and the route drawn as
  dots on the **minimap** and the **world map** — flights along their real track, boats and zeppelins
  along their crossing.
- **Spawn areas** — the world map shades where the step's mobs, drops and objects spawn (like the modern
  client's quest areas). The arrow starts at the guide's spot; click it to go to the next area, nearest first.
- **Travel planner** — the fastest trip by travel time, leg by leg: walking, the flight paths you know
  (and new ones you pick up on the way), boats, zeppelins, the Deeprun Tram, your hearthstone and
  class teleports. It replans as you go, and the flight map highlights where to fly.
- **Walks follow the terrain** — the walking part of a route goes around mountains, cliffs and
  lakes instead of a straight line (from the game client's own terrain; enclosed cities still
  fall back to a straight line).
- **Boat and zeppelin times** — once Lodestar hears a zeppelin master or shipmaster announce an
  arrival (or you ride one), it learns that transport's schedule: the route uses the real wait, the
  arrow counts down ("leaves in 1m20s", "board now") and an alert sounds 30 s before it docks.
- **Goes where you need** — your guide step, your corpse while you're a ghost, a **Shift+click** on the
  map or minimap, a typed coordinate, or the **nearest** class/profession trainer, repair, vendor, inn,
  bank, auction house, flight master or stable (nearest by travel time, not straight line). All in the
  **Travel** panel — the compass button in the guide header.
- **Stops on the way** — a service or a coordinate is added as a stop before your destination instead of
  replacing it: the route goes stop by stop, then on to the guide step, with the detour in the total time.
  Each stop is listed with an × to remove it, and it is done when you get there or open that service's
  window; **Shift+click** a service (or Shift+Go) to go straight there instead.
- **Multiple guides open at once as tabs** — switch, add, or close routes on the fly, with a clean empty state when none is loaded.
- **Live counts on every goal** — "Kill Boar 3/8", the bag count on collect goals, the time left on timed quests (with an
  alert at 5 minutes and at 1 minute) and a clear mark on a failed escort or timed quest.
- **Right-click a quest line** to skip that quest (and the quests that follow from it) with **Undo**, show it in the quest
  log, or abandon it. Abandon a quest the guide still needs and the window offers **Go back for it** or **Skip it**.
- **Tidy quest log** — the quests in your log your route no longer uses, each with Abandon, and the finished ones no
  step ahead hands in.
- **Steps aside in dungeons, raids and battlegrounds** and comes back when you leave (dungeon guides stay).
- **Key bindings** for the window, next/previous step, Travel, the quest item, Tidy and Report.

### Automation (never get stuck)
- **Auto-accept**, **auto-turn-in**, and optional **auto-reward** (off by default; picks the best reward using a class-aware gear score).
- Auto-selects the right gossip/quest option and auto-shares quests with your party.
- **Auto-skips** a step whose NPC no longer offers its quest — imperfect data never stalls you.
- **Hold Shift** at an NPC, a vendor or a flight master and Lodestar keeps its hands off, once.
- Optional: **take the route's flight** at the flight master by itself.

### Leveling companions
- **XP/hour pace HUD** with ETA-to-level and ahead/behind tracking.
- **Gear Advisor** — pings you when a bag item is an upgrade, marks it on the item's tooltip ("Upgrade +12%") and puts a
  green arrow on the best quest reward.
- Optional: **tell my party** when one of your quests is ready to turn in.
- Optional: **TomTom compatibility** — without TomTom installed, `/way` and addons that set TomTom waypoints point
  Lodestar's arrow.
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
- **Report a problem** (the guide's ··· menu or `/ls report`): copyable text with the version, the step, where you stand
  and your addons — no character, realm or account names — ready for a GitHub issue.
- **Import / export** guides with share codes; record your own route in-game.
- Interface in English and Brazilian Portuguese; deDE, esES, esMX, frFR, itIT, koKR, ruRU, zhCN and zhTW
  translate the main labels and fall back to English for the rest. Translations welcome.

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
| `/ls near <type>` | Add the nearest service as a stop: `trainer`, `prof <name>`, `repair`, `vendor`, `inn`, `bank`, `auction`, `flight`, `stable` |
| `/ls way <x> <y> [zone]` · `/ls way off` | Add a stop / clear the stops and the manual destination |
| `/ls diario` | Tidy quest log: quests your route no longer uses |
| `/ls report` | Report a problem: copyable text for a GitHub issue |

---

## Credits & license

- Routes are generated from the open **[QuestieDB](https://github.com/Questie/QuestieDB)** (Forever
  flavor) by the Questie team, plus what `/ls scan` collects in-game for content no database has yet.
- Dungeon bosses, their loot, the world's rares and quest levels come from the
  **[pfQuest](https://github.com/shagu/pfQuest)** database by Shagu (MIT); `tools/gen_dungeons.py`,
  `tools/gen_rares.py` and `tools/gen_questlevels.py` regenerate `DungeonData.lua`, `RareData.lua` and
  `QuestLevels.lua`.
- The Secrets data (`tools/data/collect/`, regenerated into `CollectData.lua` by `tools/gen_collect.py`) are facts
  gathered from public guides, cited per entry; book item and quest IDs and some points come from the MIT-licensed
  [RXPGuides_LibraryBooks](https://github.com/heyitsmk/RXPGuides_LibraryBooks) and
  [Whatnot](https://github.com/DrKlampz/Whatnot).
- The interface font is **[Barlow](https://github.com/jpt/barlow)** by Jeremy Tribby (SIL Open Font License 1.1,
  `Media/Fonts/OFL.txt`).
- Flight paths, boats and zeppelins come from the game client's own tables (TaxiNodes, TaxiPath,
  TaxiPathNode, via [wago.tools](https://wago.tools)); `tools/gen_travel.py` regenerates them.
- Trainers the database leaves untitled (Forever's Horde paladin trainers, the junior profession
  instructors) are recognised by the title the game client caches (`Cache/WDB`); `tools/gen_trainers.py`
  reads it.
- No data is scraped from any site: Wowhead's terms allow browsers only, and we intend this data
  to be reusable by anyone.
- Code: **MIT**. Bug reports and pull requests welcome on [GitHub](https://github.com/danielcosta42/lodestar).
