EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd07")~ THEN GOTO NewItem //Varscona +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @190
    IF ~!PartyHasItem("dtkdhilt")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkdhilt")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @191
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @192
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",65)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd07",1)
                                                 TakePartyItemNum("dtkdhilt",1)
                                                 DestroyItem("dtkswd07")
                                                 DestroyItem("dtkdhilt")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END