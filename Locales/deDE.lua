--=============================================================================
-- Deutsch. Zum Korrigieren einer Übersetzung: bearbeite die jeweilige Zeile.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "deDE" then return end
local L = ns.L

L.VERB_accept="Annehmen"; L.VERB_turnin="Abgeben"; L.VERB_kill="Töten"
L.VERB_collect="Sammeln"; L.VERB_talk="Sprich mit"; L.VERB_click="Klicken"
L.VERB_use="Benutzen"; L.VERB_buy="Kaufen"; L.VERB_fpath="Flugpunkt"
L.VERB_home="Ruhestein"; L.VERB_ding="Erreiche Stufe"; L.VERB_goto="Gehe zu"; L.VERB_get="Holen"

L.NOW="JETZT"; L.NEXT="ALS NÄCHSTES"; L.STEP_OF="Schritt %d von %d"
L.BACK="< Zurück"; L.SKIP="Überspringen >"; L.NO_GUIDE="Lodestar - kein Guide"
L.NO_GUIDE_HINT="Nutze /ls menu"

L.QUEST_ACCEPTED="Quest angenommen"; L.QUEST_DONE="Quest abgeschlossen"
L.LEVEL_UP="Stufe %s!"; L.LEVEL_UP_SUB="Weiter so."; L.GUIDE_LOADED="Guide geladen"
L.CHOOSE_GUIDE="Wähle einen Guide"; L.MENU_HINT="Nutze /ls menu zum Durchsuchen"
L.QUEST_FALLBACK="Quest #%s"

L.MENU_TITLE="Lodestar-Guides"; L.MENU_SEARCH="Zone, Dungeon, Einstimmung suchen..."
L.CAT_Leveling="Leveln"; L.CAT_Class="Klasse"; L.CAT_Dungeons="Dungeons"
L.CAT_Attunements="Einstimmungen"; L.CAT_Reputation="Ruf"; L.CAT_Dailies="Tägliche"; L.CAT_Events="Events"

L.TM_KILL="> Lodestar: Ziel zum Töten"; L.TM_TALK="> Lodestar: Guide-Ziel"
L.YARDS="%d m"; L.DEST="Ziel"

L.CLASS_TRAINER="Klassenlehrer"; L.TRAINER_NONE="kein %s-Lehrer (%s) im Index."
L.TRAINER_POINT="zeige zu %s (%s) in %s. /ls train off bricht ab."; L.TRAINER_LABEL="Lehrer: %s"
L.PROF_USAGE="Nutzung: /ls prof <Beruf> (z.B. mining, alchemy, fishing)"
L.PROF_NOTFOUND="Beruf '%s' nicht gefunden."; L.PROF_NONE="kein %s-Lehrer für %s."
L.PROF_POINT="zeige zu %s (%s) in %s."; L.PROF_LABEL="%s: %s"
L.MOUNT_30_T="Reittier verfügbar!"; L.MOUNT_30_S="Lerne Reiten (Lehrling) - 60% Tempo."
L.MOUNT_60_T="Episches Reittier!"; L.MOUNT_60_S="Reiten (Geselle) - 100% Tempo."
L.MOUNT_70_T="Fliegen verfügbar!"; L.MOUNT_70_S="Lerne Reiten (Experte) + ein Flugreittier."
L.TRAIN_T="Trainiere deine Fähigkeiten"; L.TRAIN_S="Neue Zauber beim Lehrer - nutze /ls train."

L.NOTE_FP="Hol den Flugpunkt bei %s."; L.NOTE_TRAVEL="Zone fertig! Reise nach %s."
L.TIP_VENDOR="Repariere und verkaufe Müll in der Stadt."; L.TIP_TURNINAT="Abgeben in %s"

L.LOADED="v%s geladen. |cffffff00/ls|r zum Öffnen."; L.GUIDE_NOTFOUND="Guide nicht gefunden: %s"
L.GUIDE_LOADED_MSG="geladen: |cffffff00%s|r (%d Schritte)"
L.NO_MATCH="kein Guide passt zu '%s'. Nutze /ls list."
L.PROGRESS_RESET="Guide-Fortschritt zurückgesetzt."; L.TRAIN_CANCEL="Lehrer-Wegpunkt abgebrochen."
L.MARK_TARGETS="Ziele markieren:"; L.ANT_TRAIL="Ameisenpfad:"; L.GUIDE_DONE="Guide abgeschlossen!"
L.ON="AN"; L.OFF="AUS"
