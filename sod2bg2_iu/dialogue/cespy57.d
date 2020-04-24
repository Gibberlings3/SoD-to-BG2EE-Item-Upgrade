// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("leat22")~ THEN GOTO LichArmor // Raiment of the Lich +4
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN LichArmor SAY @1247
    IF ~OR(2)
          !PartyHasItem("wa2robe")
          !PartyHasItem("dtkdgbld")~ THEN GOTO need_LichArmor
    IF ~PartyHasItem("wa2robe")
        PartyHasItem("dtkdgbld")~ THEN GOTO LichArmor_want
  END

  IF ~~ THEN BEGIN need_LichArmor SAY @1248
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN LichArmor_want SAY @1249
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",69)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("leat22",1)
                                                 DestroyItem("leat22")
                                                 TakePartyItemNum("wa2robe",1)
                                                 DestroyItem("wa2robe")
                                                 TakePartyItemNum("dtkdgbld",1)
                                                 DestroyItem("dtkdgbld")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO LichArmor_stall
  END

  IF ~~ THEN BEGIN LichArmor_stall SAY @1250
    COPY_TRANS BOTSMITH 4
  END

END                                            
