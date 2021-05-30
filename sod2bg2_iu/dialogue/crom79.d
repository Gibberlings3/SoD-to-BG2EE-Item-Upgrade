EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd7a")~ THEN GOTO NewItem //Varscona +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @267
    IF ~!PartyHasItem("dtkshgem")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkshgem")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @268
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @269
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",112)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkswd7a",1)
                                                 TakePartyItemNum("dtkshgem",1)
                                                 DestroyItem("dtkswd7a")
                                                 DestroyItem("dtkshgem")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END