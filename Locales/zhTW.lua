--=============================================================================
-- 繁體中文。若要修正翻譯，請編輯對應的行。
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "zhTW" then return end
local L = ns.L

L.VERB_accept="接受"; L.VERB_turnin="回報"; L.VERB_kill="擊殺"
L.VERB_collect="收集"; L.VERB_talk="對話"; L.VERB_click="點擊"
L.VERB_use="使用"; L.VERB_buy="購買"; L.VERB_fpath="飛行點"
L.VERB_home="爐石"; L.VERB_ding="達到等級"; L.VERB_goto="前往"; L.VERB_get="取得"

L.NOW="目前"; L.NEXT="接下來"; L.STEP_OF="第 %d / %d 步"
L.BACK="< 返回"; L.SKIP="跳過 >"; L.NO_GUIDE="Lodestar - 無指南"; L.NO_GUIDE_HINT="輸入 /ls menu"

L.QUEST_ACCEPTED="已接受任務"; L.QUEST_DONE="任務完成"
L.LEVEL_UP="%s 級！"; L.LEVEL_UP_SUB="繼續加油。"; L.GUIDE_LOADED="指南已載入"
L.CHOOSE_GUIDE="選擇一個指南"; L.MENU_HINT="輸入 /ls menu 瀏覽"; L.QUEST_FALLBACK="任務 #%s"

L.MENU_TITLE="Lodestar 指南"; L.MENU_SEARCH="搜尋地區、地城、入場資格..."
L.CAT_Leveling="升級"; L.CAT_Class="職業"; L.CAT_Dungeons="地城"
L.CAT_Attunements="入場資格"; L.CAT_Reputation="聲望"; L.CAT_Dailies="每日"; L.CAT_Events="節慶"

L.TM_KILL="> Lodestar：擊殺目標"; L.TM_TALK="> Lodestar：指南目標"
L.YARDS="%d 碼"; L.DEST="目的地"

L.CLASS_TRAINER="職業訓練師"; L.TRAINER_NONE="索引中沒有 %s 訓練師（%s）。"
L.TRAINER_POINT="指向 %s（%s，%s）。/ls train off 取消。"; L.TRAINER_LABEL="訓練師：%s"
L.PROF_USAGE="用法：/ls prof <專業>（如 mining、alchemy、fishing）"
L.PROF_NOTFOUND="找不到專業 '%s'。"; L.PROF_NONE="沒有 %s 訓練師（%s）。"
L.PROF_POINT="指向 %s（%s，%s）。"; L.PROF_LABEL="%s：%s"
L.MOUNT_30_T="可學習坐騎！"; L.MOUNT_30_S="學習騎術（學徒）- 60% 速度。"
L.MOUNT_60_T="史詩坐騎！"; L.MOUNT_60_S="騎術（熟練）- 100% 速度。"
L.MOUNT_70_T="可以飛行了！"; L.MOUNT_70_S="學習騎術（專家）+ 飛行坐騎。"
L.TRAIN_T="訓練你的技能"; L.TRAIN_S="向訓練師學習新法術 - /ls train。"

L.NOTE_FP="在 %s 處取得飛行點。"; L.NOTE_TRAVEL="地區完成！前往 %s。"
L.TIP_VENDOR="在城裡修理並賣掉垃圾。"; L.TIP_TURNINAT="在 %s 回報"

L.LOADED="v%s 已載入。|cffffff00/ls|r 開啟。"; L.GUIDE_NOTFOUND="找不到指南：%s"
L.GUIDE_LOADED_MSG="已載入：|cffffff00%s|r（%d 步）"
L.NO_MATCH="沒有符合 '%s' 的指南。/ls list。"
L.PROGRESS_RESET="指南進度已重置。"; L.TRAIN_CANCEL="訓練師路徑點已取消。"
L.MARK_TARGETS="標記目標："; L.ANT_TRAIL="路徑："; L.GUIDE_DONE="指南完成！"
L.ON="開"; L.OFF="關"
