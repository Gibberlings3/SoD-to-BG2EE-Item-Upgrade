// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkstaf1")~ THEN GOTO StaffCurseRCespy // Uncursed Staff of Antipode - recharge
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN StaffCurseRCespy SAY @1096
    IF ~OR(2)
          !PartyHasItem("wand05")
          !PartyHasItem("wand06")~ THEN GOTO need_StaffCurseRCespy
    IF ~PartyHasItem("wand05")
        PartyHasItem("wand06")~ THEN GOTO StaffCurseRCespy_want
  END

  IF ~~ THEN BEGIN need_StaffCurseRCespy SAY @1097
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN StaffCurseRCespy_want SAY @1098
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",30)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("dtkstaf1",1)
                                                 DestroyItem("dtkstaf1")
                                                 TakePartyItemNum("wand05",1)
						 DestroyItem("wand05")
                                                 TakePartyItemNum("wand06",1)
                                                 DestroyItem("wand06")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO StaffCurseRCespy_stall
  END

  IF ~~ THEN BEGIN StaffCurseRCespy_stall SAY @1099
    COPY_TRANS BOTSMITH 4
  END

END                                            
