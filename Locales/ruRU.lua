--=============================================================================
-- Русский. Чтобы исправить перевод: отредактируйте нужную строку.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "ruRU" then return end
local L = ns.L

L.VERB_accept="Взять"; L.VERB_turnin="Сдать"; L.VERB_kill="Убить"
L.VERB_collect="Собрать"; L.VERB_talk="Поговорить с"; L.VERB_click="Нажать"
L.VERB_use="Использовать"; L.VERB_buy="Купить"; L.VERB_fpath="Маршрут полёта"
L.VERB_home="Камень возвращения"; L.VERB_ding="Достичь уровня"; L.VERB_goto="Идти к"; L.VERB_get="Получить"

L.NOW="СЕЙЧАС"; L.NEXT="ДАЛЕЕ"; L.STEP_OF="Шаг %d из %d"
L.BACK="< Назад"; L.SKIP="Пропустить >"; L.NO_GUIDE="Lodestar - нет гайда"; L.NO_GUIDE_HINT="Введите /ls menu"

L.QUEST_ACCEPTED="Задание взято"; L.QUEST_DONE="Задание выполнено"
L.LEVEL_UP="Уровень %s!"; L.LEVEL_UP_SUB="Так держать."; L.GUIDE_LOADED="Гайд загружен"
L.CHOOSE_GUIDE="Выберите гайд"; L.MENU_HINT="Введите /ls menu для просмотра"; L.QUEST_FALLBACK="Задание #%s"

L.MENU_TITLE="Гайды Lodestar"; L.MENU_SEARCH="Поиск зоны, подземелья, допуска..."
L.CAT_Leveling="Прокачка"; L.CAT_Class="Класс"; L.CAT_Dungeons="Подземелья"
L.CAT_Attunements="Допуски"; L.CAT_Reputation="Репутация"; L.CAT_Dailies="Ежедневные"; L.CAT_Events="События"

L.TM_KILL="> Lodestar: цель для убийства"; L.TM_TALK="> Lodestar: цель гайда"
L.YARDS="%d м"; L.DEST="Пункт назначения"

L.CLASS_TRAINER="Учитель класса"; L.TRAINER_NONE="нет учителя %s (%s) в индексе."
L.TRAINER_POINT="указываю на %s (%s) в %s. /ls train off отменяет."; L.TRAINER_LABEL="Учитель: %s"
L.PROF_USAGE="использование: /ls prof <профессия> (напр: mining, alchemy, fishing)"
L.PROF_NOTFOUND="профессия '%s' не найдена."; L.PROF_NONE="нет учителя %s для %s."
L.PROF_POINT="указываю на %s (%s) в %s."; L.PROF_LABEL="%s: %s"
L.MOUNT_30_T="Транспорт доступен!"; L.MOUNT_30_S="Изучите Верховую езду (ученик) - 60% скорости."
L.MOUNT_60_T="Эпический транспорт!"; L.MOUNT_60_S="Верховая езда (подмастерье) - 100% скорости."
L.MOUNT_70_T="Полёты доступны!"; L.MOUNT_70_S="Изучите Верховую езду (эксперт) + летающий транспорт."
L.TRAIN_T="Изучите новые умения"; L.TRAIN_S="Новые заклинания у учителя - /ls train."

L.NOTE_FP="Откройте маршрут полёта у %s."; L.NOTE_TRAVEL="Зона завершена! Отправляйтесь в %s."
L.TIP_VENDOR="Почините и продайте хлам в городе."; L.TIP_TURNINAT="Сдать в %s"

L.LOADED="v%s загружен. |cffffff00/ls|r чтобы открыть."; L.GUIDE_NOTFOUND="гайд не найден: %s"
L.GUIDE_LOADED_MSG="загружен: |cffffff00%s|r (%d шагов)"
L.NO_MATCH="нет гайда по запросу '%s'. /ls list."
L.PROGRESS_RESET="прогресс гайда сброшен."; L.TRAIN_CANCEL="точка учителя отменена."
L.MARK_TARGETS="отмечать цели:"; L.ANT_TRAIL="тропа:"; L.GUIDE_DONE="Гайд завершён!"
L.ON="ВКЛ"; L.OFF="ВЫКЛ"
