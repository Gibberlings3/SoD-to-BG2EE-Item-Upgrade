// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbrac05")~ THEN GOTO stalkerg // Stalker's Gauntlets of Blinding Strike
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN stalkerg SAY @1080
    IF ~OR(5)
          !PartyHasItem("brac16")
          !PartyHasItem("scrl7q")
          NumItemsPartyLT("potn36",2)
          NumItemsPartyLT("potn41",2)~ THEN GOTO need_stalkerg
    IF ~PartyHasItem("brac16")
        PartyHasItem("scrl7q")
        NumItemsPartyGT("potn36",1)
        NumItemsPartyGT("potn41",1)~ THEN GOTO stalkerg_want
  END

  IF ~~ THEN BEGIN need_stalkerg SAY @1081
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN stalkerg_want SAY @1082
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",27)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdbrac05",1)
                                                 DestroyItem("bdbrac05")
                                                 TakePartyItemNum("brac16",1)
                                                 DestroyItem("brac16")
                                                 TakePartyItemNum("scrl7q",1)
                                                 DestroyItem("scrl7q")
                                                 TakePartyItemNum("potn36",2)
                                                 DestroyItem("potn36")
                                                 TakePartyItemNum("potn41",2)
                                                 DestroyItem("potn41")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO stalkerg_stall
  END

  IF ~~ THEN BEGIN stalkerg_stall SAY @1083
    COPY_TRANS BOTSMITH 4
  END

END                                            
