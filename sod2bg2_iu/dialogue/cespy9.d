// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h06")~ THEN GOTO SwordIcy5Cespy // Icy Blade of the Void +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordIcy5Cespy SAY @1032
    IF ~!PartyHasItem("compon06")~ THEN GOTO need_SwordIcy5Cespy
    IF ~PartyHasItem("compon06")~ THEN GOTO SwordIcy5Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordIcy5Cespy SAY @1033
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordIcy5Cespy_want SAY @1034
    IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",9)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("bdsw1h06",1)
                                                 DestroyItem("bdsw1h06")
                                                 TakePartyItemNum("compon06",1)
                                                 DestroyItem("compon06")
                                                 DestroyGold(15000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordIcy5Cespy_stall
  END

  IF ~~ THEN BEGIN SwordIcy5Cespy_stall SAY @1035
    COPY_TRANS BOTSMITH 4
  END

END                                            
