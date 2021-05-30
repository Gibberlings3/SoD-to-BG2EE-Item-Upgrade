// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkscal1")~ THEN GOTO bdragscaleCespy // Black Dragon Plate/Black Dragonscale +4/Black Dragon Helm/Dragonscale Shield +3(black scales)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN bdragscaleCespy
SAY @1283
 IF ~PartyHasItem("dtkscal1")~ THEN GOTO bdragscaleCespy_want
 IF ~!PartyHasItem("dtkscal1")~ THEN GOTO need_bdragscaleCespy
END

IF ~~ THEN BEGIN need_bdragscaleCespy SAY @1185
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN bdragscaleCespy_want 
SAY @1284
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6036 GOTO bdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",80)
                                 		TakePartyGold(7500)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO bdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",81)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO bdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",79)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO bdragscaleCespy_stall
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @1184
 IF ~PartyGoldLT(7500)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(7499)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",128)
                                	        TakePartyGold(7500)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(7500)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO bdragscaleCespy_stall
END

IF ~~ THEN BEGIN bdragscaleCespy_stall SAY @1185
COPY_TRANS BOTSMITH 4
END


END
