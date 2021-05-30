// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("misc5k")~ THEN GOTO mace // Mace of Disruption +2
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN mace SAY @1415
    IF ~PartyHasItem("blun12")~ THEN GOTO mace_want
    IF ~!PartyHasItem("blun12")~ THEN GOTO need_mace
  END
  
  IF ~~ THEN BEGIN need_mace SAY @1416
    COPY_TRANS BOTSMITH 4
  END
  
  IF ~~ THEN BEGIN mace_want SAY @1417       
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",157)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("misc5k",1)
                                                 DestroyItem("misc5k")
                                                 TakePartyItemNum("blun12",1)
                                                 DestroyItem("blun12")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO mace_stall
  END          
  
  IF ~~ THEN BEGIN mace_stall SAY @1418
    COPY_TRANS BOTSMITH 4
  END

END                                            
  