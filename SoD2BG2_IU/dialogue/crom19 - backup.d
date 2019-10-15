EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkleat1")~ THEN GOTO PartyHasShadowDrag
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasShadowDrag
SAY @77
 IF ~OR(4)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("compon18")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("compon18")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @78
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @75
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_03 // silver scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_05  // red, silver, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_06  // white, silver, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_07  // red, silver, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_09  // silver, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_10  // silver, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_11  // red, silver scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_15  // red, white, blue, silver scales
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // red scales
SAY @79
++ @54 GOTO HowMuch_redscale
++ @64 + MovingRightAlong
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // white scales
SAY @69
++ @68 GOTO HowMuch_whitescale
++ @64 + MovingRightAlong
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // silver scales
SAY @70
++ @71 GOTO HowMuch_silverscale
++ @64 + MovingRightAlong
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // blue scales
SAY @72
++ @73 GOTO HowMuch_bluescale
++ @64 + MovingRightAlong
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // red, silver, blue scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // white, silver, blue scales
SAY @76
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // red, silver, white scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // red, white, blue scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // silver, blue scales
SAY @76
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // silver, white scales
SAY @76
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // red, silver, scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // red, white scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @68 GOTO HowMuch_whitescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // red, blue scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // blue, white scales
SAY @76
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // red, silver, blue, white scales
SAY @76
++ @54 GOTO HowMuch_redscale
++ @71 GOTO HowMuch_silverscale
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_redscale 
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",24)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("scaler")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",26)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("compon18")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",25)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("ohdscale",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("ohdscale")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",23)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("compon19")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END