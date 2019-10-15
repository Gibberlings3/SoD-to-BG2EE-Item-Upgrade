// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkplat1")~ THEN GOTO reddragCespy // Chromatic Crimson Dragon Plate (blue, white, shadow, or silver)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN reddragCespy
SAY @1070
 IF ~OR(4)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("compon18")~ THEN GOTO reddragCespy_want
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
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
!PartyHasItem("compon18")~ THEN + reddragCespy_want_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("compon18")~ THEN + reddragCespy_want_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("compon18")~ THEN + reddragCespy_want_15  // blue, white, shadow, silver scales
END

IF ~~ THEN BEGIN reddragCespy_want_01 // shadow scales
SAY @1073
++ @58 GOTO HowMuch_shadowscale
++ @64 + reddragCespy_stall
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_02 // white scales
SAY @1074
++ @68 GOTO HowMuch_whitescale
++ @64 + reddragCespy_stall
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_03 // silver scales
SAY @1075
++ @71 GOTO HowMuch_silverscale
++ @64 + reddragCespy_stall
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_04 // blue scales
SAY @1076
++ @73 GOTO HowMuch_bluescale
++ @64 + reddragCespy_stall
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_05 // shadow, silver, blue scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_06 // white, silver, blue scales
SAY @1077
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_07 // shadow, silver, white scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_08 // shadow, white, blue scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_09 // silver, blue scales
SAY @1077
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_10 // silver, white scales
SAY @1077
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_11 // shadow, silver, scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @71 GOTO HowMuch_silverscale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_12 // shadow, white scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_13 // shadow, blue scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_14 // blue, white scales
SAY @1077
++ @68 GOTO HowMuch_whitescale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_15 // white, silver, shadow, blue scales
SAY @1077
++ @58 GOTO HowMuch_shadowscale
++ @68 GOTO HowMuch_whitescale
++ @71 GOTO HowMuch_silverscale
++ @73 GOTO HowMuch_bluescale
++ @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",19)
                                 		TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(20000)~ REPLY @63 GOTO 11
 IF ~~ THEN REPLY @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",20)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("compon19")
                                 		DestroyGold(20000)~ REPLY @63 GOTO 11
 IF ~~ THEN REPLY @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",21)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("compon18")
                                 		DestroyGold(20000)~ REPLY @63 GOTO 11
 IF ~~ THEN REPLY @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",22)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplat1",1)
                                 		TakePartyItemNum("ohdscale",1)
                                 		DestroyItem("dtkplat1")
                                 		DestroyItem("ohdscale")
                                 		DestroyGold(20000)~ REPLY @63 GOTO 11
 IF ~~ THEN REPLY @56 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
