--=============================================================================
-- 한국어. 번역을 수정하려면 해당 줄을 편집하세요.
--=============================================================================
local ADDON, ns = ...
if GetLocale() ~= "koKR" then return end
local L = ns.L

L.VERB_accept="수락"; L.VERB_turnin="완료"; L.VERB_kill="처치"
L.VERB_collect="수집"; L.VERB_talk="대화"; L.VERB_click="클릭"
L.VERB_use="사용"; L.VERB_buy="구매"; L.VERB_fpath="비행 경로"
L.VERB_home="귀환석"; L.VERB_ding="레벨 도달"; L.VERB_goto="이동"; L.VERB_get="획득"

L.NOW="지금"; L.NEXT="다음"; L.STEP_OF="단계 %d / %d"
L.BACK="< 뒤로"; L.SKIP="건너뛰기 >"; L.NO_GUIDE="Lodestar - 가이드 없음"; L.NO_GUIDE_HINT="/ls menu 입력"

L.QUEST_ACCEPTED="퀘스트 수락됨"; L.QUEST_DONE="퀘스트 완료"
L.LEVEL_UP="레벨 %s!"; L.LEVEL_UP_SUB="계속 힘내세요."; L.GUIDE_LOADED="가이드 불러옴"
L.CHOOSE_GUIDE="가이드를 선택하세요"; L.MENU_HINT="/ls menu 로 탐색"; L.QUEST_FALLBACK="퀘스트 #%s"

L.MENU_TITLE="Lodestar 가이드"; L.MENU_SEARCH="지역, 던전, 입장 자격 검색..."
L.CAT_Leveling="레벨업"; L.CAT_Class="직업"; L.CAT_Dungeons="던전"
L.CAT_Attunements="입장 자격"; L.CAT_Reputation="평판"; L.CAT_Dailies="일일"; L.CAT_Events="이벤트"

L.TM_KILL="> Lodestar: 처치 대상"; L.TM_TALK="> Lodestar: 가이드 대상"
L.YARDS="%dyd"; L.DEST="목적지"

L.CLASS_TRAINER="직업 교관"; L.TRAINER_NONE="%s 교관(%s) 없음."
L.TRAINER_POINT="%s (%s, %s) 안내 중. /ls train off 취소."; L.TRAINER_LABEL="교관: %s"
L.PROF_USAGE="사용법: /ls prof <전문 기술> (예: mining, alchemy, fishing)"
L.PROF_NOTFOUND="'%s' 전문 기술을 찾을 수 없음."; L.PROF_NONE="%s 교관 없음 (%s)."
L.PROF_POINT="%s (%s, %s) 안내 중."; L.PROF_LABEL="%s: %s"
L.MOUNT_30_T="탈것 사용 가능!"; L.MOUNT_30_S="탈것 타기(견습) 습득 - 60% 속도."
L.MOUNT_60_T="에픽 탈것!"; L.MOUNT_60_S="탈것 타기(숙련) - 100% 속도."
L.MOUNT_70_T="비행 가능!"; L.MOUNT_70_S="탈것 타기(전문) + 비행 탈것 습득."
L.TRAIN_T="기술을 배우세요"; L.TRAIN_S="교관에게서 새 주문 - /ls train."

L.NOTE_FP="%s 에게서 비행 경로를 받으세요."; L.NOTE_TRAVEL="지역 완료! %s(으)로 이동하세요."
L.TIP_VENDOR="마을에서 수리하고 잡템을 파세요."; L.TIP_TURNINAT="%s 에서 완료"

L.LOADED="v%s 불러옴. |cffffff00/ls|r 로 열기."; L.GUIDE_NOTFOUND="가이드를 찾을 수 없음: %s"
L.GUIDE_LOADED_MSG="불러옴: |cffffff00%s|r (%d단계)"
L.NO_MATCH="'%s' 에 맞는 가이드 없음. /ls list."
L.PROGRESS_RESET="가이드 진행 초기화됨."; L.TRAIN_CANCEL="교관 경유지 취소됨."
L.MARK_TARGETS="대상 표시:"; L.ANT_TRAIL="경로:"; L.GUIDE_DONE="가이드 완료!"
L.ON="켜짐"; L.OFF="꺼짐"
