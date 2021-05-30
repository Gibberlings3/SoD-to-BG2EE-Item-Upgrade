// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("sw1h52")~ THEN GOTO NewItemCespy // Water's Edge +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1342
    IF ~!PartyHasItem("dtkbowat")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("dtkbowat")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1343
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1344
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",73)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("sw1h52",1)
                                                 DestroyItem("sw1h52")
                                                 TakePartyItemNum("dtkbowat",1)
                                                 DestroyItem("dtkbowat")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1345
    COPY_TRANS BOTSMITH 4
  END

END                                            
