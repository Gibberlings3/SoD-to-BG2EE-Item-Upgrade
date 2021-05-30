// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswda3")~ THEN GOTO DemonSwd4Cespy // Gift of the Demon +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN DemonSwd4Cespy SAY @1316
    IF ~!PartyHasItem("dtkdebld")~ THEN GOTO need_DemonSwd4Cespy
    IF ~PartyHasItem("dtkdebld")~ THEN GOTO DemonSwd4Cespy_want
  END

  IF ~~ THEN BEGIN need_DemonSwd4Cespy SAY @1317
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DemonSwd4Cespy_want SAY @1318
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",110)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswda3",1)
                                                 DestroyItem("dtkswda3")
                                                 TakePartyItemNum("dtkdebld",1)
                                                 DestroyItem("dtkdebld")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DemonSwd4Cespy_stall
  END

  IF ~~ THEN BEGIN DemonSwd4Cespy_stall SAY @1319
    COPY_TRANS BOTSMITH 4
  END

END                                            
