EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdblun04")~ THEN GOTO NewItem	//Martyr's Morningstar +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @236
    IF ~OR(2)
          NumItemsPartyLT("misc44",1)
          NumItemsPartyLT("scrl5e",1)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("misc44",0)
        NumItemsPartyGT("scrl5e",0)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @237
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @238
    IF ~PartyGoldLT(3000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(2999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",101)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(3000)
                                                 TakePartyItemNum("bdblun04",1)
                                                 DestroyItem("bdblun04")
                                                 TakePartyItemNum("misc44",1)
                                                 DestroyItem("misc44")
                                                 TakePartyItemNum("scrl5e",1)
                                                 DestroyItem("scrl5e")
                                                 DestroyGold(3000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END