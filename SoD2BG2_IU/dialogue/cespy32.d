// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdhalb01")~ THEN GOTO MaelCespy // Maelstrom Axe +3/Maelstrom Pike +4
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN MaelCespy
SAY @1136
 IF ~PartyHasItem("halb09a")~ THEN GOTO MaelCespy_want
 IF ~!PartyHasItem("halb09a")~ THEN GOTO need_MaelCespy
END

IF ~~ THEN BEGIN need_MaelCespy SAY @1137
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN MaelCespy_want 
SAY @1138
++ @6000 GOTO HowMuch_axe
++ @6001 GOTO HowMuch_halberd
++ @6002 GOTO MaelCespy_stall
END


IF ~~ THEN BEGIN HowMuch_axe 
SAY @1139
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",39)
                                 		TakePartyGold(7500)
                                 		TakePartyItemNum("bdhalb01",1)
                                		TakePartyItemNum("halb09a",1)
                                 		DestroyItem("bdhalb01")
                                 		DestroyItem("halb09a")
                                 		DestroyGold(7500)~ REPLY @6004 GOTO 11
 IF ~~ THEN REPLY @6003 GOTO MaelCespy_stall
END

IF ~~ THEN BEGIN HowMuch_halberd
SAY @1139
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("CDItemMakerTweaks","GLOBAL",40)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("bdhalb01",1)
                                 		TakePartyItemNum("halb09a",1)
                                 		DestroyItem("bdhalb01")
                                 		DestroyItem("halb09a")
                                 		DestroyGold(7500)~ REPLY @6004 GOTO 11
 IF ~~ THEN REPLY @6003 GOTO MaelCespy_stall
END

IF ~~ THEN BEGIN MaelCespy_stall SAY @1140
COPY_TRANS BOTSMITH 4
END


END
