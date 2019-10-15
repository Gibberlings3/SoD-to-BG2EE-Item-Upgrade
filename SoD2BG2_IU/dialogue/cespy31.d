// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtktdag1")~ THEN GOTO EleDagg4Cespy // Element's Fury +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN EleDagg4Cespy SAY @1132
    IF ~!PartyHasItem("dtkfrost")~ THEN GOTO need_EleDagg4Cespy
    IF ~PartyHasItem("dtkfrost")~ THEN GOTO EleDagg4Cespy_want
  END

  IF ~~ THEN BEGIN need_EleDagg4Cespy SAY @1133
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN EleDagg4Cespy_want SAY @1134
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",38)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtktdag1",1)
                                                 DestroyItem("dtktdag1")
                                                 TakePartyItemNum("dtkfrost",1)
                                                 DestroyItem("dtkfrost")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO EleDagg4Cespy_stall
  END

  IF ~~ THEN BEGIN EleDagg4Cespy_stall SAY @1135
    COPY_TRANS BOTSMITH 4
  END

END                                            
