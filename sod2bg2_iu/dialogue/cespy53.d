// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd07")~ THEN GOTO Varscona4Cespy // Varscona +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN Varscona4Cespy SAY @1231
    IF ~!PartyHasItem("dtkdhilt")~ THEN GOTO need_Varscona4Cespy
    IF ~PartyHasItem("dtkdhilt")~ THEN GOTO Varscona4Cespy_want
  END

  IF ~~ THEN BEGIN need_Varscona4Cespy SAY @1232
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Varscona4Cespy_want SAY @1233
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",65)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd07",1)
                                                 DestroyItem("dtkswd07")
                                                 TakePartyItemNum("dtkdhilt",1)
                                                 DestroyItem("dtkdhilt")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Varscona4Cespy_stall
  END

  IF ~~ THEN BEGIN Varscona4Cespy_stall SAY @1234
    COPY_TRANS BOTSMITH 4
  END

END                                            
