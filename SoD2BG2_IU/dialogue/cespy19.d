// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkleat1")~ THEN GOTO shadowdragCespy // Chromatic red Dragonscale (blue, white, red, silver, or green)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN shadowdragCespy
SAY @1070
 IF ~OR(5)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")~ THEN GOTO shadowdragCespy_want
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")~ THEN GOTO need_shadowdragCespy
END

IF ~~ THEN BEGIN need_shadowdragCespy SAY @1071
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN shadowdragCespy_want 
SAY @1072
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_03 // silver scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_05  // red, silver, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_06  // white, silver, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_07  // red, silver, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_09  // silver, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_10  // silver, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_11  // red, silver scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_15  // blue, white, red, silver, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_16 // green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_17  // red, silver, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_18  // white, silver, blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_19  // red, silver, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_20  // red, white, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_21  // silver, blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_22  // silver, white, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_23  // red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_24  // red, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_25  // red, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_26  // blue, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_27  // blue, white, red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_28 // red, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")~ THEN + shadowdragCespy_want_29 // white, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_30 // silver, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")~ THEN + shadowdragCespy_want_31 // blue, green scales
END

IF ~~ THEN BEGIN shadowdragCespy_want_01 // red scales
SAY @1073
++ @6006 GOTO HowMuch_redscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_02 // white scales
SAY @1074
++ @6007 GOTO HowMuch_whitescale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_03 // silver scales
SAY @1075
++ @6014 GOTO HowMuch_silverscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_04 // blue scales
SAY @1076
++ @6013 GOTO HowMuch_bluescale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_05 // red, silver, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_06 // white, silver, blue scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_07 // red, silver, white scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_08 // red, white, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_09 // silver, blue scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_10 // silver, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_11 // red, silver scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_12 // red, white scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_13 // red, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_14 // blue, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_15 // white, silver, red, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_16 // green scales
SAY @1181
++ @6005 GOTO HowMuch_greenscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_17 // red, silver, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_18 // white, silver, blue, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_19 // red, silver, white, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_20 // red, white, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_21 // silver, blue, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_22 // silver, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_23 // red, silver, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_24 // red, white, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_25 // red, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_26 // blue, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_27 // white, silver, red, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_28 // red, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_29 // white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_30 // silver, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_want_31 // blue, green scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + shadowdragCespy_stall
++ @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_redscale 
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",23)
                                 		TakePartyGold(20000)
                                 		TakePartyItemNum("dtkleat1",1)
                                		TakePartyItemNum("scaler",1)
                                 		DestroyItem("dtkleat1")
                                 		DestroyItem("scaler")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",24)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkleat1",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtkleat1")
                                 		DestroyItem("compon19")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",25)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkleat1",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtkleat1")
                                 		DestroyItem("compon18")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",26)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkleat1",1)
                                 		TakePartyItemNum("ohdscale",1)
                                 		DestroyItem("dtkleat1")
                                 		DestroyItem("ohdscale")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",52)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkleat1",1)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("dtkleat1")
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO shadowdragCespy_stall
END

IF ~~ THEN BEGIN shadowdragCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
