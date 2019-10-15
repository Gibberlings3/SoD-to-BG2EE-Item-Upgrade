// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd03")~ THEN GOTO SwordFlame5Cespy // The Scorched Earth +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN SwordFlame5Cespy SAY @1084
    IF ~!PartyHasItem("dtkruby")~ THEN GOTO need_SwordFlame5Cespy
    IF ~PartyHasItem("dtkruby")~ THEN GOTO SwordFlame5Cespy_want
  END

  IF ~~ THEN BEGIN need_SwordFlame5Cespy SAY @1085
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN SwordFlame5Cespy_want SAY @1086
    IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",28)
                                                 TakePartyGold(15000)
                                                 TakePartyItemNum("dtkswd03",1)
                                                 DestroyItem("dtkswd03")
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkruby")
                                                 DestroyGold(15000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO SwordFlame5Cespy_stall
  END

  IF ~~ THEN BEGIN SwordFlame5Cespy_stall SAY @1087
    COPY_TRANS BOTSMITH 4
  END

END                                            
