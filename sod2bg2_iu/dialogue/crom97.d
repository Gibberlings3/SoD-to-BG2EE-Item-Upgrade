EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkham4")~ THEN GOTO NewItem 	//Ashideena +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @346
    IF ~!PartyHasItem("dtkemrld")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkemrld")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @347
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @348
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",156)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkham4",1)
                                                 TakePartyItemNum("dtkemrld",1)
                                                 DestroyItem("dtkham4")
                                                 DestroyItem("dtkemrld")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END