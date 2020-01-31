EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd05")~ THEN GOTO NewItem //Silver Dragon Blade +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @68
    IF ~!PartyHasItem("dtkfrost")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkfrost")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @71
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @73
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",56)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd05",1)
                                                 TakePartyItemNum("dtkfrost",1)
                                                 DestroyItem("dtkswd05")
                                                 DestroyItem("dtkfrost")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END