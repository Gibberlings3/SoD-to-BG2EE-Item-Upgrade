// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswda4")~ THEN GOTO SwordAcid5Cespy // Tongue of Burning Acid +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordAcid5Cespy SAY @1320
    IF ~!PartyHasItem("dtkdeye")~ THEN GOTO need_SwordAcid5Cespy
    IF ~PartyHasItem("dtkdeye")~ THEN GOTO SwordAcid5Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordAcid5Cespy SAY @1321
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordAcid5Cespy_want SAY @1322
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",111)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswda4",1)
                                                 DestroyItem("dtkswda4")
                                                 TakePartyItemNum("dtkdeye",1)
                                                 DestroyItem("dtkdeye")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordAcid5Cespy_stall
  END

  IF ~~ THEN BEGIN SwordAcid5Cespy_stall SAY @1323
    COPY_TRANS BOTSMITH 4
  END

END                                            
