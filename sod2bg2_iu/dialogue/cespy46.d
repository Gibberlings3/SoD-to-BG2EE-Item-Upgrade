// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkdag1")~ THEN GOTO NewItemCespy // Acid-Etched Boomerang Dagger +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1432
    IF ~!PartyHasItem("dtktopaz")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtktopaz")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1433
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1434
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",160)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkdag1",1)
                                                 DestroyItem("dtkdag1")
                                                 TakePartyItemNum("dtktopaz",1)
                                                 DestroyItem("dtktopaz")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1435
    COPY_TRANS BOTSMITH 4
  END

END                                            
