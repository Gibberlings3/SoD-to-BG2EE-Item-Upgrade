// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("hamm03")~ THEN GOTO NewItem // Ashideena +3
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN NewItem SAY @1446
    IF ~OR(4)
          !PartyHasItem("hamm05")
          !PartyHasItem("scrl1k")
          !PartyHasItem("misc7n")
          !PartyHasItem("wand07")~ THEN GOTO need_NewItem
    IF ~PartyHasItem("hamm05")
        PartyHasItem("scrl1k")
        PartyHasItem("misc7n")
        PartyHasItem("wand07")~ THEN GOTO NewItem_want1
	IF ~PartyHasItem("hamm05")
        PartyHasItem("scrl1k")
        !PartyHasItem("misc7n")
        PartyHasItem("wand07")~ THEN GOTO NewItem_want2
	IF ~PartyHasItem("hamm05")
        PartyHasItem("scrl1k")
        PartyHasItem("misc7n")
        !PartyHasItem("wand07")~ THEN GOTO NewItem_want1
  END

  IF ~~ THEN BEGIN need_NewItem SAY @1447
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NewItem_want1 SAY @1448
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",163)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("hamm03",1)
                                                 DestroyItem("hamm03")
                                                 TakePartyItemNum("misc7n",1)
                                                 DestroyItem("misc7n")
                                                 TakePartyItemNum("hamm05",1)
                                                 DestroyItem("hamm05")
                                                 TakePartyItemNum("scrl1k",1)
                                                 DestroyItem("scrl1k")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END
  
  IF ~~ THEN BEGIN NewItem_want2 SAY @1448
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",163)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("hamm03",1)
                                                 DestroyItem("hamm03")
                                                 TakePartyItemNum("hamm05",1)
                                                 DestroyItem("hamm05")
                                                 TakePartyItemNum("scrl1k",1)
                                                 DestroyItem("scrl1k")
                                                 TakePartyItemNum("wand07",1)
                                                 DestroyItem("wand07")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1449
    COPY_TRANS BOTSMITH 4
  END

END                                            
