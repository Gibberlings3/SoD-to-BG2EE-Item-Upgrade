EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdbrac03")~ THEN GOTO NewItem	//Adventurer's Nimble Gloves of Guarding
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @111
    IF ~OR(3)
          !PartyHasItem("brac15")
          !PartyHasItem("brac17")
          !PartyHasItem("brac04")~ THEN GOTO NewItem2
    IF ~PartyHasItem("brac15")
        PartyHasItem("brac17")
        PartyHasItem("brac04")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @112
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @113
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("CDItems","ar0334",33)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbrac03",1)
                                                 TakePartyItemNum("brac15",1)
                                                 TakePartyItemNum("brac04",1)
                                                 TakePartyItemNum("brac17",1)
                                                 DestroyItem("bdbrac03")
                                                 DestroyItem("brac15")
                                                 DestroyItem("brac04")
                                                 DestroyItem("brac17")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END