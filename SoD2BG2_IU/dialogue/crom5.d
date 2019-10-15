EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhelm09")~ THEN GOTO NewItem	//Horned Helm of Dumathoin
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @13
    IF ~OR(2)
          !PartyHasItem("compon12")
          !PartyHasItem("compon13")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon12")
        PartyHasItem("compon13")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @14
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @15
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("CDItems","ar0334",5)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhelm09",1)
                                                 DestroyItem("bdhelm09")
                                                 TakePartyItemNum("compon12",1)
                                                 DestroyItem("compon12")
                                                 TakePartyItemNum("compon13",1)
                                                 DestroyItem("compon13")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END