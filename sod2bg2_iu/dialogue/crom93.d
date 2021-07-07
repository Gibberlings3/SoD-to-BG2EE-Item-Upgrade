EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdax1h03")~ THEN GOTO NewItem	//Blizzard Axe +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @335
    IF ~OR(3)
          !PartyHasItem("ax1h13")
          !PartyHasItem("wand06")
          !PartyHasItem("scrl1x")~ THEN GOTO NewItem2
    IF ~PartyHasItem("ax1h13")
        PartyHasItem("wand06")
        PartyHasItem("scrl1x")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @336
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @337
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",152)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdax1h03",1)
                                                 DestroyItem("bdax1h03")
                                                 TakePartyItemNum("ax1h13",1)
                                                 DestroyItem("ax1h13")
                                                 TakePartyItemNum("wand06",1)
                                                 DestroyItem("wand06")
                                                 TakePartyItemNum("ohioun02",1)
                                                 DestroyItem("ohioun02")
                                                 TakePartyItemNum("scrl1x",1)
                                                 DestroyItem("scrl1x")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END