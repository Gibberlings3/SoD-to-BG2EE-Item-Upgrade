EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkaste1")~ THEN GOTO NewItem 	//Aster's Edge +5 
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @297
    IF ~!PartyHasItem("compon02")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon02")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @298
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @299
    IF ~PartyGoldLT(8000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",122)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("dtkaste1",1)
                                                 TakePartyItemNum("compon02",1)
                                                 DestroyItem("dtkaste1")
                                                 DestroyItem("compon02")
                                                 DestroyGold(8000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END