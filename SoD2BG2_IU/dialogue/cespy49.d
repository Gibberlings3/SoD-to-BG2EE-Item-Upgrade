// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbrac02")~ THEN GOTO JuggaloCespy // Wicked Jester's Bracers
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN JuggaloCespy SAY @1210
    IF ~NumItemsPartyLT("misc6m",2)~ THEN GOTO need_JuggaloCespy
    IF ~NumItemsPartyGT("misc6m",1)~ THEN GOTO JuggaloCespy_want
  END

  IF ~~ THEN BEGIN need_JuggaloCespy SAY @1211
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN JuggaloCespy_want SAY @1212
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",61)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbrac02",1)
                                                 DestroyItem("bdbrac02")
                                                 TakePartyItemNum("misc6m",2)
                                                 DestroyItem("misc6m")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO JuggaloCespy_stall
  END

  IF ~~ THEN BEGIN JuggaloCespy_stall SAY @1213
    COPY_TRANS BOTSMITH 4
  END

END                                            
