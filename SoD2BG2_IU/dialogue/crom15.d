EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("sw1h24")~ THEN GOTO NewItem		//The Scorched Earth +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @43
    IF ~OR(3)
          !PartyHasItem("sw1h53")
          !PartyHasItem("sw1h39")
          NumItemsPartyLT("scrl1b",5)~ THEN GOTO NewItem2
    IF ~PartyHasItem("sw1h53")
        PartyHasItem("sw1h39")
        NumItemsPartyGT("scrl1b",4)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @44
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @45
    IF ~PartyGoldLT(7500)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #66664 DO ~SetGlobal("CDItems","ar0334",15)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("sw1h24",1)
                                                 DestroyItem("sw1h24")
                                                 TakePartyItemNum("sw1h53",1)
                                                 DestroyItem("sw1h53")
                                                 TakePartyItemNum("sw1h39",1)
                                                 DestroyItem("sw1h39")
                                                 TakePartyItemNum("scrl1b",5)
                                                 DestroyItem("scrl1b")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END