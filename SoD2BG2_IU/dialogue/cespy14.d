// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhamm01")~ THEN GOTO sunder // Sundermaul +5
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN sunder SAY @1050
    IF ~!PartyHasItem("compon09")~ THEN GOTO need_sunder
    IF ~PartyHasItem("compon09")~ THEN GOTO sunder_want
  END

  IF ~~ THEN BEGIN need_sunder SAY @1051
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN sunder_want SAY @1052
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",14)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhamm01",1)
                                                 DestroyItem("bdhamm01")
                                                 TakePartyItemNum("compon09",1)
                                                 DestroyItem("compon09")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO sunder_stall
  END

  IF ~~ THEN BEGIN sunder_stall SAY @1053
    COPY_TRANS BOTSMITH 4
  END

END                                            
