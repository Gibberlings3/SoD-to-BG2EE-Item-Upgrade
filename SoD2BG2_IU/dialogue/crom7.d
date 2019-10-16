EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbelt02")~ THEN GOTO NewItem	//Belt of the Blademaster
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @19
    IF ~OR(3)
          !PartyHasItem("brac10")
          !PartyHasItem("brac09")
          !PartyHasItem("scrl7t")~ THEN GOTO NewItem2
    IF ~PartyHasItem("brac10")
        PartyHasItem("brac09")
        PartyHasItem("scrl7t")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @20
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @21
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",7)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdbelt02",1)
                                                 DestroyItem("bdbelt02")
                                                 TakePartyItemNum("brac10",1)
                                                 DestroyItem("brac10")
                                                 TakePartyItemNum("brac09",1)
                                                 DestroyItem("brac09")
                                                 TakePartyItemNum("scrl7t",1)
                                                 DestroyItem("scrl7t")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END