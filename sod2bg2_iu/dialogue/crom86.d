EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsilk01")~ THEN GOTO NewItem 	//Spider Silk Gi
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @309
    IF ~NumItemsPartyLT("bdsilk01",4)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("bdsilk01",3)~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @310
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @311
    IF ~PartyGoldLT(3500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(3499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",126)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("bdsilk01",4)
                                                 DestroyItem("bdsilk01")
                                                 DestroyGold(3500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END