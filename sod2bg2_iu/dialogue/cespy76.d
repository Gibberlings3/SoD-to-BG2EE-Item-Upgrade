// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw1hx5")~ THEN GOTO DemonSwd1Cespy // Gift of the Demon +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN DemonSwd1Cespy SAY @1312
    IF ~OR(3)
          !PartyHasItem("dtkdore")
		  !PartyHasItem("scrl5g")
          !PartyHasItem("scrlak")~ THEN GOTO need_DemonSwd1Cespy
    IF ~PartyHasItem("dtkdore")
		!PartyHasItem("scrlak")
        PartyHasItem("scrl5g")~ THEN GOTO DemonSwd1Cespy_want
    IF ~PartyHasItem("dtkdore")
		PartyHasItem("scrlak")
        !PartyHasItem("scrl5g")~ THEN GOTO DemonSwd1Cespy_want2
    IF ~PartyHasItem("dtkdore")
		PartyHasItem("scrlak")
        PartyHasItem("scrl5g")~ THEN GOTO DemonSwd1Cespy_want2
    IF ~!PartyHasItem("dtkdore")
		PartyHasItem("scrlak")
        PartyHasItem("scrl5g")~ THEN GOTO need_DemonSwd1Cespy
    IF ~PartyHasItem("dtkdore")
		!PartyHasItem("scrlak")
        !PartyHasItem("scrl5g")~ THEN GOTO need_DemonSwd1Cespy
  END

  IF ~~ THEN BEGIN need_DemonSwd1Cespy SAY @1313
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DemonSwd1Cespy_want SAY @1314
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",109)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1hx5",1)
                                                 DestroyItem("bdsw1hx5")
                                                 TakePartyItemNum("dtkdore",1)
                                                 DestroyItem("dtkdore")
												 TakePartyItemNum("scrl5g",1)
                                                 DestroyItem("scrl5g")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DemonSwd1Cespy_stall
  END
  
  IF ~~ THEN BEGIN DemonSwd1Cespy_want2 SAY @1314
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",109)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdsw1hx5",1)
                                                 DestroyItem("bdsw1hx5")
                                                 TakePartyItemNum("dtkdore",1)
                                                 DestroyItem("dtkdore")
												 TakePartyItemNum("scrlak",1)
                                                 DestroyItem("scrlak")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DemonSwd1Cespy_stall
  END

  IF ~~ THEN BEGIN DemonSwd1Cespy_stall SAY @1315
    COPY_TRANS BOTSMITH 4
  END

END                                            
