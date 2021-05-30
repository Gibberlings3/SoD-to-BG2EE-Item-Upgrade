// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkaster")~ THEN GOTO NewItemCespy // Aster' Edge +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1354
    IF ~!PartyHasItem("misc5k")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("misc5k")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1355
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1356
    IF ~PartyGoldLT(8000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",121)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("dtkaster",1)
                                                 DestroyItem("dtkaster")
                                                 TakePartyItemNum("misc5k",1)
                                                 DestroyItem("misc5k")
                                                 DestroyGold(8000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1357
    COPY_TRANS BOTSMITH 4
  END

END                                            
