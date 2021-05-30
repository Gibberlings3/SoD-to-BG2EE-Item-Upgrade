EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("bdscaleg")~ THEN GOTO PartyHasGreenDragScale	//Dragonscale Shield +4/Green Dragonscale Armor +4/Green Dragon Plate
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasGreenDragScale
SAY @54
 IF ~PartyHasItem("bdscaleg")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("bdscaleg")~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts
SAY @55
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6016 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",53)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("bdscaleg")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",54)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("bdscaleg")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",82)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("bdscaleg")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @56
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",129)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("bdscaleg")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END