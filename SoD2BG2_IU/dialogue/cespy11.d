// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhelm11")~ THEN GOTO bhat // Melodius Bard Hat
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN bhat SAY @1038
    IF ~OR(2)
          !PartyHasItem("helm19")
          !PartyHasItem("helm23")~ THEN GOTO need_bhat
    IF ~PartyHasItem("helm19")
        PartyHasItem("helm23")~ THEN GOTO bhat_want
  END

  IF ~~ THEN BEGIN need_bhat SAY @1039
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN bhat_want SAY @1040
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",11)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdhelm11",1)
                                                 DestroyItem("bdhelm11")
                                                 TakePartyItemNum("helm19",1)
                                                 DestroyItem("helm19")
                                                 TakePartyItemNum("helm23",1)
                                                 DestroyItem("helm23")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO bhat_stall
  END

  IF ~~ THEN BEGIN bhat_stall SAY @1041
    COPY_TRANS BOTSMITH 4
  END

END                                            
