--=============================================================================
-- Español. Para corregir una traducción: edita la línea correspondiente.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "esES" then return end
local L = ns.L

L.VERB_accept="Aceptar"; L.VERB_turnin="Entregar"; L.VERB_kill="Matar"
L.VERB_collect="Recoger"; L.VERB_talk="Habla con"; L.VERB_click="Clic"
L.VERB_use="Usar"; L.VERB_buy="Comprar"; L.VERB_fpath="Ruta de vuelo"
L.VERB_home="Piedra de hogar"; L.VERB_ding="Alcanza nivel"; L.VERB_goto="Ve a"; L.VERB_get="Consigue"

L.NOW="AHORA"; L.NEXT="SIGUIENTE"; L.STEP_OF="Paso %d de %d"
L.BACK="< Atrás"; L.SKIP="Saltar >"; L.NO_GUIDE="Lodestar - sin guía"; L.NO_GUIDE_HINT="Usa /ls menu"

L.QUEST_ACCEPTED="Misión aceptada"; L.QUEST_DONE="Misión completada"
L.LEVEL_UP="¡Nivel %s!"; L.LEVEL_UP_SUB="Sigue así."; L.GUIDE_LOADED="Guía cargada"
L.CHOOSE_GUIDE="Elige una guía"; L.MENU_HINT="Usa /ls menu para explorar"; L.QUEST_FALLBACK="Misión #%s"

L.MENU_TITLE="Guías de Lodestar"; L.MENU_SEARCH="Buscar zona, mazmorra, sintonización..."
L.CAT_Leveling="Subir nivel"; L.CAT_Class="Clase"; L.CAT_Dungeons="Mazmorras"
L.CAT_Attunements="Sintonizaciones"; L.CAT_Reputation="Reputación"; L.CAT_Dailies="Diarias"; L.CAT_Events="Eventos"

L.TM_KILL="> Lodestar: objetivo a matar"; L.TM_TALK="> Lodestar: objetivo de la guía"
L.YARDS="%d m"; L.DEST="Destino"

L.CLASS_TRAINER="Entrenador de clase"; L.TRAINER_NONE="sin entrenador de %s (%s) en el índice."
L.TRAINER_POINT="apuntando a %s (%s) en %s. /ls train off cancela."; L.TRAINER_LABEL="Entrenador: %s"
L.PROF_USAGE="uso: /ls prof <profesión> (ej: mining, alchemy, fishing)"
L.PROF_NOTFOUND="profesión '%s' no encontrada."; L.PROF_NONE="sin entrenador de %s para %s."
L.PROF_POINT="apuntando a %s (%s) en %s."; L.PROF_LABEL="%s: %s"
L.MOUNT_30_T="¡Montura disponible!"; L.MOUNT_30_S="Aprende Equitación (Aprendiz) - 60% de velocidad."
L.MOUNT_60_T="¡Montura épica!"; L.MOUNT_60_S="Equitación (Oficial) - 100% de velocidad."
L.MOUNT_70_T="¡Vuelo disponible!"; L.MOUNT_70_S="Aprende Equitación (Experto) + una montura voladora."
L.TRAIN_T="Entrena tus habilidades"; L.TRAIN_S="Nuevos hechizos con tu entrenador - usa /ls train."

L.NOTE_FP="Consigue la ruta de vuelo con %s."; L.NOTE_TRAVEL="¡Zona completada! Viaja a %s."
L.TIP_VENDOR="Repara y vende basura mientras estés en la ciudad."; L.TIP_TURNINAT="Entregar en %s"

L.LOADED="v%s cargado. |cffffff00/ls|r para abrir."; L.GUIDE_NOTFOUND="guía no encontrada: %s"
L.GUIDE_LOADED_MSG="cargada: |cffffff00%s|r (%d pasos)"
L.NO_MATCH="ninguna guía coincide con '%s'. Usa /ls list."
L.PROGRESS_RESET="progreso de la guía reiniciado."; L.TRAIN_CANCEL="waypoint del entrenador cancelado."
L.MARK_TARGETS="marcar objetivos:"; L.ANT_TRAIL="rastro de hormigas:"; L.GUIDE_DONE="¡Guía completada!"
L.ON="ON"; L.OFF="OFF"
