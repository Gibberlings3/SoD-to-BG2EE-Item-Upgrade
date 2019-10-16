// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdblun06")~ THEN GOTO StaffCurseCespy // Uncursed Staff of Antipode
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN StaffCurseCespy SAY @1092
    IF ~OR(2)
          !PartyHasItem("wand05")
          !PartyHasItem("wand06")~ THEN GOTO need_StaffCurseCespy
    IF ~PartyHasItem("wand05")
        PartyHasItem("wand06")~ THEN GOTO StaffCurseCespy_want
  END

  IF ~~ THEN BEGIN need_StaffCurseCespy SAY @1093
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN StaffCurseCespy_want SAY @1094
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",30)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdblun06",1)
                                                 DestroyItem("bdblun06")
                                                 TakePartyItemNum("wand05",1)
						 DestroyItem("wand05")
                                                 TakePartyItemNum("wand06",1)
                                                 DestroyItem("wand06")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO StaffCurseCespy_stall
  END

  IF ~~ THEN BEGIN StaffCurseCespy_stall SAY @1095
    COPY_TRANS BOTSMITH 4
  END

END                                            
