// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsilk01")~ THEN GOTO NewItemCespy // Spider Silk Gi
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1374
    IF ~NumItemsPartyLT("bdsilk01",4)~ THEN GOTO need_NewItemCespy
    IF ~NumItemsPartyGT("bdsilk01",3)~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1375
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1376
    IF ~PartyGoldLT(3500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(3499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",126)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("bdsilk01",4)
                                                 DestroyItem("bdsilk01")
                                                 DestroyGold(3500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1377
    COPY_TRANS BOTSMITH 4
  END

END                                            
