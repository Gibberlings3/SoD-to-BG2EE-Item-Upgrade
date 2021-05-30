// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdscaleg")~ THEN GOTO gdragscaleCespy // Green Dragonscale Armor +4/Dragonscale Shield +4/Green Dragon Plate +3/Green Dragon Helm
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN gdragscaleCespy
SAY @1182
 IF ~PartyHasItem("bdscaleg")~ THEN GOTO gdragscaleCespy_want
 IF ~!PartyHasItem("bdscaleg")~ THEN GOTO need_gdragscaleCespy
END

IF ~~ THEN BEGIN need_gdragscaleCespy SAY @1185
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN gdragscaleCespy_want 
SAY @1183
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6016 GOTO gdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",53)
                                 		TakePartyGold(7500)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",54)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",82)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",129)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragscaleCespy_stall
END

IF ~~ THEN BEGIN gdragscaleCespy_stall SAY @1185
COPY_TRANS BOTSMITH 4
END


END
