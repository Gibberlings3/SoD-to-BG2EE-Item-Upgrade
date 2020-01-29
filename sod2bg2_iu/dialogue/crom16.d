EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdboot03")~ THEN GOTO NewItem //Star-Strewn Boots of Antimagic
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @46
    IF ~OR(3)
	NumItemsPartyLT("potn34",2)
	NumItemsPartyLT("potn35",2)
	NumItemsPartyLT("potn33",2)~ THEN GOTO NewItem2
    IF ~NumItemsPartyGT("potn34",1)
	NumItemsPartyGT("potn35",1)
	NumItemsPartyGT("potn33",1)~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @47
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @48
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",16)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdboot03",1)
                                                 TakePartyItemNum("potn33",2)
                                                 TakePartyItemNum("potn34",2)
                                                 TakePartyItemNum("potn35",2)
                                                 DestroyItem("bdboot03")
                                                 DestroyItem("potn33")
                                                 DestroyItem("potn34")
                                                 DestroyItem("potn35")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END