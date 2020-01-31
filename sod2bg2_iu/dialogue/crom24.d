EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdblun07")~ THEN GOTO NewItem	//Nasty Backwhacker +4
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @95
    IF ~OR(2)
          !PartyHasItem("blun24")
          !PartyHasItem("blun17")~ THEN GOTO NewItem2
    IF ~PartyHasItem("blun24")
        PartyHasItem("blun17")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @96
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @97
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",31)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdblun07",1)
                                                 TakePartyItemNum("blun24",1)
                                                 TakePartyItemNum("blun17",1)
                                                 DestroyItem("bdblun07")
                                                 DestroyItem("blun24")
                                                 DestroyItem("blun17")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END