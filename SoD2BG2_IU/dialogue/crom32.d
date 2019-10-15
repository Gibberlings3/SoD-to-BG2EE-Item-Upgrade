EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("bdhalb01")~ THEN GOTO PartyHasStormPike	//Maelstrom Axe +3/Maelstrom Pike +4
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasStormPike
SAY @129
 IF ~PartyHasItem("halb09a")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("halb09a")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @130
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @131
++ @6000 GOTO HowMuch_axe
++ @6001 GOTO HowMuch_halberd
++ @6002 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_axe 
SAY @132
 IF ~PartyGoldGT(7499)~ THEN DO ~SetGlobal("CDItems","ar0334",39)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(7500)
                                 TakePartyItemNum("bdhalb01",1)
                                 TakePartyItemNum("halb09a",1)
                                 DestroyItem("bdhalb01")
                                 DestroyItem("halb09a")
                                 DestroyGold(7500)~ REPLY @6004 GOTO 56
 IF ~~ THEN REPLY @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_halberd
SAY @132
 IF ~PartyGoldGT(7499)~ THEN DO ~SetGlobal("CDItems","ar0334",40)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(7500)
                                 TakePartyItemNum("bdhalb01",1)
                                 TakePartyItemNum("halb09a",1)
                                 DestroyItem("bdhalb01")
                                 DestroyItem("halb09a")
                                 DestroyGold(7500)~ REPLY @6004 GOTO 56
 IF ~~ THEN REPLY @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END