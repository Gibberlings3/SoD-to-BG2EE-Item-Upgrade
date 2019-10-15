// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("BDHAMM02")~ THEN GOTO HammIcy5Cespy // Icy Hammer of the Void +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN HammIcy5Cespy SAY @1036
    IF ~!PartyHasItem("compon06")~ THEN GOTO need_HammIcy5Cespy
    IF ~PartyHasItem("compon06")~ THEN GOTO HammIcy5Cespy_want
  END

  IF ~~ THEN BEGIN need_HammIcy5Cespy SAY @1037
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN HammIcy5Cespy_want SAY @1034
    IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",10)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("bdhamm02",1)
                                                 DestroyItem("bdhamm02")
                                                 TakePartyItemNum("compon06",1)
                                                 DestroyItem("compon06")
                                                 DestroyGold(15000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO HammIcy5Cespy_stall
  END

  IF ~~ THEN BEGIN HammIcy5Cespy_stall SAY @1035
    COPY_TRANS BOTSMITH 4
  END

END                                            
