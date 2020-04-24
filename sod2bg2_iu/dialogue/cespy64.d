// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h22")~ THEN GOTO SeveranceCespy // Severance +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SeveranceCespy SAY @1271
    IF ~!PartyHasItem("misc9r")~ THEN GOTO need_SeveranceCespy
    IF ~PartyHasItem("misc9r")~ THEN GOTO SeveranceCespy_want
  END

  IF ~~ THEN BEGIN need_SeveranceCespy SAY @1272
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SeveranceCespy_want SAY @1273
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",76)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1h22",1)
                                                 DestroyItem("bdsw1h22")
                                                 TakePartyItemNum("misc9r",1)
                                                 DestroyItem("misc9r")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SeveranceCespy_stall
  END

  IF ~~ THEN BEGIN SeveranceCespy_stall SAY @1274
    COPY_TRANS BOTSMITH 4
  END

END                                            
