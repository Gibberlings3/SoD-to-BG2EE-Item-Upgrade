EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdshld01")~ THEN GOTO NewItem	//Mirrored Buckler of the Fist
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @37
    IF ~OR(3)
          !PartyHasItem("shld24")
          NumItemsPartyLT("scrl1n",2)
          NumItemsPartyLT("potn38",2)~ THEN GOTO NewItem2
    IF ~PartyHasItem("shld24")
        NumItemsPartyGT("scrl1n",1)
        NumItemsPartyGT("potn38",1)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @38
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @39
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",13)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdshld01",1)
                                                 DestroyItem("bdshld01")
                                                 TakePartyItemNum("shld24",1)
                                                 DestroyItem("shld24")
                                                 TakePartyItemNum("scrl1n",2)
                                                 DestroyItem("scrl1n")
                                                 TakePartyItemNum("potn38",2)
                                                 DestroyItem("potn38")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END