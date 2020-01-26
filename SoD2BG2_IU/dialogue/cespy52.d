// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("sw1h06")~ THEN GOTO varscona3Cespy // Varscona +3
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN varscona3Cespy
SAY @1222
 IF ~OR(2)
     PartyHasItem("sw1h54b")
     PartyHasItem("sw1h54a")~ THEN GOTO varscona3Cespy_want
 IF ~!PartyHasItem("sw1h54b")
     !PartyHasItem("sw1h54a")~ THEN GOTO need_varscona3Cespy
END

IF ~~ THEN BEGIN need_varscona3Cespy SAY @1223
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN varscona3Cespy_want 
SAY @1224
IF ~PartyHasItem("sw1h54b")
!PartyHasItem("sw1h54a")~ THEN + varscona3Cespy_want_01 
IF ~!PartyHasItem("sw1h54b")
PartyHasItem("sw1h54a")~ THEN + varscona3Cespy_want_02
IF ~PartyHasItem("sw1h54b")
PartyHasItem("sw1h54a")~ THEN + varscona3Cespy_want_03
END

IF ~~ THEN BEGIN varscona3Cespy_want_01 
SAY @1225
++ @6031 GOTO HowMuch_eqblade
++ @6032 + varscona3Cespy_stall
++ @6012 GOTO varscona3Cespy_stall
END

IF ~~ THEN BEGIN varscona3Cespy_want_02
SAY @1226
++ @6030 GOTO HowMuch_eqhilt
++ @6033 + varscona3Cespy_stall
++ @6012 GOTO varscona3Cespy_stall
END

IF ~~ THEN BEGIN varscona3Cespy_want_03
SAY @1227
++ @6030 GOTO HowMuch_eqhilt
++ @6031 GOTO HowMuch_eqblade
++ @6012 GOTO varscona3Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_eqhilt 
SAY @1228
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",64)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("sw1h06",1)
                                		TakePartyItemNum("sw1h54a",1)
                                 		DestroyItem("sw1h06")
                                 		DestroyItem("sw1h54a")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO varscona3Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_eqblade
SAY @1229
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",64)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("sw1h06",1)
                                 		TakePartyItemNum("sw1h54b",1)
                                 		DestroyItem("sw1h06")
                                 		DestroyItem("sw1h54b")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO varscona3Cespy_stall
END

IF ~~ THEN BEGIN varscona3Cespy_stall SAY @1230
COPY_TRANS BOTSMITH 4
END


END
