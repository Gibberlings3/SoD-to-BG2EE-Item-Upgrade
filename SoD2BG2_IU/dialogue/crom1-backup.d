EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1h02")~ THEN GOTO NewItem	//Tongue of Burning Acid +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @0
    IF ~OR(2)
          !PartyHasItem("sw1h60")
          !PartyHasItem("scrl7t")~ THEN GOTO NewItem2
    IF ~PartyHasItem("sw1h60")
        PartyHasItem("scrl7t")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @1
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @2
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdsw1h02",1)
                                                 TakePartyItemNum("sw1h60",1)
                                                 TakePartyItemNum("scrl7t",1)
                                                 DestroyItem("bdsw1h02")
                                                 DestroyItem("sw1h60")
                                                 DestroyItem("scrl7t")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END