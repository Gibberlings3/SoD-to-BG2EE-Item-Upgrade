// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhelm12")~ THEN GOTO WizzardCespy // Sourceror's Cap
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN WizzardCespy SAY @1239
    IF ~!PartyHasItem("compon17")~ THEN GOTO need_WizzardCespy
    IF ~PartyHasItem("compon17")~ THEN GOTO WizzardCespy_want
  END

  IF ~~ THEN BEGIN need_WizzardCespy SAY @1240
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN WizzardCespy_want SAY @1241
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",67)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdhelm12",1)
                                                 DestroyItem("bdhelm12")
                                                 TakePartyItemNum("compon17",1)
                                                 DestroyItem("compon17")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO WizzardCespy_stall
  END

  IF ~~ THEN BEGIN WizzardCespy_stall SAY @1242
    COPY_TRANS BOTSMITH 4
  END

END                                            
