EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkplat1")~ THEN GOTO PartyHasRedDrag
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasRedDrag
SAY @65
 IF ~OR(4)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("compon18")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("compon18")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @66
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @75
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_15  // blue, white, shadow, silver scales
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // shadow scales
SAY @67
++ @58 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_05 // shadow, silver, blue scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_07 // shadow, silver, white scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // shadow, white, blue scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_11 // shadow, silver, scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // shadow, white scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // shadow, blue scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // blue, white scales
SAY @76
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // white, silver, shadow, blue scales
SAY @76
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",20)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("scaleb")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",22)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("compon18")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",21)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("ohdscale",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("ohdscale")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",19)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("compon19")
                                 DestroyGold(20000)~ REPLY @63 GOTO 56
 IF ~~ THEN REPLY @56 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END