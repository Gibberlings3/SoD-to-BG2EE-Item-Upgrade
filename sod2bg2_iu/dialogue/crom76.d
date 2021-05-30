EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdsw1hx5")~ THEN GOTO NewItem	//Gift of the Demon +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @256
    IF ~OR(3)
          !PartyHasItem("dtkdore")
		  !PartyHasItem("scrl5g")
          !PartyHasItem("scrlak")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkdore")
		!PartyHasItem("scrlak")
        PartyHasItem("scrl5g")~ THEN GOTO NewItem4
	IF ~PartyHasItem("dtkdore")
		!PartyHasItem("scrl5g")
        PartyHasItem("scrlak")~ THEN GOTO NewItem3
	IF ~PartyHasItem("dtkdore")
		PartyHasItem("scrl5g")
        PartyHasItem("scrlak")~ THEN GOTO NewItem4
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @257
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @258
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",109)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1hx5",1)
                                                 DestroyItem("bdsw1hx5")
                                                 TakePartyItemNum("dtkdore",1)
                                                 DestroyItem("dtkdore")
                                                 TakePartyItemNum("scrlak",1)
                                                 DestroyItem("scrlak")
                                                 DestroyGold(5000)~ GOTO 56
  END
   IF ~~ THEN BEGIN NewItem4 SAY @258
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",109)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1hx5",1)
                                                 DestroyItem("bdsw1hx5")
                                                 TakePartyItemNum("dtkdore",1)
                                                 DestroyItem("dtkdore")
                                                 TakePartyItemNum("scrl5g",1)
                                                 DestroyItem("scrl5g")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END