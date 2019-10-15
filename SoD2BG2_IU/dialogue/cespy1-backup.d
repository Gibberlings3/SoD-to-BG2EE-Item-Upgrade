// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1h02")~ THEN GOTO SwordAcid4Cespy // Tongue of Burning Acid +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordAcid4Cespy SAY @1000
    IF ~OR(2)
          !PartyHasItem("sw1h60")
          !PartyHasItem("scrl7t")~ THEN GOTO need_SwordAcid4Cespy
    IF ~PartyHasItem("sw1h60")
        PartyHasItem("scrl7t")~ THEN GOTO SwordAcid4Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordAcid4Cespy SAY @1001
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordAcid4Cespy_want SAY @1002
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",1)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdsw1h02",1)
                                                 DestroyItem("bdsw1h02")
                                                 TakePartyItemNum("scrl7t",1)
						 DestroyItem("scrl7t")
                                                 TakePartyItemNum("sw1h60",1)
                                                 DestroyItem("sw1h60")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordAcid4Cespy_stall
  END

  IF ~~ THEN BEGIN SwordAcid4Cespy_stall SAY @1003
    COPY_TRANS BOTSMITH 4
  END

END                                            
