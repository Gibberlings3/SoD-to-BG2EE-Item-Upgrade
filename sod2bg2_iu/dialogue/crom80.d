EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkaxe02")~ THEN GOTO NewItem 	//Maelstrom Axe +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @279
    IF ~!PartyHasItem("dtkbowat")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkbowat")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @280
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @281
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",118)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkaxe02",1)
                                                 TakePartyItemNum("dtkbowat",1)
                                                 DestroyItem("dtkaxe02")
                                                 DestroyItem("dtkbowat")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END