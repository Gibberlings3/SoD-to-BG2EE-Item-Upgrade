// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhelm01")~ THEN GOTO crown // Crown of Truths
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN crown SAY @1012
    IF ~OR(4)
          !PartyHasItem("misc42")
          !PartyHasItem("misc43")
          !PartyHasItem("misc41")
          !PartyHasItem("potn43")~ THEN GOTO need_crown
    IF ~PartyHasItem("misc42")
        PartyHasItem("misc43")
        PartyHasItem("misc41")
        PartyHasItem("potn43")~ THEN GOTO crown_want
  END

  IF ~~ THEN BEGIN need_crown SAY @1013
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN crown_want SAY @1014
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",4)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhelm01",1)
                                                 DestroyItem("bdhelm01")
                                                 TakePartyItemNum("misc41",1)
                                                 DestroyItem("misc41")
                                                 TakePartyItemNum("misc42",1)
                                                 DestroyItem("misc42")
                                                 TakePartyItemNum("misc43",1)
                                                 DestroyItem("misc43")
                                                 TakePartyItemNum("potn43",1)
                                                 DestroyItem("potn43")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1015
    COPY_TRANS BOTSMITH 4
  END

END                                            
