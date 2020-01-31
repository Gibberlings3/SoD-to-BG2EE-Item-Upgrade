// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bddart01")~ THEN GOTO Biter3 // Biter +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN Biter3 SAY @1028
    IF ~OR(2)
          NumItemsPartyLT("scrl95",5)
          NumItemsPartyLT("misc37",5)~ THEN GOTO need_Biter3
    IF ~NumItemsPartyGT("scrl95",4)
        NumItemsPartyGT("misc37",4)~ THEN GOTO Biter3_want
  END

  IF ~~ THEN BEGIN need_Biter3 SAY @1029
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Biter3_want SAY @1030
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",8)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bddart01",1)
                                                 DestroyItem("bddart01")
                                                 TakePartyItemNum("scrl95",5)
                                                 DestroyItem("scrl95")
                                                 TakePartyItemNum("misc37",5)
                                                 DestroyItem("misc37")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO biter3_stall
  END

  IF ~~ THEN BEGIN biter3_stall SAY @1031
    COPY_TRANS BOTSMITH 4
  END

END                                            
