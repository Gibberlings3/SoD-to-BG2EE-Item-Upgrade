EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd03")~ THEN GOTO NewItem 	//The Scorched Earth +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @83
    IF ~!PartyHasItem("dtkruby")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkruby")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @84
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @85
    IF ~PartyGoldLT(15000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(14999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",28)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd03",1)
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkswd03")
                                                 DestroyItem("dtkruby")
                                                 DestroyGold(15000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END