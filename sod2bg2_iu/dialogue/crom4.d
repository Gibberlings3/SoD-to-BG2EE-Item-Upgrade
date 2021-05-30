EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhelm01")~ THEN GOTO NewItem	//Crown of Lies +1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @10
    IF ~OR(4)
          !PartyHasItem("helm26")
          !PartyHasItem("helm24")
          !PartyHasItem("ohioun02")
          !PartyHasItem("ohioun03")~ THEN GOTO NewItem2
    IF ~PartyHasItem("helm26")
        PartyHasItem("helm24")
        PartyHasItem("ohioun02")
        PartyHasItem("ohioun03")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @11
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @12
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",4)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhelm01",1)
                                                 DestroyItem("bdhelm01")
                                                 TakePartyItemNum("helm26",1)
                                                 DestroyItem("helm26")
                                                 TakePartyItemNum("helm24",1)
                                                 DestroyItem("helm24")
                                                 TakePartyItemNum("ohioun02",1)
                                                 DestroyItem("ohioun02")
                                                 TakePartyItemNum("ohioun03",1)
                                                 DestroyItem("ohioun03")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END