EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtksper1")~ THEN GOTO NewItem //Shadowed Spear of the Tempest +6
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @160
    IF ~!PartyHasItem("dagg23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dagg23")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @161
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @162
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",50)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtksper1",1)
                                                 TakePartyItemNum("dagg23",1)
                                                 DestroyItem("dtksper1")
                                                 DestroyItem("dagg23")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END