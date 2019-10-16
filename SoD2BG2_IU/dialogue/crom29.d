EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdclck06")~ THEN GOTO NewItem	//Illusory Cloak of Arcana
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @120
    IF ~OR(2)
          !PartyHasItem("amul16")
          !PartyHasItem("clck03")~ THEN GOTO NewItem2
    IF ~PartyHasItem("amul16")
        PartyHasItem("clck03")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @121
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @122
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",36)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdclck06",1)
                                                 TakePartyItemNum("amul16",1)
                                                 TakePartyItemNum("clck03",1)
                                                 DestroyItem("bdclck06")
                                                 DestroyItem("amul16")
                                                 DestroyItem("clck03")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END