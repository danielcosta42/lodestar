--=============================================================================
-- Italiano. Per correggere una traduzione: modifica la riga corrispondente.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "itIT" then return end
local L = ns.L

L.VERB_accept="Accetta"; L.VERB_turnin="Consegna"; L.VERB_kill="Uccidi"
L.VERB_collect="Raccogli"; L.VERB_talk="Parla con"; L.VERB_click="Clicca"
L.VERB_use="Usa"; L.VERB_buy="Compra"; L.VERB_fpath="Via del volo"
L.VERB_home="Pietra del ritrovo"; L.VERB_ding="Raggiungi livello"; L.VERB_goto="Vai a"; L.VERB_get="Ottieni"

L.NOW="ORA"; L.NEXT="DOPO"; L.STEP_OF="Passo %d di %d"
L.BACK="< Indietro"; L.SKIP="Salta >"; L.NO_GUIDE="Lodestar - nessuna guida"; L.NO_GUIDE_HINT="Usa /ls menu"

L.QUEST_ACCEPTED="Missione accettata"; L.QUEST_DONE="Missione completata"
L.LEVEL_UP="Livello %s!"; L.LEVEL_UP_SUB="Continua così."; L.GUIDE_LOADED="Guida caricata"
L.CHOOSE_GUIDE="Scegli una guida"; L.MENU_HINT="Usa /ls menu per sfogliare"; L.QUEST_FALLBACK="Missione #%s"

L.MENU_TITLE="Guide di Lodestar"; L.MENU_SEARCH="Cerca zona, spedizione, sintonia..."
L.CAT_Leveling="Livellamento"; L.CAT_Class="Classe"; L.CAT_Dungeons="Spedizioni"
L.CAT_Attunements="Sintonie"; L.CAT_Reputation="Reputazione"; L.CAT_Dailies="Giornaliere"; L.CAT_Events="Eventi"

L.TM_KILL="> Lodestar: bersaglio da uccidere"; L.TM_TALK="> Lodestar: bersaglio della guida"
L.YARDS="%d m"; L.DEST="Destinazione"

L.CLASS_TRAINER="Addestratore di classe"; L.TRAINER_NONE="nessun addestratore %s (%s) nell'indice."
L.TRAINER_POINT="punto verso %s (%s) a %s. /ls train off annulla."; L.TRAINER_LABEL="Addestratore: %s"
L.PROF_USAGE="uso: /ls prof <professione> (es: mining, alchemy, fishing)"
L.PROF_NOTFOUND="professione '%s' non trovata."; L.PROF_NONE="nessun addestratore %s per %s."
L.PROF_POINT="punto verso %s (%s) a %s."; L.PROF_LABEL="%s: %s"
L.MOUNT_30_T="Cavalcatura disponibile!"; L.MOUNT_30_S="Impara Cavalcare (Apprendista) - 60% di velocità."
L.MOUNT_60_T="Cavalcatura epica!"; L.MOUNT_60_S="Cavalcare (Esperto) - 100% di velocità."
L.MOUNT_70_T="Volo disponibile!"; L.MOUNT_70_S="Impara Cavalcare (Perito) + una cavalcatura volante."
L.TRAIN_T="Addestra le tue abilità"; L.TRAIN_S="Nuove magie dall'addestratore - usa /ls train."

L.NOTE_FP="Prendi la via del volo da %s."; L.NOTE_TRAVEL="Zona completata! Viaggia verso %s."
L.TIP_VENDOR="Ripara e vendi cianfrusaglie in città."; L.TIP_TURNINAT="Consegna a %s"

L.LOADED="v%s caricato. |cffffff00/ls|r per aprire."; L.GUIDE_NOTFOUND="guida non trovata: %s"
L.GUIDE_LOADED_MSG="caricata: |cffffff00%s|r (%d passi)"
L.NO_MATCH="nessuna guida corrisponde a '%s'. /ls list."
L.PROGRESS_RESET="progresso della guida azzerato."; L.TRAIN_CANCEL="waypoint addestratore annullato."
L.MARK_TARGETS="segna bersagli:"; L.ANT_TRAIL="scia:"; L.GUIDE_DONE="Guida completata!"
L.ON="ON"; L.OFF="OFF"
