// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdring10")~ THEN GOTO HolyRingCespy // Holy Ring of Purity
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN HolyRingCespy SAY @1214
    IF ~!PartyHasItem("compon02")~ THEN GOTO need_HolyRingCespy
    IF ~PartyHasItem("compon02")~ THEN GOTO HolyRingCespy_want
  END

  IF ~~ THEN BEGIN need_HolyRingCespy SAY @1215
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN HolyRingCespy_want SAY @1216
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",62)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdring10",1)
                                                 DestroyItem("bdring10")
                                                 TakePartyItemNum("compon02",1)
                                                 DestroyItem("compon02")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO HolyRingCespy_stall
  END

  IF ~~ THEN BEGIN HolyRingCespy_stall SAY @1217
    COPY_TRANS BOTSMITH 4
  END

END                                            
