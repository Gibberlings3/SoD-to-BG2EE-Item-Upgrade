// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bddagg05")~ THEN GOTO NewItemCespy // Acid-Etched Boomerang Dagger +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1428
    IF ~!PartyHasItem("dagg11")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dagg11")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1429
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1430
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",57)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddagg05",1)
                                                 DestroyItem("bddagg05")
                                                 TakePartyItemNum("dagg11",1)
                                                 DestroyItem("dagg11")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1431
    COPY_TRANS BOTSMITH 4
  END

END                                            
