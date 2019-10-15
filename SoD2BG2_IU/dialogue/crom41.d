EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsper01")~ THEN GOTO NewItem //Shadowed Spear of the Tempest +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @157
    IF ~!PartyHasItem("dtkemrld")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkemrld")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @158
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @159
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",49)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsper01",1)
                                                 TakePartyItemNum("dtkemrld",1)
                                                 DestroyItem("bdsper01")
                                                 DestroyItem("dtkemrld")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END