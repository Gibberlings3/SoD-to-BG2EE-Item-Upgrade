EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkaster")~ THEN GOTO NewItem 	//Aster's Edge +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @294
    IF ~!PartyHasItem("misc5k")~ THEN GOTO NewItem2
    IF ~PartyHasItem("misc5k")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @295
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @296
    IF ~PartyGoldLT(8000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",121)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("dtkaster",1)
                                                 TakePartyItemNum("misc5k",1)
                                                 DestroyItem("dtkaster")
                                                 DestroyItem("misc5k")
                                                 DestroyGold(8000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END