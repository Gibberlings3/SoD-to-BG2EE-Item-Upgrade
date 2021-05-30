// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h02")~ THEN GOTO AcidSwd4Cespy // Tongue of Acid +4
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN AcidSwd4Cespy
SAY @1000
 IF ~OR(1)
     PartyHasItem("sw2h15a")~ THEN GOTO AcidSwd4Cespy_want
 IF ~!PartyHasItem("sw2h15a")~ THEN GOTO need_AcidSwd4Cespy
END

IF ~~ THEN BEGIN need_AcidSwd4Cespy SAY @1001
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN AcidSwd4Cespy_want 
SAY @1002
IF ~PartyHasItem("sw2h15a")~ THEN + AcidSwd4Cespy_want_01  // silver hilt
IF ~!PartyHasItem("sw2h15a")~ THEN + AcidSwd4Cespy_want_02 
END

IF ~~ THEN BEGIN AcidSwd4Cespy_want_01 // silver hilt
SAY @1198
++ @6028 GOTO HowMuch_silver
++ @6029 + AcidSwd4Cespy_stall
++ @6003 GOTO AcidSwd4Cespy_stall
END

IF ~~ THEN BEGIN AcidSwd4Cespy_want_02
SAY @1200
++ @6025 GOTO AcidSwd4Cespy_stall
END


IF ~~ THEN BEGIN HowMuch_silver 
SAY @1202
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",58)
                                 		TakePartyGold(10000)
                                 		TakePartyItemNum("bdsw1h02",1)
                                		TakePartyItemNum("sw2h15a",1)
                                 		DestroyItem("bdsw1h02")
                                 		DestroyItem("sw2h15a")
                                 		DestroyGold(10000)~ REPLY @6004 GOTO 11
 IF ~~ THEN REPLY @6003 GOTO AcidSwd4Cespy_stall
END


IF ~~ THEN BEGIN AcidSwd4Cespy_stall SAY @1107
COPY_TRANS BOTSMITH 4
END


END
