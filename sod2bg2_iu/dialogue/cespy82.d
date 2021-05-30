// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkaste1")~ THEN GOTO NewItemCespy // Aster's Edge +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1358
    IF ~!PartyHasItem("compon02")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("compon02")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1359
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1360
    IF ~PartyGoldLT(8000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",122)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("dtkaste1",1)
                                                 DestroyItem("dtkaste1")
                                                 TakePartyItemNum("compon02",1)
                                                 DestroyItem("compon02")
                                                 DestroyGold(8000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1361
    COPY_TRANS BOTSMITH 4
  END

END                                            
