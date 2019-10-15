// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdblun07")~ THEN GOTO BackwhackCespy //  Nasty Backwhacker +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN BackwhackCespy SAY @1100
    IF ~OR(2)
          !PartyHasItem("blun24")
          !PartyHasItem("blun17")~ THEN GOTO need_BackwhackCespy
    IF ~PartyHasItem("blun24")
        PartyHasItem("blun17")~ THEN GOTO BackwhackCespy_want
  END

  IF ~~ THEN BEGIN need_BackwhackCespy SAY @1101
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN BackwhackCespy_want SAY @1102
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",31)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdblun07",1)
                                                 DestroyItem("bdblun07")
                                                 TakePartyItemNum("blun24",1)
						 DestroyItem("blun24")
                                                 TakePartyItemNum("blun17",1)
                                                 DestroyItem("blun17")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO BackwhackCespy_stall
  END

  IF ~~ THEN BEGIN BackwhackCespy_stall SAY @1103
    COPY_TRANS BOTSMITH 4
  END

END                                            
