// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdboot03")~ THEN GOTO starbootCespy // Star-Strewn Boots of Antimagic
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN starbootCespy SAY @1058
    IF ~OR(3)
	NumItemsPartyLT("potn34",2)
	NumItemsPartyLT("potn35",2)
	NumItemsPartyLT("potn33",2)~ THEN GOTO need_starbootCespy
    IF ~NumItemsPartyGT("potn34",1)
	NumItemsPartyGT("potn35",1)
	NumItemsPartyGT("potn33",1)~ THEN GOTO starbootCespy_want
  END

  IF ~~ THEN BEGIN need_starbootCespy SAY @1059
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN starbootCespy_want SAY @1060
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",16)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdboot03",1)
                                                 DestroyItem("bdboot03")
                                                 TakePartyItemNum("potn33",2)
                                                 DestroyItem("potn33")
                                                 TakePartyItemNum("potn34",2)
                                                 DestroyItem("potn34")
                                                 TakePartyItemNum("potn35",2)
                                                 DestroyItem("potn35")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO starbootCespy_stall
  END

  IF ~~ THEN BEGIN starbootCespy_stall SAY @1061
    COPY_TRANS BOTSMITH 4
  END

END                                            
