EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdboot03")~ THEN GOTO NewItem //Star-Strewn Boots of Amaunator
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @46
    IF ~!PartyHasItem("key23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("key23")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @47
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @48
    IF ~PartyGoldLT(15000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(14999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",16)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdboot03",1)
                                                 TakePartyItemNum("key23",1)
                                                 DestroyItem("bdboot03")
                                                 DestroyItem("key23")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END