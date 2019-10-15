// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h21")~ THEN GOTO SwordVex5Cespy // Vexation +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordVex5Cespy SAY @1161
    IF ~!PartyHasItem("compon15")~ THEN GOTO need_SwordVex5Cespy
    IF ~PartyHasItem("compon15")~ THEN GOTO SwordVex5Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordVex5Cespy SAY @1162
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordVex5Cespy_want SAY @1163
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",46)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsw1h21",1)
                                                 DestroyItem("bdsw1h21")
                                                 TakePartyItemNum("compon15",1)
                                                 DestroyItem("compon15")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordVex5Cespy_stall
  END

  IF ~~ THEN BEGIN SwordVex5Cespy_stall SAY @1164
    COPY_TRANS BOTSMITH 4
  END

END                                            
