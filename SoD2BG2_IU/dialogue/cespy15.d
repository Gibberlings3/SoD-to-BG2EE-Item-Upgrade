// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("sw1h24")~ THEN GOTO flameswd // The Scorched Earth +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN flameswd SAY @1054
    IF ~OR(3)
          !PartyHasItem("sw1h53")
          !PartyHasItem("sw1h39")
          NumItemsPartyLT("scrl1b",5)~ THEN GOTO need_flameswd
    IF ~PartyHasItem("sw1h53")
        PartyHasItem("sw1h39")
        NumItemsPartyGT("scrl1b",4)~ THEN GOTO flameswd_want
  END

  IF ~~ THEN BEGIN need_flameswd SAY @1055
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN flameswd_want SAY @1056
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",15)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("sw1h24",1)
                                                 DestroyItem("sw1h24")
                                                 TakePartyItemNum("sw1h53",1)
                                                 DestroyItem("sw1h53")
                                                 TakePartyItemNum("sw1h39",1)
                                                 DestroyItem("sw1h39")
                                                 TakePartyItemNum("scrl1b",5)
                                                 DestroyItem("scrl1b")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO flameswd_stall
  END

  IF ~~ THEN BEGIN flameswd_stall SAY @1057
    COPY_TRANS BOTSMITH 4
  END

END                                            
