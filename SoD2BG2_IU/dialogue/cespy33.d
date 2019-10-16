// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkaxe01")~ THEN GOTO MaelAxe4Cespy // Maelstrom Axe +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN MaelAxe4Cespy SAY @1141
    IF ~OR(2)
          !PartyHasItem("hamm07")
          !PartyHasItem("scrlag")~ THEN GOTO need_MaelAxe4Cespy
    IF ~PartyHasItem("hamm07")
        PartyHasItem("scrlag")~ THEN GOTO MaelAxe4Cespy_want
  END

  IF ~~ THEN BEGIN need_MaelAxe4Cespy SAY @1142
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN MaelAxe4Cespy_want SAY @1143
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",41)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkaxe01",1)
                                                 DestroyItem("dtkaxe01")
                                                 TakePartyItemNum("scrlag",1)
						 DestroyItem("scrlag")
                                                 TakePartyItemNum("hamm07",1)
                                                 DestroyItem("hamm07")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO MaelAxe4Cespy_stall
  END

  IF ~~ THEN BEGIN MaelAxe4Cespy_stall SAY @1144
    COPY_TRANS BOTSMITH 4
  END

END                                            
