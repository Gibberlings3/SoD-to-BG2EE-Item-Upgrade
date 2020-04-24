EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd8")~ THEN GOTO NewItem //Crimson Dawn +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @225
    IF ~!PartyHasItem("compon08")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon08")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @226
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @227
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",77)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd8",1)
                                                 TakePartyItemNum("compon08",1)
                                                 DestroyItem("dtkswd8")
                                                 DestroyItem("compon08")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END