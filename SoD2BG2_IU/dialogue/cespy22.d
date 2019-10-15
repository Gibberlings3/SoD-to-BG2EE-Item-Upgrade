// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbelt01")~ THEN GOTO LuckBeltCespy // Cloverleaf +1
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN LuckBeltCespy SAY @1088
    IF ~NumItemsPartyLT("scrl93",5)~ THEN GOTO need_LuckBeltCespy
    IF ~NumItemsPartyGT("scrl93",4)~ THEN GOTO LuckBeltCespy_want
  END

  IF ~~ THEN BEGIN need_LuckBeltCespy SAY @1089
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN LuckBeltCespy_want SAY @1090
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",29)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdbelt01",1)
                                                 DestroyItem("bdbelt01")
                                                 TakePartyItemNum("scrl93",5)
                                                 DestroyItem("scrl93")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO LuckBeltCespy_stall
  END

  IF ~~ THEN BEGIN LuckBeltCespy_stall SAY @1091
    COPY_TRANS BOTSMITH 4
  END

END                                            
