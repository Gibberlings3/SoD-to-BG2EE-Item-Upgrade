// Allows cespy to attach FoA heads in any order
EXTEND_BOTTOM ~botsmith~ 68
  IF ~PartyHasItem("blun14")
      PartyHasItem("blun30b")~ THEN GOTO AddElectricTo3
  IF ~PartyHasItem("blun30d")
      PartyHasItem("blun30a")~ THEN GOTO AddPoisonTo4Electric
  IF ~PartyHasItem("blun30d")
      !PartyHasItem("blun30a")~ THEN GOTO 69
  IF ~PartyHasItem("blun14")
      PartyHasItem("blun30a")
      PartyHasItem("blun30b")~ THEN GOTO AddBothTo3
END

APPEND ~botsmith~

  IF ~~ THEN BEGIN AddBothTo3 SAY @1419
    IF ~PartyGoldLT(10000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #70893 DO ~SetGlobal("ItemMaker","GLOBAL",17)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("blun14",1)
                                                 DestroyItem("blun14")
                                                 TakePartyItemNum("blun30a",1)
                                                 DestroyItem("blun30a")
                                                 TakePartyItemNum("blun30b",1)
                                                 DestroyItem("blun30b")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~PartyGoldGT(4999)~ THEN REPLY @1420 DO ~SetGlobal("DTKItemsCespy","GLOBAL",158)
                                                  TakePartyGold(5000)
                                                  TakePartyItemNum("blun14",1)
                                                  DestroyItem("blun14")
                                                  TakePartyItemNum("blun30b",1)
                                                  DestroyItem("blun30b")
                                                  DestroyGold(5000)~ GOTO 11
    IF ~PartyGoldGT(4999)~ THEN REPLY @1421 DO ~SetGlobal("ItemMaker","GLOBAL",16)
                                                  TakePartyGold(5000)
                                                  TakePartyItemNum("blun14",1)
                                                  DestroyItem("blun14")
                                                  TakePartyItemNum("blun30a",1)
                                                  DestroyItem("blun30a")
                                                  DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

  IF ~~ THEN BEGIN AddElectricTo3 SAY @1422
    IF ~PartyGoldLT(5000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #70893 DO ~SetGlobal("DTKItemsCespy","GLOBAL",158)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("blun14",1)
                                                 DestroyItem("blun14")
                                                 TakePartyItemNum("blun30b",1)
                                                 DestroyItem("blun30b")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

  IF ~~ THEN BEGIN AddPoisonTo4Electric SAY @1423
    IF ~PartyGoldLT(5000)~ THEN REPLY #70892 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #70893 DO ~SetGlobal("ItemMaker","GLOBAL",17)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("blun30d",1)
                                                 DestroyItem("blun30d")
                                                 TakePartyItemNum("blun30a",1)
                                                 DestroyItem("blun30a")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #70894 GOTO 72
  END

END