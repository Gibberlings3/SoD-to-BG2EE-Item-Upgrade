// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bddagg01")~ THEN GOTO EleDagg3Cespy // Element's Fury +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN EleDagg3Cespy SAY @1128
    IF ~!PartyHasItem("dagg11")~ THEN GOTO need_EleDagg3Cespy
    IF ~PartyHasItem("dagg11")~ THEN GOTO EleDagg3Cespy_want
  END

  IF ~~ THEN BEGIN need_EleDagg3Cespy SAY @1129
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN EleDagg3Cespy_want SAY @1130
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",37)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddagg01",1)
                                                 DestroyItem("bddagg01")
                                                 TakePartyItemNum("dagg11",1)
                                                 DestroyItem("dagg11")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO EleDagg3Cespy_stall
  END

  IF ~~ THEN BEGIN EleDagg3Cespy_stall SAY @1131
    COPY_TRANS BOTSMITH 4
  END

END                                            
