// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbow04")~ THEN GOTO bbowCespy // Bow of the Wailing Banshee +4
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN bbowCespy
SAY @1104
 IF ~OR(3)
     PartyHasItem("bdbrd04")
     PartyHasItem("compon10")
     PartyHasItem("bow19b")~ THEN GOTO bbowCespy_want
 IF ~!PartyHasItem("bdbrd04")
     !PartyHasItem("compon10")
     !PartyHasItem("bow19b")~ THEN GOTO need_bbowCespy
END

IF ~~ THEN BEGIN need_bbowCespy SAY @1105
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN bbowCespy_want 
SAY @1106
IF ~PartyHasItem("bdbrd04")
!PartyHasItem("compon10")
PartyHasItem("bow19b")~ THEN + bbowCespy_want_01 // gesen + bagpipe
IF ~PartyHasItem("bdbrd04")
PartyHasItem("compon10")
!PartyHasItem("bow19b")~ THEN + bbowCespy_want_02 // gond + bagpipe
IF ~PartyHasItem("bdbrd04")
PartyHasItem("compon10")
PartyHasItem("bow19b")~ THEN + bbowCespy_want_03 // gond + gesen + bagpipe
IF ~!PartyHasItem("bdbrd04")
!PartyHasItem("compon10")
PartyHasItem("bow19b")~ THEN + bbowCespy_want_04 // gesen
IF ~!PartyHasItem("bdbrd04")
PartyHasItem("compon10")
!PartyHasItem("bow19b")~ THEN + bbowCespy_want_04  // gond
IF ~!PartyHasItem("bdbrd04")
PartyHasItem("compon10")
PartyHasItem("bow19b")~ THEN + bbowCespy_want_04  // gesen + gond
IF ~PartyHasItem("bdbrd04")
!PartyHasItem("compon10")
!PartyHasItem("bow19b")~ THEN + bbowCespy_want_04  // bagpipe
END

IF ~~ THEN BEGIN bbowCespy_want_01 // gesen + bagpipe
SAY @1109
++ @6021 GOTO HowMuch_gesen
++ @6024 + bbowCespy_stall
++ @6003 GOTO bbowCespy_stall
END

IF ~~ THEN BEGIN bbowCespy_want_02 // gond + bagpipe
SAY @1110
++ @6022 GOTO HowMuch_gond
++ @6023 + bbowCespy_stall
++ @6003 GOTO bbowCespy_stall
END

IF ~~ THEN BEGIN bbowCespy_want_03 // gond + gesen + bagpipe
SAY @1111
++ @6021 GOTO HowMuch_gesen
++ @6022 GOTO HowMuch_gond
++ @6003 GOTO bbowCespy_stall
END

IF ~~ THEN BEGIN bbowCespy_want_04 // all other combinations
SAY @1112
++ @6025 GOTO bbowCespy_stall
END


IF ~~ THEN BEGIN HowMuch_gesen 
SAY @1108
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",32)
                                 		TakePartyGold(10000)
                                 		TakePartyItemNum("bdbow04",1)
                                		TakePartyItemNum("bdbrd04",1)
                                		TakePartyItemNum("bow19b",1)
                                 		DestroyItem("bdbow04")
                                 		DestroyItem("bdbrd04")
                                 		DestroyItem("bow19b")
                                 		DestroyGold(10000)~ REPLY @6004 GOTO 11
 IF ~~ THEN REPLY @6003 GOTO bbowCespy_stall
END

IF ~~ THEN BEGIN HowMuch_gond 
SAY @1108
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",32)
                                 		TakePartyGold(10000)
                                 		TakePartyItemNum("bdbow04",1)
                                		TakePartyItemNum("bdbrd04",1)
                                		TakePartyItemNum("compon10",1)
                                 		DestroyItem("bdbow04")
                                 		DestroyItem("bdbrd04")
                                 		DestroyItem("compon10")
                                 		DestroyGold(10000)~ REPLY @6004 GOTO 11
 IF ~~ THEN REPLY @6003 GOTO bbowCespy_stall
END


IF ~~ THEN BEGIN bbowCespy_stall SAY @1107
COPY_TRANS BOTSMITH 4
END


END
