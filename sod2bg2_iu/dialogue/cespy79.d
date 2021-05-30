// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd7a")~ THEN GOTO Varscona5Cespy // Varscona +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN Varscona5Cespy SAY @1324
    IF ~!PartyHasItem("dtkshgem")~ THEN GOTO need_Varscona5Cespy
    IF ~PartyHasItem("dtkshgem")~ THEN GOTO Varscona5Cespy_want
  END

  IF ~~ THEN BEGIN need_Varscona5Cespy SAY @1325
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Varscona5Cespy_want SAY @1326
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",112)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkswd7a",1)
                                                 DestroyItem("dtkswd7a")
                                                 TakePartyItemNum("dtkshgem",1)
                                                 DestroyItem("dtkshgem")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Varscona5Cespy_stall
  END

  IF ~~ THEN BEGIN Varscona5Cespy_stall SAY @1327
    COPY_TRANS BOTSMITH 4
  END

END                                            
