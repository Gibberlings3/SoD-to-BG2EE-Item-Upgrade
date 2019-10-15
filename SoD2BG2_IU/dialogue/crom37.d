EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdshld03")~ THEN GOTO NewItem	//Bulwark of Egons +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @145
    IF ~OR(2)
          !PartyHasItem("shld26")
          !PartyHasItem("misc5k")~ THEN GOTO NewItem2
    IF ~PartyHasItem("shld26")
        PartyHasItem("misc5k")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @146
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @147
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",45)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdshld03",1)
                                                 TakePartyItemNum("shld26",1)
                                                 TakePartyItemNum("misc5k",1)
                                                 DestroyItem("bdshld03")
                                                 DestroyItem("shld26")
                                                 DestroyItem("misc5k")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END