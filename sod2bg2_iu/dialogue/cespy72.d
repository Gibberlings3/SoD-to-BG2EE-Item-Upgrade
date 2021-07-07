// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkax1ha")~ THEN GOTO NewItemCespy // Blizzard Axe +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1440
    IF ~!PartyHasItem("dtkfrost")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkfrost")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1441
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1442
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",161)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkax1ha",1)
                                                 DestroyItem("dtkax1ha")
                                                 TakePartyItemNum("dtkfrost",1)
                                                 DestroyItem("dtkfrost")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1443
    COPY_TRANS BOTSMITH 4
  END

END                                            
