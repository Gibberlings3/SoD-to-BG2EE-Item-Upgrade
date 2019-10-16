EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhamm01")~ THEN GOTO NewItem	//Sundermaul +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @40
    IF ~!PartyHasItem("compon09")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon09")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @41
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @42
    IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",14)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhamm01",1)
                                                 DestroyItem("bdhamm01")
                                                 TakePartyItemNum("compon09",1)
                                                 DestroyItem("compon09")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END