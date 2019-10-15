// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdclck06")~ THEN GOTO CloakArcanCespy // Illusory Cloak of Arcana
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN CloakArcanCespy SAY @1124
    IF ~OR(2)
          !PartyHasItem("amul16")
          !PartyHasItem("clck03")~ THEN GOTO need_CloakArcanCespy
    IF ~PartyHasItem("amul16")
        PartyHasItem("clck03")~ THEN GOTO CloakArcanCespy_want
  END

  IF ~~ THEN BEGIN need_CloakArcanCespy SAY @1125
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN CloakArcanCespy_want SAY @1126
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",36)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdclck06",1)
                                                 DestroyItem("bdclck06")
                                                 TakePartyItemNum("clck03",1)
						 DestroyItem("clck03")
                                                 TakePartyItemNum("amul16",1)
                                                 DestroyItem("amul16")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO CloakArcanCespy_stall
  END

  IF ~~ THEN BEGIN CloakArcanCespy_stall SAY @1127
    COPY_TRANS BOTSMITH 4
  END

END                                            
