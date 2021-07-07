// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdax1h03")~ THEN GOTO blizzaxe // Blizzard Axe +4
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN blizzaxe SAY @1436
    IF ~OR(3)
          !PartyHasItem("ax1h13")
          !PartyHasItem("wand06")
          !PartyHasItem("scrl1x")~ THEN GOTO need_blizzaxe
    IF ~PartyHasItem("ax1h13")
        PartyHasItem("wand06")
        PartyHasItem("scrl1x")~ THEN GOTO blizzaxe_want
  END

  IF ~~ THEN BEGIN need_blizzaxe SAY @1437
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN blizzaxe_want SAY @1438
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",74)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdax1h03",1)
                                                 DestroyItem("bdax1h03")
                                                 TakePartyItemNum("ohioun02",1)
                                                 DestroyItem("ohioun02")
                                                 TakePartyItemNum("ax1h13",1)
                                                 DestroyItem("ax1h13")
                                                 TakePartyItemNum("wand06",1)
                                                 DestroyItem("wand06")
                                                 TakePartyItemNum("scrl1x",1)
                                                 DestroyItem("scrl1x")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO crom_stall
  END

  IF ~~ THEN BEGIN crom_stall SAY @1439
    COPY_TRANS BOTSMITH 4
  END

END                                            
