// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdshld05")~ THEN GOTO DragAegis4Cespy // Dragonscale Aegis +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN DragAegis4Cespy SAY @1194
    IF ~!PartyHasItem("dtkscal1")~ THEN GOTO need_DragAegis4Cespy
    IF ~PartyHasItem("dtkscal1")~ THEN GOTO DragAegis4Cespy_want
  END

  IF ~~ THEN BEGIN need_DragAegis4Cespy SAY @1195
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DragAegis4Cespy_want SAY @1196
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",57)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdshld05",1)
                                                 DestroyItem("bdshld05")
                                                 TakePartyItemNum("dtkscal1",1)
                                                 DestroyItem("dtkscal1")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DragAegis4Cespy_stall
  END

  IF ~~ THEN BEGIN DragAegis4Cespy_stall SAY @1197
    COPY_TRANS BOTSMITH 4
  END

END                                            
