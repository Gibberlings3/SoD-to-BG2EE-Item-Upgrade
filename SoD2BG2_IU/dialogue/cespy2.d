// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd01")~ THEN GOTO SwordAcid5Cespy // Tongue of Burning Acid +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordAcid5Cespy SAY @1004
    IF ~!PartyHasItem("compon01")~ THEN GOTO need_SwordAcid5Cespy
    IF ~PartyHasItem("compon01")~ THEN GOTO SwordAcid5Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordAcid5Cespy SAY @1005
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordAcid5Cespy_want SAY @1006
    IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",2)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd01",1)
                                                 DestroyItem("dtkswd01")
                                                 TakePartyItemNum("compon01",1)
                                                 DestroyItem("compon01")
                                                 DestroyGold(15000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordAcid5Cespy_stall
  END

  IF ~~ THEN BEGIN SwordAcid5Cespy_stall SAY @1007
    COPY_TRANS BOTSMITH 4
  END

END                                            
