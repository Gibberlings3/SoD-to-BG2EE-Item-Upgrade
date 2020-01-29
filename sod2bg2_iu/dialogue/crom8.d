EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bddart01")~ THEN GOTO NewItem	//Biter +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @22
    IF ~OR(2)
          NumItemsPartyLT("scrl95",5)
          NumItemsPartyLT("misc37",5)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("scrl95",5)
        NumItemsPartyGT("misc37",5)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @23
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @24
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",8)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddart01",1)
                                                 DestroyItem("bddart01")
                                                 TakePartyItemNum("scrl95",5)
                                                 DestroyItem("scrl95")
                                                 TakePartyItemNum("misc37",5)
                                                 DestroyItem("misc37")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END