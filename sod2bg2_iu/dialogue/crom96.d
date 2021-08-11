EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("hamm03")~ THEN GOTO NewItem	//Ashideena +3
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @343
    IF ~OR(4)
          !PartyHasItem("hamm05")
          !PartyHasItem("misc7n")
		  !PartyHasItem("wand07")
          !PartyHasItem("scrl1k")~ THEN GOTO NewItem2
    IF ~PartyHasItem("hamm05")
        PartyHasItem("misc7n")
		!PartyHasItem("wand07")
        PartyHasItem("scrl1k")~ THEN GOTO NewItem3
	IF ~PartyHasItem("hamm05")
        !PartyHasItem("misc7n")
		PartyHasItem("wand07")
        PartyHasItem("scrl1k")~ THEN GOTO NewItem4
	IF ~PartyHasItem("hamm05")
        PartyHasItem("misc7n")
		PartyHasItem("wand07")
        PartyHasItem("scrl1k")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @344
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @345
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",155)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("hamm03",1)
                                                 DestroyItem("hamm03")
                                                 TakePartyItemNum("hamm05",1)
                                                 DestroyItem("hamm05")
                                                 TakePartyItemNum("misc7n",1)
                                                 DestroyItem("misc7n")
                                                 TakePartyItemNum("scrl1k",1)
                                                 DestroyItem("scrl1k")
                                                 DestroyGold(5000)~ GOTO 56
												 
     IF ~~ THEN REPLY #66770 GOTO NoThanks
  END
												 
   IF ~~ THEN BEGIN NewItem4 SAY @345
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",155)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("hamm03",1)
                                                 DestroyItem("hamm03")
                                                 TakePartyItemNum("hamm05",1)
                                                 DestroyItem("hamm05")
                                                 TakePartyItemNum("wand07",1)
                                                 DestroyItem("wand07")
                                                 TakePartyItemNum("scrl1k",1)
                                                 DestroyItem("scrl1k")
                                                 DestroyGold(5000)~ GOTO 56
												 
												 
												 
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END