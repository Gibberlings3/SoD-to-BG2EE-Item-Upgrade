EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdxbow01")~ THEN GOTO NewItem //Astral Crossbow +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @154
    IF ~!PartyHasItem("bow19a")~ THEN GOTO NewItem2
    IF ~PartyHasItem("bow19a")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @155
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @156
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",48)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdxbow01",1)
                                                 TakePartyItemNum("bow19a",1)
                                                 DestroyItem("bdxbow01")
                                                 DestroyItem("bow19a")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END