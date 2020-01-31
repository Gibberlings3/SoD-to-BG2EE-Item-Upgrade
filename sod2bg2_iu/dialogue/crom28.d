EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbull02")~ THEN GOTO NewItem //Bag of Darkness +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @117
    IF ~!PartyHasItem("quiver06")~ THEN GOTO NewItem2
    IF ~PartyHasItem("quiver06")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @118
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @119
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",35)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbull02",1)
                                                 TakePartyItemNum("quiver06",1)
                                                 DestroyItem("bdbull02")
                                                 DestroyItem("quiver06")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END