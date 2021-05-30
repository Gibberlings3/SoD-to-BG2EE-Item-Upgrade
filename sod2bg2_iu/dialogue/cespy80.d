// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkaxe02")~ THEN GOTO NewItemCespy // Maelstrom Axe +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1335
    IF ~!PartyHasItem("dtkbowat")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkbowat")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1336
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1337
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",118)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkaxe02",1)
                                                 DestroyItem("dtkaxe02")
                                                 TakePartyItemNum("dtkbowat",1)
                                                 DestroyItem("dtkbowat")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1338
    COPY_TRANS BOTSMITH 4
  END

END                                            
