EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bddagg05")~ THEN GOTO NewItem //Acid-Etched Boomerang Dagger +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @4
    IF ~!PartyHasItem("dagg11")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dagg11")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @5
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @6
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",74)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddagg05",1)
                                                 TakePartyItemNum("dagg11",1)
                                                 DestroyItem("bddagg05")
                                                 DestroyItem("dagg11")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END