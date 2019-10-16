EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw2h01")~ THEN GOTO NewItem //Silver Dragon Blade +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @59
    IF ~!PartyHasItem("misc8u")~ THEN GOTO NewItem2
    IF ~PartyHasItem("misc8u")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @63
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @64
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",55)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsw2h01",1)
                                                 TakePartyItemNum("misc8u",1)
                                                 DestroyItem("bdsw2h01")
                                                 DestroyItem("misc8u")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END