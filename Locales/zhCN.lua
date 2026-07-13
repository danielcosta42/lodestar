--=============================================================================
-- 简体中文。若要修正翻译，请编辑对应的行。
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "zhCN" then return end
local L = ns.L

L.VERB_accept="接受"; L.VERB_turnin="交任务"; L.VERB_kill="击杀"
L.VERB_collect="收集"; L.VERB_talk="对话"; L.VERB_click="点击"
L.VERB_use="使用"; L.VERB_buy="购买"; L.VERB_fpath="飞行点"
L.VERB_home="炉石"; L.VERB_ding="达到等级"; L.VERB_goto="前往"; L.VERB_get="获取"

L.NOW="当前"; L.NEXT="接下来"; L.STEP_OF="第 %d / %d 步"
L.BACK="< 返回"; L.SKIP="跳过 >"; L.NO_GUIDE="Lodestar - 无向导"; L.NO_GUIDE_HINT="输入 /ls menu"

L.QUEST_ACCEPTED="已接受任务"; L.QUEST_DONE="任务完成"
L.LEVEL_UP="%s 级！"; L.LEVEL_UP_SUB="继续加油。"; L.GUIDE_LOADED="向导已加载"
L.CHOOSE_GUIDE="选择一个向导"; L.MENU_HINT="输入 /ls menu 浏览"; L.QUEST_FALLBACK="任务 #%s"

L.MENU_TITLE="Lodestar 向导"; L.MENU_SEARCH="搜索地区、地下城、入场资格..."
L.CAT_Leveling="升级"; L.CAT_Class="职业"; L.CAT_Dungeons="地下城"
L.CAT_Attunements="入场资格"; L.CAT_Reputation="声望"; L.CAT_Dailies="每日"; L.CAT_Events="节日"

L.TM_KILL="> Lodestar：击杀目标"; L.TM_TALK="> Lodestar：向导目标"
L.YARDS="%d 码"; L.DEST="目的地"

L.CLASS_TRAINER="职业训练师"; L.TRAINER_NONE="索引中没有 %s 训练师（%s）。"
L.TRAINER_POINT="指向 %s（%s，%s）。/ls train off 取消。"; L.TRAINER_LABEL="训练师：%s"
L.PROF_USAGE="用法：/ls prof <专业>（如 mining、alchemy、fishing）"
L.PROF_NOTFOUND="未找到专业 '%s'。"; L.PROF_NONE="没有 %s 训练师（%s）。"
L.PROF_POINT="指向 %s（%s，%s）。"; L.PROF_LABEL="%s：%s"
L.MOUNT_30_T="可学习坐骑！"; L.MOUNT_30_S="学习骑术（学徒）- 60% 速度。"
L.MOUNT_60_T="史诗坐骑！"; L.MOUNT_60_S="骑术（熟练）- 100% 速度。"
L.MOUNT_70_T="可以飞行了！"; L.MOUNT_70_S="学习骑术（专家）+ 飞行坐骑。"
L.TRAIN_T="训练你的技能"; L.TRAIN_S="在训练师处学习新法术 - /ls train。"

L.NOTE_FP="在 %s 处获取飞行点。"; L.NOTE_TRAVEL="地区完成！前往 %s。"
L.TIP_VENDOR="在城里修理并卖掉垃圾。"; L.TIP_TURNINAT="在 %s 交任务"

L.LOADED="v%s 已加载。|cffffff00/ls|r 打开。"; L.GUIDE_NOTFOUND="未找到向导：%s"
L.GUIDE_LOADED_MSG="已加载：|cffffff00%s|r（%d 步）"
L.NO_MATCH="没有匹配 '%s' 的向导。/ls list。"
L.PROGRESS_RESET="向导进度已重置。"; L.TRAIN_CANCEL="训练师路径点已取消。"
L.MARK_TARGETS="标记目标："; L.ANT_TRAIL="路径："; L.GUIDE_DONE="向导完成！"
L.ON="开"; L.OFF="关"
