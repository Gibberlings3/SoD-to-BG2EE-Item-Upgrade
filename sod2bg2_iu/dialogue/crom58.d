EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtknecro")~ THEN GOTO NewItem //Raiment of the Demilich
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @205
    IF ~!PartyHasItem("compon06")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon06")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @206
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @207
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",70)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtknecro",1)
                                                 TakePartyItemNum("compon06",1)
                                                 DestroyItem("dtknecro")
                                                 DestroyItem("compon06")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END