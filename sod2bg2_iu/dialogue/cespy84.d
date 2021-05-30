// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtksolag")~ THEN GOTO NewItemCespy // Warded Solar Aegis +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN NewItemCespy SAY @1366
    IF ~OR(2)
          !PartyHasItem("helm18")
          !PartyHasItem("miscau")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("helm18")
        PartyHasItem("miscau")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1367
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1368
    IF ~PartyGoldLT(3500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(3499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",124)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("dtksolag",1)
                                                 DestroyItem("dtksolag")
                                                 TakePartyItemNum("helm18",1)
                                                 DestroyItem("helm18")
                                                 TakePartyItemNum("miscau",1)
                                                 DestroyItem("miscau")
                                                 DestroyGold(3500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1369
    COPY_TRANS BOTSMITH 4
  END

END                                            
