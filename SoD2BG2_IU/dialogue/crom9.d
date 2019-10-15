EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1h06")~ THEN GOTO NewItem //Icy Blade of the Void +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @25
    IF ~!PartyHasItem("compon06")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon06")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @26
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @27
    IF ~PartyGoldLT(15000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(14999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",9)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("bdsw1h06",1)
                                                 TakePartyItemNum("compon06",1)
                                                 DestroyItem("bdsw1h06")
                                                 DestroyItem("compon06")
                                                 DestroyGold(15000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END