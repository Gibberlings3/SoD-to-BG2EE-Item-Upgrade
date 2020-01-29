// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdscaleg")~ THEN GOTO gdragscaleCespy // Green Dragonscale Armor +4/Dragonscale Shield +3
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
++ @6020 GOTO HowMuch_armor
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

IF ~~ THEN BEGIN HowMuch_armor
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",54)
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
