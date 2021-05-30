// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhelm01")~ THEN GOTO crown // Crown of Lies +1
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN crown SAY @1012
    IF ~OR(4)
          !PartyHasItem("helm26")
          !PartyHasItem("helm24")
          !PartyHasItem("ohioun02")
          !PartyHasItem("ohioun03")~ THEN GOTO need_crown
    IF ~PartyHasItem("helm26")
        PartyHasItem("helm24")
        PartyHasItem("ohioun02")
        PartyHasItem("ohioun03")~ THEN GOTO crown_want
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
                                                 TakePartyItemNum("ohioun02",1)
                                                 DestroyItem("ohioun02")
                                                 TakePartyItemNum("helm26",1)
                                                 DestroyItem("helm26")
                                                 TakePartyItemNum("helm24",1)
                                                 DestroyItem("helm24")
                                                 TakePartyItemNum("ohioun03",1)
                                                 DestroyItem("ohioun03")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1015
    COPY_TRANS BOTSMITH 4
  END

END                                            
