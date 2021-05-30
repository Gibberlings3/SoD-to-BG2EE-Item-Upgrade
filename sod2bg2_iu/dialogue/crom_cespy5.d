// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~OR(2)
        PartyHasItem("halb09a")
        PartyHasItem("halb09b")~ THEN GOTO wave // wave halberd
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN wave SAY @1406
    IF ~!PartyHasItem("halb09a")~ THEN GOTO need_wave_shaft
    IF ~!PartyHasItem("halb09b")~ THEN GOTO need_wave_blade
    IF ~PartyHasItem("halb09a")
        PartyHasItem("halb09b")~ THEN GOTO wave_want
  END
  
  IF ~~ THEN BEGIN need_wave_shaft SAY @1407
    COPY_TRANS BOTSMITH 4
  END
  
  IF ~~ THEN BEGIN need_wave_blade SAY @1408
    COPY_TRANS BOTSMITH 4
  END
  
  IF ~~ THEN BEGIN wave_want SAY @1409       
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",155)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("halb09a",1)
                                                 DestroyItem("halb09a")
                                                 TakePartyItemNum("halb09b",1)
                                                 DestroyItem("halb09b")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO wave_stall
  END          
  
  IF ~~ THEN BEGIN wave_stall SAY @1373
    COPY_TRANS BOTSMITH 4
  END

END                                            
  