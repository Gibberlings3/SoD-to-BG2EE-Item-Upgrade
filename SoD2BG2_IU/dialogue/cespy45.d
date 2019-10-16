// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkswd05")~ THEN GOTO DragBlade5Cespy // Vorpal Dragon Blade +5
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN DragBlade5Cespy SAY @1190
    IF ~!PartyHasItem("dtkfrost")~ THEN GOTO need_DragBlade5Cespy
    IF ~PartyHasItem("dtkfrost")~ THEN GOTO DragBlade5Cespy_want
  END

  IF ~~ THEN BEGIN need_DragBlade5Cespy SAY @1191
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN DragBlade5Cespy_want SAY @1192
    IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",56)
                                                 TakePartyGold(10000)
                                                 TakePartyItemNum("dtkswd05",1)
                                                 DestroyItem("dtkswd05")
                                                 TakePartyItemNum("dtkfrost",1)
                                                 DestroyItem("dtkfrost")
                                                 DestroyGold(10000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO DragBlade5Cespy_stall
  END

  IF ~~ THEN BEGIN DragBlade5Cespy_stall SAY @1193
    COPY_TRANS BOTSMITH 4
  END

END                                            
