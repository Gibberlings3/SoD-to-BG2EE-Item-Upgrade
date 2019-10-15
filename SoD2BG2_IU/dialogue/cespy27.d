// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdarow02")~ THEN GOTO VoidQuiverCespy // Quiver of Void-Tipped Arrows +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN VoidQuiverCespy SAY @1117
    IF ~!PartyHasItem("quiver03")~ THEN GOTO need_VoidQuiverCespy
    IF ~PartyHasItem("quiver03")~ THEN GOTO VoidQuiverCespy_want
  END

  IF ~~ THEN BEGIN need_VoidQuiverCespy SAY @1118
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN VoidQuiverCespy_want SAY @1119
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",34)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdarow02",1)
                                                 DestroyItem("bdarow02")
                                                 TakePartyItemNum("quiver03",1)
                                                 DestroyItem("quiver03")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO VoidQuiverCespy_stall
  END

  IF ~~ THEN BEGIN VoidQuiverCespy_stall SAY @1120
    COPY_TRANS BOTSMITH 4
  END

END                                            
