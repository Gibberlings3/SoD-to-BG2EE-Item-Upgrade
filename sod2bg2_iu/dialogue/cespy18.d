// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkplat1")~ THEN GOTO reddragCespy // Chromatic Crimson Dragon Plate (blue, white, shadow, silver, or green)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN reddragCespy
SAY @1070
 IF ~OR(5)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")~ THEN GOTO reddragCespy_want
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")~ THEN GOTO need_reddragCespy
END

IF ~~ THEN BEGIN need_reddragCespy SAY @1071
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN reddragCespy_want 
SAY @1072
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_15  // blue, white, shadow, silver, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_16 // green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_17  // shadow, silver, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_18  // white, silver, blue, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_19  // shadow, silver, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_20  // shadow, white, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_21  // silver, blue, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_22  // silver, white, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_23  // shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_24  // shadow, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_25  // shadow, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_26  // blue, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_27  // blue, white, shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_28 // shadow, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + reddragCespy_want_29 // white, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_30 // silver, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_31 // blue, green scales
END

IF ~~ THEN BEGIN reddragCespy_want_01 // shadow scales
SAY @1073
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_02 // white scales
SAY @1074
++ @6007 GOTO HowMuch_whitescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_03 // silver scales
SAY @1075
++ @6014 GOTO HowMuch_silverscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_04 // blue scales
SAY @1076
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_05 // shadow, silver, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_06 // white, silver, blue scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_07 // shadow, silver, white scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_08 // shadow, white, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_09 // silver, blue scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_10 // silver, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_11 // shadow, silver scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_12 // shadow, white scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_13 // shadow, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_14 // blue, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_15 // white, silver, shadow, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_16 // green scales
SAY @1181
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_17 // shadow, silver, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_18 // white, silver, blue, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_19 // shadow, silver, white, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_20 // shadow, white, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_21 // silver, blue, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_22 // silver, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_23 // shadow, silver, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_24 // shadow, white, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_25 // shadow, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_26 // blue, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_27 // white, silver, shadow, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_28 // shadow, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_29 // white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_30 // silver, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_31 // blue, green scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",19)
                                 		TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",20)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("compon19")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",21)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("compon18")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",22)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("ohdscale",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("ohdscale")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",51)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
