EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1h08")~ THEN GOTO NewItem	//Dervish Crescent of Speed +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @179
    IF ~OR(2)
          !PartyHasItem("sw1h30")
          !PartyHasItem("potn23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("sw1h30")
        PartyHasItem("potn23")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @180
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @181
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",63)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1h08",1)
                                                 DestroyItem("bdsw1h08")
                                                 TakePartyItemNum("sw1h30",1)
                                                 DestroyItem("sw1h30")
                                                 TakePartyItemNum("potn23",1)
                                                 DestroyItem("potn23")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END