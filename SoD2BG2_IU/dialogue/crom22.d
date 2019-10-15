EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbelt01")~ THEN GOTO NewItem 	//Cloverleaf +1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @86
    IF ~NumItemsPartyLT("scrl93",5)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("scrl93",4)~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @87
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @88
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",29)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdbelt01",1)
                                                 TakePartyItemNum("scrl93",5)
                                                 DestroyItem("bdbelt01")
                                                 DestroyItem("scrl93")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END