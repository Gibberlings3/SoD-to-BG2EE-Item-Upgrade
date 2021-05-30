// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("cdrem")~ THEN GOTO RemoHelmCespy // Remorhaz Shell Helm
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN RemoHelmCespy SAY @1309
    IF ~PartyHasItem("cdrem")~ THEN GOTO RemoHelmCespy_want
  END

  IF ~~ THEN BEGIN RemoHelmCespy_want SAY @1310
    IF ~PartyGoldLT(6000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(5999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",108)
                                                 TakePartyGold(6000)
                                                 TakePartyItemNum("cdrem",1)
                                                 DestroyItem("cdrem")
                                                 DestroyGold(6000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO RemoHelmCespy_stall
  END

  IF ~~ THEN BEGIN RemoHelmCespy_stall SAY @1311
    COPY_TRANS BOTSMITH 4
  END

END                                            
