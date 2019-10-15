EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkaxe01")~ THEN GOTO NewItem	//Maelstrom Axe +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @133
    IF ~OR(2)
          !PartyHasItem("hamm07")
          !PartyHasItem("scrlag")~ THEN GOTO NewItem2
    IF ~PartyHasItem("hamm07")
        PartyHasItem("scrlag")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @134
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @135
    IF ~PartyGoldLT(10000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",41)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkaxe01",1)
                                                 TakePartyItemNum("hamm07",1)
                                                 TakePartyItemNum("scrlag",1)
                                                 DestroyItem("dtkaxe01")
                                                 DestroyItem("hamm07")
                                                 DestroyItem("scrlag")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END