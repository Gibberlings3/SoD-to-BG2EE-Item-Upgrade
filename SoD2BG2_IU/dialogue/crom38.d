EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1h21")~ THEN GOTO NewItem //Vexation +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @148
    IF ~!PartyHasItem("compon15")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon15")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @149
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @150
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",46)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsw1h21",1)
                                                 TakePartyItemNum("compon15",1)
                                                 DestroyItem("bdsw1h21")
                                                 DestroyItem("compon15")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END