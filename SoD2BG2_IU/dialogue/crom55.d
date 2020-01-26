EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhelm12")~ THEN GOTO NewItem //Sourceror's Cap
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @196
    IF ~!PartyHasItem("compon17")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon17")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @197
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @198
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",67)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdhelm12",1)
                                                 TakePartyItemNum("compon17",1)
                                                 DestroyItem("bdhelm12")
                                                 DestroyItem("compon17")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END