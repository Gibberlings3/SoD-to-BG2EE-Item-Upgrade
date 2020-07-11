EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkbln1")~ THEN GOTO NewItem //Martyr's Morningstar +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @239
    IF ~!PartyHasItem("compon14")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon14")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @240
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @241
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",102)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkbln1",1)
                                                 TakePartyItemNum("compon14",1)
                                                 DestroyItem("dtkbln1")
                                                 DestroyItem("compon14")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END