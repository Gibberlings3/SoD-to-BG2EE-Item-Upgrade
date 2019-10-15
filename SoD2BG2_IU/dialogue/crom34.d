EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkhalb1")~ THEN GOTO NewItem	//Maelstrom Pike +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @136
    IF ~OR(2)
          !PartyHasItem("halb09b")
          !PartyHasItem("scrlag")~ THEN GOTO NewItem2
    IF ~PartyHasItem("halb09b")
        PartyHasItem("scrlag")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @137
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @138
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",42)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkhalb1",1)
                                                 TakePartyItemNum("halb09b",1)
                                                 TakePartyItemNum("scrlag",1)
                                                 DestroyItem("dtkhalb1")
                                                 DestroyItem("halb09b")
                                                 DestroyItem("scrlag")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END