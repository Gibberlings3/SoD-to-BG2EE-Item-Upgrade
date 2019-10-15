// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdshld01")~ THEN GOTO Bfist // Mirrored Buckler of the Fist +2
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN Bfist SAY @1046
    IF ~OR(3)
          !PartyHasItem("shld24")
          NumItemsPartyLT("scrl1n",2)
          NumItemsPartyLT("potn38",2)~ THEN GOTO need_Bfist
    IF ~PartyHasItem("shld24")
        NumItemsPartyGT("scrl1n",1)
        NumItemsPartyGT("potn38",1)~ THEN GOTO Bfist_want
  END

  IF ~~ THEN BEGIN need_Bfist SAY @1047
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Bfist_want SAY @1048
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",13)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdshld01",1)
                                                 DestroyItem("bdshld01")
                                                 TakePartyItemNum("shld24",1)
                                                 DestroyItem("shld24")
                                                 TakePartyItemNum("scrl1n",2)
                                                 DestroyItem("scrl1n")
                                                 TakePartyItemNum("potn38",2)
                                                 DestroyItem("potn38")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO bfist_stall
  END

  IF ~~ THEN BEGIN bfist_stall SAY @1049
    COPY_TRANS BOTSMITH 4
  END

END                                            
