// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdshld03")~ THEN GOTO ShldEgonCespy // Bulwark of the Egons +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN ShldEgonCespy SAY @1157
    IF ~OR(2)
          !PartyHasItem("shld26")
          !PartyHasItem("misc5k")~ THEN GOTO need_ShldEgonCespy
    IF ~PartyHasItem("shld26")
        PartyHasItem("misc5k")~ THEN GOTO ShldEgonCespy_want
  END

  IF ~~ THEN BEGIN need_ShldEgonCespy SAY @1158
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN ShldEgonCespy_want SAY @1159
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",45)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdshld03",1)
                                                 DestroyItem("bdshld03")
                                                 TakePartyItemNum("misc5k",1)
						 DestroyItem("misc5k")
                                                 TakePartyItemNum("shld26",1)
                                                 DestroyItem("shld26")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO ShldEgonCespy_stall
  END

  IF ~~ THEN BEGIN ShldEgonCespy_stall SAY @1160
    COPY_TRANS BOTSMITH 4
  END

END                                            
