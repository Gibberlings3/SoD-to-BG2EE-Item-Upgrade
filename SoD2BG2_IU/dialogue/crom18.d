EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkplat1")~ THEN GOTO PartyHasRedDrag	//Chromatic Crimson/Carmine Viridian Dragon Plate
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasRedDrag
SAY @65
 IF ~OR(5)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
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
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_15  // blue, white, shadow, silver scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_16 // green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_17 // white, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_18 // silver, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_19 // blue, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_20  // shadow, silver, blue, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_21  // shadow, silver, white, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_22  // white, silver, blue, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_23  // shadow, white, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_24  // silver, blue, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_25  // silver, white, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_26  // shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_27  // shadow, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_28  // shadow, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_29  // blue, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + PartyHasAllParts_30  // blue, white, shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + PartyHasAllParts_31 // shadow, green scales
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // shadow scales
SAY @67
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // white scales
SAY @69
++ @6007 GOTO HowMuch_whitescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // silver scales
SAY @70
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // blue scales
SAY @72
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // shadow, silver, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // white, silver, blue scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // shadow, silver, white scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // shadow, white, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // silver, blue scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // silver, white scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // shadow, silver, scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // shadow, white scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // shadow, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // blue, white scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // white, silver, shadow, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_16 // green scales
SAY @163
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_17 // white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_18 // silver, green scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_19 // blue, green scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_20 // shadow, silver, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_21 // shadow, silver, white, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_22 // white, silver, blue, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_23 // shadow, white, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_24 // silver, blue, green scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_25 // silver, white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_26 // shadow, silver, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_27 // shadow, white, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_28 // shadow, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_29 // blue, white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_30 // white, silver, shadow, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_31 // shadow, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
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
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
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
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
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
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
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
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @74
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("CDItems","ar0334",51)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("bdscaleg")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END