// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdrobe05")~ THEN GOTO frobe // Robe of Roaring Flames
END

APPEND BOTSMITH

  IF ~~ THEN BEGIN frobe SAY @1042
    IF ~!PartyHasItem("wa2robe")~ THEN GOTO need_frobe
    IF ~PartyHasItem("wa2robe")~ THEN GOTO frobe_want
  END

  IF ~~ THEN BEGIN need_frobe SAY @1043
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN frobe_want SAY @1044
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",12)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("bdrobe05",1)
                                                 DestroyItem("bdrobe05")
                                                 TakePartyItemNum("wa2robe",1)
                                                 DestroyItem("wa2robe")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO frobe_stall
  END

  IF ~~ THEN BEGIN frobe_stall SAY @1045
    COPY_TRANS BOTSMITH 4
  END

END                                            
