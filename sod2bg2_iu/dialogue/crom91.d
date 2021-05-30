EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhamm06")~ THEN GOTO NewItem 	//Dread Hammer +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @329
    IF ~!PartyHasItem("miscbg")~ THEN GOTO NewItem2
    IF ~PartyHasItem("miscbg")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @330
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @331
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",150)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhamm06",1)
                                                 TakePartyItemNum("miscbg",1)
                                                 DestroyItem("bdhamm06")
                                                 DestroyItem("miscbg")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END