// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd8")~ THEN GOTO CrimsonDawn5Cespy // Crimson Dawn +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN CrimsonDawn5Cespy SAY @1275
    IF ~!PartyHasItem("compon08")~ THEN GOTO need_CrimsonDawn5Cespy
    IF ~PartyHasItem("compon08")~ THEN GOTO CrimsonDawn5Cespy_want
  END

  IF ~~ THEN BEGIN need_CrimsonDawn5Cespy SAY @1276
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN CrimsonDawn5Cespy_want SAY @1277
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",77)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd8",1)
                                                 DestroyItem("dtkswd8")
                                                 TakePartyItemNum("compon08",1)
                                                 DestroyItem("compon08")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO CrimsonDawn5Cespy_stall
  END

  IF ~~ THEN BEGIN CrimsonDawn5Cespy_stall SAY @1278
    COPY_TRANS BOTSMITH 4
  END

END                                            
