EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdshld05")~ THEN GOTO NewItem //Dragonscale Aegis +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @164
    IF ~!PartyHasItem("dtkscal1")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkscal1")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @165
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @166
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",57)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdshld05",1)
                                                 TakePartyItemNum("dtkscal1",1)
                                                 DestroyItem("bdshld05")
                                                 DestroyItem("dtkscal1")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END