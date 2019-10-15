// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkshld2")~ THEN GOTO EgonShieldTyrCespy // Bulwark of Egons +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN EgonShieldTyrCespy SAY @1165
    IF ~!PartyHasItem("compon02")~ THEN GOTO need_EgonShieldTyrCespy
    IF ~PartyHasItem("compon02")~ THEN GOTO EgonShieldTyrCespy_want
  END

  IF ~~ THEN BEGIN need_EgonShieldTyrCespy SAY @1166
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN EgonShieldTyrCespy_want SAY @1167
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",47)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkshld2",1)
                                                 DestroyItem("dtkshld2")
                                                 TakePartyItemNum("compon02",1)
                                                 DestroyItem("compon02")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO EgonShieldTyrCespy_stall
  END

  IF ~~ THEN BEGIN EgonShieldTyrCespy_stall SAY @1168
    COPY_TRANS BOTSMITH 4
  END

END                                            
