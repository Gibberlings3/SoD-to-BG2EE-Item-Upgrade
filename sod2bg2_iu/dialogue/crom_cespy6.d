// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~OR(2)
        PartyHasItem("misc8u")
        PartyHasItem("sw2h15a")~ THEN GOTO silver // silver sword
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN silver SAY @1410
    IF ~PartyHasItem("misc8u")
        PartyHasItem("sw2h15a")~ THEN GOTO silver_want
    IF ~!PartyHasItem("sw2h15a")~ THEN GOTO silver_need_hilt
    IF ~!PartyHasItem("misc8u")~ THEN GOTO silver_need_blade
  END
  
  IF ~~ THEN BEGIN silver_need_hilt SAY @1411
    COPY_TRANS BOTSMITH 4
  END
  
  IF ~~ THEN BEGIN silver_need_blade SAY @1412
    COPY_TRANS BOTSMITH 4
  END
  
  IF ~~ THEN BEGIN silver_want SAY @1413          
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",156)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("misc8u",1)
                                                 DestroyItem("misc8u")
                                                 TakePartyItemNum("sw2h15a",1)
                                                 DestroyItem("sw2h15a")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO silver_stall
  END          
  
  IF ~~ THEN BEGIN silver_stall SAY @1414
    COPY_TRANS BOTSMITH 4
  END

END                                            
  