// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdleat07")~ THEN GOTO NightArm6Cespy // The Night's Embrace +6
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NightArm6Cespy SAY @1206
    IF ~!PartyHasItem("scaleb")~ THEN GOTO need_NightArm6Cespy
    IF ~PartyHasItem("scaleb")~ THEN GOTO NightArm6Cespy_want
  END

  IF ~~ THEN BEGIN need_NightArm6Cespy SAY @1207
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NightArm6Cespy_want SAY @1208
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",60)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdleat07",1)
                                                 DestroyItem("bdleat07")
                                                 TakePartyItemNum("scaleb",1)
                                                 DestroyItem("scaleb")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NightArm6Cespy_stall
  END

  IF ~~ THEN BEGIN NightArm6Cespy_stall SAY @1209
    COPY_TRANS BOTSMITH 4
  END

END                                            
