EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdrobe05")~ THEN GOTO NewItem	//Robe of Roaring Flames
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @34
    IF ~!PartyHasItem("wa2robe")~ THEN GOTO NewItem2
    IF ~PartyHasItem("wa2robe")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @35
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @36
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",12)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdrobe05",1)
                                                 DestroyItem("bdrobe05")
                                                 TakePartyItemNum("wa2robe",1)
                                                 DestroyItem("wa2robe")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END