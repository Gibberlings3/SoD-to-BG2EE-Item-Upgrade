EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkscal1")~ THEN GOTO PartyHasBlackDragScale	//Black Dragon Plate/Black Dragonscale Armor +4/Black Dragon Helm/Dragonscale Shield +3 (black scales)
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasBlackDragScale
SAY @231
 IF ~PartyHasItem("dtkscal1")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkscal1")~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts
SAY @232
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6036 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",80)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkscal1")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",81)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkscal1")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",79)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkscal1")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",128)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkscal1")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END