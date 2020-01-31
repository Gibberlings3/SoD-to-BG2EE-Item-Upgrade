EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdring10")~ THEN GOTO NewItem //Holy Ring of Purity
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @176
    IF ~!PartyHasItem("compon02")~ THEN GOTO NewItem2
    IF ~PartyHasItem("compon02")~ THEN GOTO NewItem3
  END

  IF ~~ THEN BEGIN NewItem2 SAY @177
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @178
    IF ~PartyGoldLT(5000)~ THEN REPLY #67011 GOTO NoThanks
    IF ~PartyGoldGT(4999)~ THEN REPLY #67012 DO ~SetGlobal("DTKItems","ar0334",62)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdring10",1)
                                                 TakePartyItemNum("compon02",1)
                                                 DestroyItem("bdring10")
                                                 DestroyItem("compon02")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY #67013 GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END