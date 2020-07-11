EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbolt02")~ THEN GOTO NewItem	//Bolt of Frostfire +2
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @251
    IF ~OR(2)
          NumItemsPartyLT("bdbolt01",40)
          NumItemsPartyLT("bdbolt02",40)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("bdbolt01",39)
        NumItemsPartyGT("bdbolt02",39)~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @252
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @253
    IF ~PartyGoldLT(1000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",107)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(1000)
                                                 TakePartyItemNum("bdbolt01",40)
                                                 DestroyItem("bdbolt01")
                                                 TakePartyItemNum("bdbolt02",40)
                                                 DestroyItem("bdbolt02")
                                                 DestroyGold(1000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END