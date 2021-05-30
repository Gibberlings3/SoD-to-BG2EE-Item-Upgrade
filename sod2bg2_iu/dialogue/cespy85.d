// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkhmail")~ THEN GOTO NewItemCespy // Plate Mail of the Hallowed Hero +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1370
    IF ~!PartyHasItem("compon08")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("compon08")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1371
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1372
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",125)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkhmail",1)
                                                 DestroyItem("dtkhmail")
                                                 TakePartyItemNum("compon08",1)
                                                 DestroyItem("compon08")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1373
    COPY_TRANS BOTSMITH 4
  END

END                                            
