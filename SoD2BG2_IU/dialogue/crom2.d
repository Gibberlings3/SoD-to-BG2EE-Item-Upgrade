EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkswd01")~ THEN GOTO NewItem //Tongue of Burning Acid +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @4
    IF ~!PartyHasItem("compon01")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon01")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @5
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @6
    IF ~PartyGoldLT(15000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(14999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",2)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd01",1)
                                                 TakePartyItemNum("compon01",1)
                                                 DestroyItem("dtkswd01")
                                                 DestroyItem("compon01")
                                                 DestroyGold(15000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END