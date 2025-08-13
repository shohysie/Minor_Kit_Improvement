BEGIN ~SH#PDD0~

IF ~!GlobalGT("dualclassed","LOCALS",0)~ THEN BEGIN dualclass0
SAY @510	//选择需要转职的主职业。
IF ~~ THEN REPLY @511 GOTO dualtomage
IF ~~ THEN REPLY @512 GOTO dualtofighter
IF ~~ THEN REPLY @513 GOTO dualtocleric
IF ~~ THEN REPLY @514 GOTO dualtothief
IF ~~ THEN REPLY @515 GOTO dualtobard
IF ~~ THEN REPLY @516 GOTO dualtopaladin
IF ~~ THEN REPLY @517 GOTO dualtodruid
IF ~~ THEN REPLY @518 GOTO dualtoranger
IF ~~ THEN REPLY @519 GOTO dualtosorcerer
IF ~~ THEN REPLY @520 GOTO dualtomonk
IF ~~ THEN REPLY @521 GOTO dualtoshaman
IF ~~ THEN REPLY @533 DO ~DestroySelf()~ EXIT	//我现在还不需要转职。
END

IF ~~ THEN BEGIN dualtomage
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),MAGE) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtofighter
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),FIGHTER) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtocleric
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),CLERIC) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtothief
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),THIEF) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtobard
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),BARD) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtopaladin
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),PALADIN) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtodruid
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),DRUID) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtoranger
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),RANGER) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN dualtosorcerer
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),SORCERER) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN dualtomonk
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),MONK) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN dualtoshaman
SAY @530	//选择需要转职的宗派。
IF ~~ THEN REPLY @531 GOTO dualclass0	//重新选择主职业
IF ~~ THEN REPLY @532 DO ~ChangeClass(LastSummonerOf(),SHAMAN) ClearActions(LastSummonerOf()) ActionOverride(LastSummonerOf(),AddKit(0)) SetGlobal("dualclassed","LOCALS",1)~ EXIT
END
