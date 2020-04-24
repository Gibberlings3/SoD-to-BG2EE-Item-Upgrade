// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtknecro")~ THEN GOTO LichArmor5Cespy // Raiment of the Lich +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN LichArmor5Cespy SAY @1251
    IF ~!PartyHasItem("compon06")~ THEN GOTO need_LichArmor5Cespy
    IF ~PartyHasItem("compon06")~ THEN GOTO LichArmor5Cespy_want
  END

  IF ~~ THEN BEGIN need_LichArmor5Cespy SAY @1252
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN LichArmor5Cespy_want SAY @1253
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",70)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtknecro",1)
                                                 DestroyItem("dtknecro")
                                                 TakePartyItemNum("compon06",1)
                                                 DestroyItem("compon06")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO LichArmor5Cespy_stall
  END

  IF ~~ THEN BEGIN LichArmor5Cespy_stall SAY @1254
    COPY_TRANS BOTSMITH 4
  END

END                                            
