EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdarow02")~ THEN GOTO NewItem //Quiver of Void-Tipped Arrows +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @114
    IF ~!PartyHasItem("quiver03")~ THEN GOTO NewItem2
    IF ~PartyHasItem("quiver03")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @115
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @116
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",34)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdarow02",1)
                                                 TakePartyItemNum("quiver03",1)
                                                 DestroyItem("bdarow02")
                                                 DestroyItem("quiver03")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END