EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtksolag")~ THEN GOTO NewItem	//Warded Solar Aegis +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @303
    IF ~OR(2)
          !PartyHasItem("helm18")
          !PartyHasItem("miscau")~ THEN GOTO NewItem2
    IF ~PartyHasItem("helm18")
        PartyHasItem("miscau")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @304
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @305
    IF ~PartyGoldLT(3500)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(3499)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",124)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(3500)
                                                 TakePartyItemNum("dtksolag",1)
                                                 DestroyItem("dtksolag")
                                                 TakePartyItemNum("helm18",1)
                                                 DestroyItem("helm18")
                                                 TakePartyItemNum("miscau",1)
                                                 DestroyItem("miscau")
                                                 DestroyGold(3500)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END