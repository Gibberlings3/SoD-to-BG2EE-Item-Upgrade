EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("leat22")~ THEN GOTO NewItem	//Raiment of the Lich
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @202
    IF ~OR(2)
          !PartyHasItem("dtkdgbld")
          !PartyHasItem("wa2robe")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkdgbld")
        PartyHasItem("wa2robe")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @203
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @204
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",69)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("leat22",1)
                                                 DestroyItem("leat22")
                                                 TakePartyItemNum("dtkdgbld",1)
                                                 DestroyItem("dtkdgbld")
                                                 TakePartyItemNum("wa2robe",1)
                                                 DestroyItem("wa2robe")
                                                 DestroyGold(10000)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END