EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1h01")~ THEN GOTO NewItem //Crimson Dawn +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @219
    IF ~!PartyHasItem("misc9r")~ THEN GOTO NewItem2
    IF ~PartyHasItem("misc9r")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @220
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @221
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",75)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1h01",1)
                                                 TakePartyItemNum("misc9r",1)
                                                 DestroyItem("bdsw1h01")
                                                 DestroyItem("misc9r")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END