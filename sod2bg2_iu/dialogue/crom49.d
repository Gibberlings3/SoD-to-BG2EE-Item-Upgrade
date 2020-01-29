EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbrac02")~ THEN GOTO NewItem //Wicked Jester's Bracers
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @173
    IF ~NumItemsPartyLT("misc6m",2)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("misc6m",1)~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @174
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @175
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",61)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbrac02",1)
                                                 TakePartyItemNum("misc6m",2)
                                                 DestroyItem("bdbrac02")
                                                 DestroyItem("misc6m")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END