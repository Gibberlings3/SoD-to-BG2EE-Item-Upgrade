// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdxbow01")~ THEN GOTO AstralXbowCespy // Astral Crossbow +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN AstralXbowCespy SAY @1169
    IF ~!PartyHasItem("bow19a")~ THEN GOTO need_AstralXbowCespy
    IF ~PartyHasItem("bow19a")~ THEN GOTO AstralXbowCespy_want
  END

  IF ~~ THEN BEGIN need_AstralXbowCespy SAY @1170
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN AstralXbowCespy_want SAY @1171
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",48)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdxbow01",1)
                                                 DestroyItem("bdxbow01")
                                                 TakePartyItemNum("bow19a",1)
                                                 DestroyItem("bow19a")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO AstralXbowCespy_stall
  END

  IF ~~ THEN BEGIN AstralXbowCespy_stall SAY @1172
    COPY_TRANS BOTSMITH 4
  END

END                                            
