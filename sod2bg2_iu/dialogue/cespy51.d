// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h08")~ THEN GOTO DCrescent // Dervish Crescent of Speed +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN DCrescent SAY @1218
    IF ~OR(2)
          !PartyHasItem("sw1h30")
          !PartyHasItem("potn23")~ THEN GOTO need_DCrescent
    IF ~PartyHasItem("sw1h30")
        PartyHasItem("potn23")~ THEN GOTO DCrescent_want
  END

  IF ~~ THEN BEGIN need_DCrescent SAY @1219
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DCrescent_want SAY @1220
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",63)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1h08",1)
                                                 DestroyItem("bdsw1h08")
                                                 TakePartyItemNum("sw1h30",1)
                                                 DestroyItem("sw1h30")
                                                 TakePartyItemNum("potn23",1)
                                                 DestroyItem("potn23")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DCrescent_stall
  END

  IF ~~ THEN BEGIN DCrescent_stall SAY @1221
    COPY_TRANS BOTSMITH 4
  END

END                                            
