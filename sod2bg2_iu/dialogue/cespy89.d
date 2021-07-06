// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdmisc34")~ THEN GOTO NewItemCespy // Lucky Boots
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1444
    IF ~!PartyHasItem("bdmisc34")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("bdmisc34")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1445
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1445
    IF ~PartyGoldLT(2000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(1999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",162)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("bdmisc34",1)
                                                 DestroyItem("bdmisc34")
                                                  DestroyGold(2000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1418
    COPY_TRANS BOTSMITH 4
  END

END                                            
