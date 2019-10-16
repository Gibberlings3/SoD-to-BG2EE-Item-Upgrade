EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdamul02")~ THEN GOTO NewItem	//Archer's Eagle Eyes
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @16
    IF ~OR(3)
          !PartyHasItem("scrlaj")
          !PartyHasItem("scrla1")
          NumItemsPartyLT("potn39",2)~ THEN GOTO NewItem2
    IF ~PartyHasItem("scrlaj")
        PartyHasItem("scrla1")
        NumItemsPartyGT("potn39",1)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @17
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @18
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",6)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdamul02",1)
                                                 DestroyItem("bdamul02")
                                                 TakePartyItemNum("potn39",2)
                                                 DestroyItem("potn39")
                                                 TakePartyItemNum("scrlaj",1)
                                                 DestroyItem("scrlaj")
                                                 TakePartyItemNum("scrla1",1)
                                                 DestroyItem("scrla1")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END