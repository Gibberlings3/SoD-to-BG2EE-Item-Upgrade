// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkham4")~ THEN GOTO NewItemCespy // Ashideena +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1450
    IF ~!PartyHasItem("dtkemrld")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkemrld")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1451
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1452
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",164)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkham4",1)
                                                 DestroyItem("dtkham4")
                                                 TakePartyItemNum("dtkemrld",1)
                                                 DestroyItem("dtkemrld")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1453
    COPY_TRANS BOTSMITH 4
  END

END                                            
