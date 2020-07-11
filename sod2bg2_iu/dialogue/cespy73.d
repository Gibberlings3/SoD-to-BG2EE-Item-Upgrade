// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbolt01")~ THEN GOTO BoltFrostfire2 // Bolf of Frostfire +2
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN BoltFrostfire2 SAY @1304
    IF ~OR(2)
          NumItemsPartyLT("bdbolt01",40)
          NumItemsPartyLT("bdbolt02",40)~ THEN GOTO need_BoltFrostfire2
    IF ~NumItemsPartyGT("bdbolt01",39)
        NumItemsPartyGT("bdbolt02",39)~ THEN GOTO BoltFrostfire2_want
  END

  IF ~~ THEN BEGIN need_BoltFrostfire2 SAY @1306
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN BoltFrostfire2_want SAY @1307
    IF ~PartyGoldLT(1000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",107)
                                                 TakePartyGold(1000)
                                                 TakePartyItemNum("bdbolt01",40)
                                                 DestroyItem("bdbolt01")
                                                 TakePartyItemNum("bdbolt02",40)
                                                 DestroyItem("bdbolt02")
                                                 DestroyGold(1000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO BoltFrostfire2_stall
  END

  IF ~~ THEN BEGIN BoltFrostfire2_stall SAY @1308
    COPY_TRANS BOTSMITH 4
  END

END                                            
