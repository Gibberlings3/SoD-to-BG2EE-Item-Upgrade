EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdboot01")~ THEN GOTO NewItem 	//Quicksilver Sabatons
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @7
    IF ~!PartyHasItem("compon01")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon01")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @8
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @9
    IF ~PartyGoldLT(7500)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",3)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdboot01",1)
                                                 TakePartyItemNum("compon01",1)
                                                 DestroyItem("bdboot01")
                                                 DestroyItem("compon01")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END