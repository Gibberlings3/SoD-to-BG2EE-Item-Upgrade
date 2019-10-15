// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdioun01")~ THEN GOTO trollstone // Trollkiller's Ioun Stone
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN trollstone SAY @1149
    IF ~OR(4)
          !PartyHasItem("helm20")
          NumItemsPartyLT("potn42",5)
          NumItemsPartyLT("potn09",5)
          NumItemsPartyLT("scrl94",5)~ THEN GOTO need_trollstone
    IF ~PartyHasItem("helm20")
        NumItemsPartyGT("potn42",4)
        NumItemsPartyGT("potn09",4)
        NumItemsPartyGT("scrl94",4)~ THEN GOTO trollstone_want
  END

  IF ~~ THEN BEGIN need_trollstone SAY @1150
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN trollstone_want SAY @1151
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",43)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdioun01",1)
                                                 DestroyItem("bdioun01")
                                                 TakePartyItemNum("helm20",1)
                                                 DestroyItem("helm20")
                                                 TakePartyItemNum("potn42",5)
                                                 DestroyItem("potn42")
                                                 TakePartyItemNum("potn09",5)
                                                 DestroyItem("potn09")
                                                 TakePartyItemNum("scrl94",5)
                                                 DestroyItem("scrl94")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO trollstone_stall
  END

  IF ~~ THEN BEGIN trollstone_stall SAY @1152
    COPY_TRANS BOTSMITH 4
  END

END                                            
