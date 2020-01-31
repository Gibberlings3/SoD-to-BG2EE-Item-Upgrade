// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtksper1")~ THEN GOTO WindSpear6Cespy // Shadowed Spear of the Tempest +6
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN WindSpear6Cespy SAY @1177
    IF ~!PartyHasItem("dagg23")~ THEN GOTO need_WindSpear6Cespy
    IF ~PartyHasItem("dagg23")~ THEN GOTO WindSpear6Cespy_want
  END

  IF ~~ THEN BEGIN need_WindSpear6Cespy SAY @1178
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN WindSpear6Cespy_want SAY @1179
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",50)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtksper1",1)
                                                 DestroyItem("dtksper1")
                                                 TakePartyItemNum("dagg23",1)
                                                 DestroyItem("dagg23")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO WindSpear6Cespy_stall
  END

  IF ~~ THEN BEGIN WindSpear6Cespy_stall SAY @1180
    COPY_TRANS BOTSMITH 4
  END

END                                            
