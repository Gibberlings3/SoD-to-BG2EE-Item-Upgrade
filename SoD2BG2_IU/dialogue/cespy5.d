// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhelm09")~ THEN GOTO DHelm // Horned Helm of Dumathoin
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN DHelm SAY @1016
    IF ~OR(2)
          !PartyHasItem("compon12")
          !PartyHasItem("compon13")~ THEN GOTO need_DHelm
    IF ~PartyHasItem("compon12")
        PartyHasItem("compon13")~ THEN GOTO DHelm_want
  END

  IF ~~ THEN BEGIN need_DHelm SAY @1017
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DHelm_want SAY @1018
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",5)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhelm09",1)
                                                 DestroyItem("bdhelm09")
                                                 TakePartyItemNum("compon12",1)
                                                 DestroyItem("compon12")
                                                 TakePartyItemNum("compon13",1)
                                                 DestroyItem("compon13")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DHelm_stall
  END

  IF ~~ THEN BEGIN DHelm_stall SAY @1019
    COPY_TRANS BOTSMITH 4
  END

END                                            
