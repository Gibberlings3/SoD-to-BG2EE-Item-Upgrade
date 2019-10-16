// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbelt02")~ THEN GOTO bbelt // Belt of the Blademaster
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN bbelt SAY @1024
    IF ~OR(3)
          !PartyHasItem("brac10")
          !PartyHasItem("brac09")
          !PartyHasItem("scrl7t")~ THEN GOTO need_bbelt
    IF ~PartyHasItem("brac10")
        PartyHasItem("brac09")
        PartyHasItem("scrl7t")~ THEN GOTO bbelt_want
  END

  IF ~~ THEN BEGIN need_bbelt SAY @1025
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN bbelt_want SAY @1026
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",7)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdbelt02",1)
                                                 DestroyItem("bdbelt02")
                                                 TakePartyItemNum("brac10",1)
                                                 DestroyItem("brac10")
                                                 TakePartyItemNum("brac09",1)
                                                 DestroyItem("brac09")
                                                 TakePartyItemNum("scrl7t",1)
                                                 DestroyItem("scrl7t")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO bbelt_stall
  END

  IF ~~ THEN BEGIN bbelt_stall SAY @1027
    COPY_TRANS BOTSMITH 4
  END

END                                            
