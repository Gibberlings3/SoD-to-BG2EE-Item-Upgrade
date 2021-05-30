// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdblun09")~ THEN GOTO NewItemCespy // Blazing Glory +5
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN NewItemCespy SAY @1378
    IF ~OR(3)
          !PartyHasItem("dtkruby")
          !PartyHasItem("wand11")
          !PartyHasItem("scrl62")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkruby")
        PartyHasItem("wand11")
        PartyHasItem("scrl62")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1379
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1380
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",127)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdblun09",1)
                                                 DestroyItem("bdblun09")
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkruby")
                                                 TakePartyItemNum("wand11",1)
                                                 DestroyItem("wand11")
                                                 TakePartyItemNum("scrl62",1)
                                                 DestroyItem("scrl62")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1381
    COPY_TRANS BOTSMITH 4
  END

END                                            
