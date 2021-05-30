// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdshld02")~ THEN GOTO NewItemCespy // The Suncatcher +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1346
    IF ~!PartyHasItem("key23")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("key23")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1347
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1348
    IF ~PartyGoldLT(3500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(3499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",2)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("bdshld02",1)
                                                 DestroyItem("bdshld02")
                                                 TakePartyItemNum("key23",1)
                                                 DestroyItem("key23")
                                                 DestroyGold(3500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1349
    COPY_TRANS BOTSMITH 4
  END

END                                            
