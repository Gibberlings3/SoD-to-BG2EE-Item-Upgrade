// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsper01")~ THEN GOTO WindSpear4Cespy // Shadowed Spear of the Tempest +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN WindSpear4Cespy SAY @1173
    IF ~!PartyHasItem("dtkemrld")~ THEN GOTO need_WindSpear4Cespy
    IF ~PartyHasItem("dtkemrld")~ THEN GOTO WindSpear4Cespy_want
  END

  IF ~~ THEN BEGIN need_WindSpear4Cespy SAY @1174
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN WindSpear4Cespy_want SAY @1175
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",49)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsper01",1)
                                                 DestroyItem("bdsper01")
                                                 TakePartyItemNum("dtkemrld",1)
                                                 DestroyItem("dtkemrld")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO WindSpear4Cespy_stall
  END

  IF ~~ THEN BEGIN WindSpear4Cespy_stall SAY @1176
    COPY_TRANS BOTSMITH 4
  END

END                                            
