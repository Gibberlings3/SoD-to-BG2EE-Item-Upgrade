// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkbln1")~ THEN GOTO Martyr1ACespy // Martyr's Morningstar +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN Martyr1ACespy SAY @1290
    IF ~!PartyHasItem("compon14")~ THEN GOTO need_Martyr1ACespy
    IF ~PartyHasItem("compon14")~ THEN GOTO Martyr1ACespy_want
  END

  IF ~~ THEN BEGIN need_Martyr1ACespy SAY @1291
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Martyr1ACespy_want SAY @1292
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",102)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkbln1",1)
                                                 DestroyItem("dtkbln1")
                                                 TakePartyItemNum("compon14",1)
                                                 DestroyItem("compon14")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Martyr1ACespy_stall
  END

  IF ~~ THEN BEGIN Martyr1ACespy_stall SAY @1293
    COPY_TRANS BOTSMITH 4
  END

END                                            
