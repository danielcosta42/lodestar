--=============================================================================
-- Français. Pour corriger une traduction : modifiez la ligne concernée.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "frFR" then return end
local L = ns.L

L.VERB_accept="Accepter"; L.VERB_turnin="Rendre"; L.VERB_kill="Tuer"
L.VERB_collect="Récolter"; L.VERB_talk="Parler à"; L.VERB_click="Cliquer"
L.VERB_use="Utiliser"; L.VERB_buy="Acheter"; L.VERB_fpath="Trajet aérien"
L.VERB_home="Pierre de foyer"; L.VERB_ding="Atteindre niveau"; L.VERB_goto="Aller à"; L.VERB_get="Obtenir"

L.NOW="MAINTENANT"; L.NEXT="ENSUITE"; L.STEP_OF="Étape %d sur %d"
L.BACK="< Retour"; L.SKIP="Passer >"; L.NO_GUIDE="Lodestar - aucun guide"; L.NO_GUIDE_HINT="Utilisez /ls menu"

L.QUEST_ACCEPTED="Quête acceptée"; L.QUEST_DONE="Quête terminée"
L.LEVEL_UP="Niveau %s !"; L.LEVEL_UP_SUB="Continuez."; L.GUIDE_LOADED="Guide chargé"
L.CHOOSE_GUIDE="Choisissez un guide"; L.MENU_HINT="Utilisez /ls menu pour parcourir"; L.QUEST_FALLBACK="Quête #%s"

L.MENU_TITLE="Guides Lodestar"; L.MENU_SEARCH="Rechercher zone, donjon, synchro..."
L.CAT_Leveling="Progression"; L.CAT_Class="Classe"; L.CAT_Dungeons="Donjons"
L.CAT_Attunements="Synchronisations"; L.CAT_Reputation="Réputation"; L.CAT_Dailies="Quotidiennes"; L.CAT_Events="Événements"

L.TM_KILL="> Lodestar : cible à tuer"; L.TM_TALK="> Lodestar : cible du guide"
L.YARDS="%d m"; L.DEST="Destination"

L.CLASS_TRAINER="Maître de classe"; L.TRAINER_NONE="aucun maître %s (%s) dans l'index."
L.TRAINER_POINT="pointe vers %s (%s) à %s. /ls train off annule."; L.TRAINER_LABEL="Maître : %s"
L.PROF_USAGE="usage : /ls prof <métier> (ex : mining, alchemy, fishing)"
L.PROF_NOTFOUND="métier '%s' introuvable."; L.PROF_NONE="aucun maître %s pour %s."
L.PROF_POINT="pointe vers %s (%s) à %s."; L.PROF_LABEL="%s : %s"
L.MOUNT_30_T="Monture disponible !"; L.MOUNT_30_S="Apprenez Équitation (Apprenti) - 60% de vitesse."
L.MOUNT_60_T="Monture épique !"; L.MOUNT_60_S="Équitation (Compagnon) - 100% de vitesse."
L.MOUNT_70_T="Vol disponible !"; L.MOUNT_70_S="Apprenez Équitation (Expert) + une monture volante."
L.TRAIN_T="Entraînez vos compétences"; L.TRAIN_S="Nouveaux sorts chez votre maître - /ls train."

L.NOTE_FP="Prenez le trajet aérien auprès de %s."; L.NOTE_TRAVEL="Zone terminée ! Voyagez vers %s."
L.TIP_VENDOR="Réparez et vendez le butin en ville."; L.TIP_TURNINAT="Rendre à %s"

L.LOADED="v%s chargé. |cffffff00/ls|r pour ouvrir."; L.GUIDE_NOTFOUND="guide introuvable : %s"
L.GUIDE_LOADED_MSG="chargé : |cffffff00%s|r (%d étapes)"
L.NO_MATCH="aucun guide ne correspond à '%s'. /ls list."
L.PROGRESS_RESET="progression du guide réinitialisée."; L.TRAIN_CANCEL="point de maître annulé."
L.MARK_TARGETS="marquer les cibles :"; L.ANT_TRAIL="piste :"; L.GUIDE_DONE="Guide terminé !"
L.ON="ON"; L.OFF="OFF"
