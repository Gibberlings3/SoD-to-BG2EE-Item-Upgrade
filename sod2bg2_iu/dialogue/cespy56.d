// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtksorcp")~ THEN GOTO SourceCap1Cespy // Sourceror's Cap +1
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SourceCap1Cespy SAY @1243	
    IF ~!PartyHasItem("helm27")~ THEN GOTO need_SourceCap1Cespy
    IF ~PartyHasItem("helm27")~ THEN GOTO SourceCap1Cespy_want
  END

  IF ~~ THEN BEGIN need_SourceCap1Cespy SAY @1244
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SourceCap1Cespy_want SAY @1245
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",68)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtksorcp",1)
                                                 DestroyItem("dtksorcp")
                                                 TakePartyItemNum("helm27",1)
                                                 DestroyItem("helm27")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SourceCap1Cespy_stall
  END

  IF ~~ THEN BEGIN SourceCap1Cespy_stall SAY @1246
    COPY_TRANS BOTSMITH 4
  END

END                                            
