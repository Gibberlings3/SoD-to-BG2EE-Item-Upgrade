// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkhalb1")~ THEN GOTO MaelPike5Cespy // Maelstrom Pike +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN MaelPike5Cespy SAY @1145
    IF ~OR(2)
          !PartyHasItem("halb09b")
          !PartyHasItem("scrlag")~ THEN GOTO need_MaelPike5Cespy
    IF ~PartyHasItem("halb09b")
        PartyHasItem("scrlag")~ THEN GOTO MaelPike5Cespy_want
  END

  IF ~~ THEN BEGIN need_MaelPike5Cespy SAY @1146
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN MaelPike5Cespy_want SAY @1147
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",42)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkhalb1",1)
                                                 DestroyItem("dtkhalb1")
                                                 TakePartyItemNum("scrlag",1)
						 DestroyItem("scrlag")
                                                 TakePartyItemNum("halb09b",1)
                                                 DestroyItem("halb09b")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO MaelPike5Cespy_stall
  END

  IF ~~ THEN BEGIN MaelPike5Cespy_stall SAY @1148
    COPY_TRANS BOTSMITH 4
  END

END                                            
