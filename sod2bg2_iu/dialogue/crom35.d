EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdioun01")~ THEN GOTO NewItem	//Trollkiller's Ioun Stone
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @139
    IF ~OR(4)
          !PartyHasItem("helm20")
          NumItemsPartyLT("potn42",5)
          NumItemsPartyLT("potn09",5)
          NumItemsPartyLT("scrl94",5)~ THEN GOTO NewItem2
    IF ~PartyHasItem("helm20")
        NumItemsPartyGT("potn42",4)
        NumItemsPartyGT("potn09",4)
        NumItemsPartyGT("scrl94",4)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @140
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @141
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",43)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
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
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END