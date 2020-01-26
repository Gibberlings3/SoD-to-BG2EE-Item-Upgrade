// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ax1h12")~ THEN GOTO Stonefire5Cespy // Stonefire +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN Stonefire5Cespy SAY @1235
    IF ~!PartyHasItem("dtkruby")~ THEN GOTO need_Stonefire5Cespy
    IF ~PartyHasItem("dtkruby")~ THEN GOTO Stonefire5Cespy_want
  END

  IF ~~ THEN BEGIN need_Stonefire5Cespy SAY @1236
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Stonefire5Cespy_want SAY @1237
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",66)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("ax1h12",1)
                                                 DestroyItem("ax1h12")
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkruby")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Stonefire5Cespy_stall
  END

  IF ~~ THEN BEGIN Stonefire5Cespy_stall SAY @1238
    COPY_TRANS BOTSMITH 4
  END

END                                            
