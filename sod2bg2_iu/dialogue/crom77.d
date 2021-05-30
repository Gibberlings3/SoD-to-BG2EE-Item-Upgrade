EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswda3")~ THEN GOTO NewItem //Gift of the Demon +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @259
    IF ~!PartyHasItem("dtkdebld")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkdebld")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @260
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @261
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",110)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswda3",1)
                                                 TakePartyItemNum("dtkdebld",1)
                                                 DestroyItem("dtkswda3")
                                                 DestroyItem("dtkdebld")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END