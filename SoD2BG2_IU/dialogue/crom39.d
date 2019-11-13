EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkshld2")~ THEN GOTO NewItem //Bulwark of Egons +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @151
    IF ~!PartyHasItem("key23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("key23")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @152
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @153
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",47)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkshld2",1)
                                                 TakePartyItemNum("key23",1)
                                                 DestroyItem("dtkshld2")
                                                 DestroyItem("key23")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END