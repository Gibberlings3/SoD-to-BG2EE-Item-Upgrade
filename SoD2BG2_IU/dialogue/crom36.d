EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkioun1")~ THEN GOTO NewItem //Trollkiller's Ioun Stone +1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @142
    IF ~!PartyHasItem("helm34")~ THEN GOTO NewItem2
    IF ~PartyHasItem("helm34")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @143
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @144
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",44)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkioun1",1)
                                                 TakePartyItemNum("helm34",1)
                                                 DestroyItem("dtkioun1")
                                                 DestroyItem("helm34")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END