EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdshld02")~ THEN GOTO NewItem 	//The Suncatcher +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @288
    IF ~!PartyHasItem("key23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("key23")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @289
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @290
    IF ~PartyGoldLT(3500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(3499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",2)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("bdshld02",1)
                                                 TakePartyItemNum("key23",1)
                                                 DestroyItem("bdshld02")
                                                 DestroyItem("key23")
                                                 DestroyGold(3500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END