// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h01")~ THEN GOTO CrimsonDawnCespy // Crimson Dawn +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN CrimsonDawnCespy SAY @1267
    IF ~!PartyHasItem("misc9r")~ THEN GOTO need_CrimsonDawnCespy
    IF ~PartyHasItem("misc9r")~ THEN GOTO CrimsonDawnCespy_want
  END

  IF ~~ THEN BEGIN need_CrimsonDawnCespy SAY @1268
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN CrimsonDawnCespy_want SAY @1269
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",75)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1h01",1)
                                                 DestroyItem("bdsw1h01")
                                                 TakePartyItemNum("misc9r",1)
                                                 DestroyItem("misc9r")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO CrimsonDawnCespy_stall
  END

  IF ~~ THEN BEGIN CrimsonDawnCespy_stall SAY @1270
    COPY_TRANS BOTSMITH 4
  END

END                                            
