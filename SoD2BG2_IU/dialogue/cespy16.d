// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdboot03")~ THEN GOTO starbootCespy // Solar Boots of the Cosmos
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN starbootCespy SAY @1058
    IF ~!PartyHasItem("key23")~ THEN GOTO need_starbootCespy
    IF ~PartyHasItem("key23")~ THEN GOTO starbootCespy_want
  END

  IF ~~ THEN BEGIN need_starbootCespy SAY @1059
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN starbootCespy_want SAY @1060
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",16)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdboot03",1)
                                                 DestroyItem("bdboot03")
                                                 TakePartyItemNum("key23",1)
                                                 DestroyItem("key23")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO starbootCespy_stall
  END

  IF ~~ THEN BEGIN starbootCespy_stall SAY @1061
    COPY_TRANS BOTSMITH 4
  END

END                                            
