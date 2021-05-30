// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkcynos")~ THEN GOTO NewItemCespy // Wisened Circlet of the Cynosure
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN NewItemCespy SAY @1362
    IF ~OR(2)
          !PartyHasItem("dtkioun3")
          !PartyHasItem("helm25")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkioun3")
        PartyHasItem("helm25")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1363
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1364
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",123)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkcynos",1)
                                                 DestroyItem("dtkcynos")
                                                 TakePartyItemNum("dtkioun3",1)
                                                 DestroyItem("dtkioun3")
                                                 TakePartyItemNum("helm25",1)
                                                 DestroyItem("helm25")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1365
    COPY_TRANS BOTSMITH 4
  END

END                                            
