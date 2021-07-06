EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdmisc34")~ THEN GOTO NewItem 	//Lucky Boots
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @341
    IF ~!PartyHasItem("bdmisc34")~ THEN GOTO NewItem2
    IF ~PartyHasItem("bdmisc34")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @342
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @342
    IF ~PartyGoldLT(2000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(1999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",154)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("bdmisc34",1)
                                                 TakePartyItemNum("bdmisc34",1)
                                                 DestroyItem("bdmisc34")
                                                 DestroyItem("bdmisc34")
                                                 DestroyGold(2000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END