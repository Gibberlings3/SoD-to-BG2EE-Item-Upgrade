// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhamm06")~ THEN GOTO NewItemCespy // Dread Hammer +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1424
    IF ~!PartyHasItem("miscbg")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("miscbg")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1425
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItemCespy_want SAY @1426
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",159)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdhamm06",1)
                                                 DestroyItem("bdhamm06")
                                                 TakePartyItemNum("miscbg",1)
                                                 DestroyItem("miscbg")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1427
    COPY_TRANS BOTSMITH 4
  END

END                                            
