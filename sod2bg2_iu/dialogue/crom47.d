EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd1b")~ THEN GOTO NewItem //Tongue of Acid +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @167
    IF ~!PartyHasItem("dtktopaz")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtktopaz")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @168
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @169
    IF ~PartyGoldLT(15000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(14999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",59)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd1b",1)
                                                 TakePartyItemNum("dtktopaz",1)
                                                 DestroyItem("dtkswd1b")
                                                 DestroyItem("dtktopaz")
                                                 DestroyGold(15000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END