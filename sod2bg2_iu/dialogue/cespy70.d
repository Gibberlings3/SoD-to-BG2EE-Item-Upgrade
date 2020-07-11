// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdblun04")~ THEN GOTO Martyr3 // Martyr's Morningstar +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN Martyr3 SAY @1286
    IF ~OR(2)
          NumItemsPartyLT("misc44",1)
          NumItemsPartyLT("scrl5e",1)~ THEN GOTO need_Martyr3
    IF ~NumItemsPartyGT("misc44",0)
        NumItemsPartyGT("scrl5e",0)~ THEN GOTO Martyr3_want
  END

  IF ~~ THEN BEGIN need_Martyr3 SAY @1287
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Martyr3_want SAY @1288
    IF ~PartyGoldLT(3000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(2999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",101)
                                                 TakePartyGold(3000)
                                                 TakePartyItemNum("bdblun04",1)
                                                 DestroyItem("bdblun04")
                                                 TakePartyItemNum("misc44",1)
                                                 DestroyItem("misc44")
                                                 TakePartyItemNum("scrl5e",1)
                                                 DestroyItem("scrl5e")
                                                 DestroyGold(3000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO Martyr3_stall
  END

  IF ~~ THEN BEGIN Martyr3_stall SAY @1289
    COPY_TRANS BOTSMITH 4
  END

END                                            
