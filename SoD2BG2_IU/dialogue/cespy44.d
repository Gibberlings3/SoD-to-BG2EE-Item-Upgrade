// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdsw2h01")~ THEN GOTO DragBlade4Cespy // Vorpal Dragon Blade +4
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN DragBlade4Cespy SAY @1186
    IF ~!PartyHasItem("misc8u")~ THEN GOTO need_DragBlade4Cespy
    IF ~PartyHasItem("misc8u")~ THEN GOTO DragBlade4Cespy_want
  END

  IF ~~ THEN BEGIN need_DragBlade4Cespy SAY @1187
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DragBlade4Cespy_want SAY @1188
    IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",55)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdsw2h01",1)
                                                 DestroyItem("bdsw2h01")
                                                 TakePartyItemNum("misc8u",1)
                                                 DestroyItem("misc8u")
                                                 DestroyGold(7500)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DragBlade4Cespy_stall
  END

  IF ~~ THEN BEGIN DragBlade4Cespy_stall SAY @1189
    COPY_TRANS BOTSMITH 4
  END

END                                            
