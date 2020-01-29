EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbrac05")~ THEN GOTO NewItem	// Stalker's Gauntlets of Blinding Strike
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @80
    IF ~OR(4)
          !PartyHasItem("brac16")
          !PartyHasItem("scrl7q")
          NumItemsPartyLT("potn36",2)
          NumItemsPartyLT("potn41",2)~ THEN GOTO NewItem2
    IF ~PartyHasItem("brac16")
        PartyHasItem("scrl7q")
        NumItemsPartyGT("potn36",1)
        NumItemsPartyGT("potn41",1)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @81
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @82
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",27)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
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
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END