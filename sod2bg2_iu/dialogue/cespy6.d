// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdamul02")~ THEN GOTO Eyes // Archer's Eyes +1
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN Eyes SAY @1020
    IF ~OR(3)
		  !PartyHasItem("scrlaj")
		  !PartyHasItem("scrlaq")
          !PartyHasItem("scrla1")
          NumItemsPartyLT("potn39",2)~ THEN GOTO need_Eyes
    IF ~PartyHasItem("scrlaj")
		PartyHasItem("scrlaq")
        PartyHasItem("scrla1")
        NumItemsPartyGT("potn39",1)~ THEN GOTO Eyes_want1
	IF ~!PartyHasItem("scrlaj")
		PartyHasItem("scrlaq")
        PartyHasItem("scrla1")
        NumItemsPartyGT("potn39",1)~ THEN GOTO Eyes_want1
	IF ~PartyHasItem("scrlaj")
		!PartyHasItem("scrlaq")
        PartyHasItem("scrla1")
        NumItemsPartyGT("potn39",1)~ THEN GOTO Eyes_want2
  END

  IF ~~ THEN BEGIN need_Eyes SAY @1021
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN Eyes_want1 SAY @1022
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",6)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdamul02",1)
                                                 DestroyItem("bdamul02")
                                                 TakePartyItemNum("scrlaj",1)
                                                 DestroyItem("scrlaj")
                                                 TakePartyItemNum("scrla1",1)
                                                 DestroyItem("scrla1")
                                                 TakePartyItemNum("potn39",2)
                                                 DestroyItem("potn39")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO eyes_stall
  END
  
  IF ~~ THEN BEGIN Eyes_want2 SAY @1022
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",6)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdamul02",1)
                                                 DestroyItem("bdamul02")
                                                 TakePartyItemNum("scrlaq",1)
                                                 DestroyItem("scrlaq")
                                                 TakePartyItemNum("scrla1",1)
                                                 DestroyItem("scrla1")
                                                 TakePartyItemNum("potn39",2)
                                                 DestroyItem("potn39")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO eyes_stall
  END

  IF ~~ THEN BEGIN eyes_stall SAY @1023
    COPY_TRANS BOTSMITH 4
  END

END                                            
