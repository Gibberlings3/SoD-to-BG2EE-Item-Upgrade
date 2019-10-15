EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bddagg01")~ THEN GOTO NewItem //Element's Fury +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @123
    IF ~!PartyHasItem("dagg11")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dagg11")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @124
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @125
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",37)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddagg01",1)
                                                 TakePartyItemNum("dagg11",1)
                                                 DestroyItem("bddagg01")
                                                 DestroyItem("dagg11")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END