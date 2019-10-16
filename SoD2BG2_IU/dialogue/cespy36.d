// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkioun1")~ THEN GOTO TrollStone2Cespy // Trollkiller's Ioun Stone +1
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN TrollStone2Cespy SAY @1153
    IF ~!PartyHasItem("helm34")~ THEN GOTO need_TrollStone2Cespy
    IF ~PartyHasItem("helm34")~ THEN GOTO TrollStone2Cespy_want
  END

  IF ~~ THEN BEGIN need_TrollStone2Cespy SAY @1154
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN TrollStone2Cespy_want SAY @1155
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",44)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkioun1",1)
                                                 DestroyItem("dtkioun1")
                                                 TakePartyItemNum("helm34",1)
                                                 DestroyItem("helm34")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO TrollStone2Cespy_stall
  END

  IF ~~ THEN BEGIN TrollStone2Cespy_stall SAY @1156
    COPY_TRANS BOTSMITH 4
  END

END                                            
