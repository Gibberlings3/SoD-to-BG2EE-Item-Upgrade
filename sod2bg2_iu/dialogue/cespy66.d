// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd9")~ THEN GOTO Severance5Cespy // Severance +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN Severance5Cespy SAY @1279
    IF ~!PartyHasItem("compon08")~ THEN GOTO need_Severance5Cespy
    IF ~PartyHasItem("compon08")~ THEN GOTO Severance5Cespy_want
  END

  IF ~~ THEN BEGIN need_Severance5Cespy SAY @1280
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Severance5Cespy_want SAY @1281
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",78)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd9",1)
                                                 DestroyItem("dtkswd9")
                                                 TakePartyItemNum("compon08",1)
                                                 DestroyItem("compon08")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Severance5Cespy_stall
  END

  IF ~~ THEN BEGIN Severance5Cespy_stall SAY @1282
    COPY_TRANS BOTSMITH 4
  END

END                                            
