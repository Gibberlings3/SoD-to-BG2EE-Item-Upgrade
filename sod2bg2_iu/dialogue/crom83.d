EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("dtkcynos")~ THEN GOTO NewItem	//Wisened Circlet of the Cynosure
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @300
    IF ~OR(2)
          !PartyHasItem("dtkioun3")
          !PartyHasItem("helm25")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkioun3")
        PartyHasItem("helm25")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @301
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @302
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",123)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkcynos",1)
                                                 DestroyItem("dtkcynos")
                                                 TakePartyItemNum("dtkioun3",1)
                                                 DestroyItem("dtkioun3")
                                                 TakePartyItemNum("helm25",1)
                                                 DestroyItem("helm25")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END