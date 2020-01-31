// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd1b")~ THEN GOTO SWDAcid5cCespy // Tongue of Acid +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SWDAcid5cCespy SAY @1203
    IF ~!PartyHasItem("dtktopaz")~ THEN GOTO need_SWDAcid5cCespy
    IF ~PartyHasItem("dtktopaz")~ THEN GOTO SWDAcid5cCespy_want
  END

  IF ~~ THEN BEGIN need_SWDAcid5cCespy SAY @1204
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SWDAcid5cCespy_want SAY @1205
    IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",59)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd1b",1)
                                                 DestroyItem("dtkswd1b")
                                                 TakePartyItemNum("dtktopaz",1)
                                                 DestroyItem("dtktopaz")
                                                 DestroyGold(15000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SWDAcid5cCespy_stall
  END

  IF ~~ THEN BEGIN SWDAcid5cCespy_stall SAY @1007
    COPY_TRANS BOTSMITH 4
  END

END                                            
