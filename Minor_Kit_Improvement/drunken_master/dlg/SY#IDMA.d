BEGIN ~SY#IDMA~

IF ~!HasItem("SY#IDMA1",LastTalkedToBy()) !HasItem("SY#IDMA2",LastTalkedToBy()) !TriggerOverride(LastTalkedToBy(),HaveSpellRES("SY#IDMA0"))~ THEN BEGIN placegourd1
SAY @623	//选择酒壶位置
IF ~~ THEN REPLY @625 DO ~SetGlobal("gourdplace","LOCALS",1)~ GOTO alignswitch	//放置在快捷物品栏，放置后不可移动。
IF ~~ THEN REPLY @626 DO ~SetGlobal("gourdplace","LOCALS",2)~ GOTO alignswitch	//忽略酒壶实体，作为技能使用。不占据物品栏但存在被打断饮酒的可能。
END

IF ~OR(3) HasItem("SY#IDMA1",LastTalkedToBy()) HasItem("SY#IDMA2",LastTalkedToBy()) TriggerOverride(LastTalkedToBy(),HaveSpellRES("SY#IDMA0"))~ THEN BEGIN placegourd2
SAY @623	//选择酒壶位置
IF ~~ THEN REPLY @625 DO ~SetGlobal("gourdplace","LOCALS",1)~ EXIT	//放置在快捷物品栏，放置后不可移动。
IF ~~ THEN REPLY @626 DO ~SetGlobal("gourdplace","LOCALS",2)~ EXIT	//忽略酒壶实体，作为技能使用。不占据物品栏但存在被打断饮酒的可能。
END

IF ~~ THEN BEGIN alignswitch
SAY @627	//是否进行阵营偏移
IF ~~ THEN REPLY @628 DO ~SetGlobal("changealign","LOCALS",1)~ EXIT	//中立
IF ~~ THEN REPLY @629 DO ~SetGlobal("changealign","LOCALS",2)~ EXIT	//叛逆
IF ~~ THEN REPLY @630 EXIT	//无视
END

