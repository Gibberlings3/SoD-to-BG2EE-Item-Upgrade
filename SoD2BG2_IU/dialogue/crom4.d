EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhelm01")~ THEN GOTO NewItem	//Crown of Truths
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @10
    IF ~OR(4)
          !PartyHasItem("misc41")
          !PartyHasItem("misc42")
          !PartyHasItem("misc43")
          !PartyHasItem("potn43")~ THEN GOTO NewItem2
    IF ~PartyHasItem("misc41")
        PartyHasItem("misc42")
        PartyHasItem("misc43")
        PartyHasItem("potn43")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @11
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @12
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("CDItems","ar0334",4)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhelm01",1)
                                                 DestroyItem("bdhelm01")
                                                 TakePartyItemNum("misc41",1)
                                                 DestroyItem("misc41")
                                                 TakePartyItemNum("misc42",1)
                                                 DestroyItem("misc42")
                                                 TakePartyItemNum("misc43",1)
                                                 DestroyItem("misc43")
                                                 TakePartyItemNum("potn43",1)
                                                 DestroyItem("potn43")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END