// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbrac03")~ THEN GOTO NimbleGloveCespy // Adventurer's Nimble Gloves of Guarding
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NimbleGloveCespy SAY @1113
    IF ~OR(3)
          !PartyHasItem("brac15")
          !PartyHasItem("brac17")
          !PartyHasItem("brac04")~ THEN GOTO need_NimbleGloveCespy
    IF ~PartyHasItem("brac15")
        PartyHasItem("brac17")
        PartyHasItem("brac04")~ THEN GOTO NimbleGloveCespy_want
  END

  IF ~~ THEN BEGIN need_NimbleGloveCespy SAY @1114
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN NimbleGloveCespy_want SAY @1115
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",33)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbrac03",1)
                                                 DestroyItem("bdbrac03")
                                                 TakePartyItemNum("brac15",1)
						 DestroyItem("brac15")
                                                 TakePartyItemNum("brac17",1)
						 DestroyItem("brac17")
                                                 TakePartyItemNum("brac04",1)
                                                 DestroyItem("brac04")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NimbleGloveCespy_stall
  END

  IF ~~ THEN BEGIN NimbleGloveCespy_stall SAY @1116
    COPY_TRANS BOTSMITH 4
  END

END                                            
