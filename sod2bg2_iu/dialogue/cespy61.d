// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd06")~ THEN GOTO NewItemCespy // Dervish Crescent of Speed +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1350
    IF ~!PartyHasItem("dtkruby")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkruby")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1351
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1352
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",120)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("dtkswd06",1)
                                                 DestroyItem("dtkswd06")
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkruby")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1353
    COPY_TRANS BOTSMITH 4
  END

END                                            
