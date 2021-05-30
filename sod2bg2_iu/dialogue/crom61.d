EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd06")~ THEN GOTO NewItem 	//Dervish Crescent of Speed +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @291
    IF ~!PartyHasItem("dtkruby")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkruby")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @292
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @293
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",120)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkswd06",1)
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkswd06")
                                                 DestroyItem("dtkruby")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END