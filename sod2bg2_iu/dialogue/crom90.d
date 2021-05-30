EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("compon19")~ THEN GOTO PartyHasBlueDragScale	//Dragonscale Shield +3/Silver Dragonscale Armor +3/Silver Dragon Scale (Plate)/Silver Dragon Helm
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasBlueDragScale
SAY @326
 IF ~PartyHasItem("compon19")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("compon19")~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts
SAY @327
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6030 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @328
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",149)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("compon19")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @328
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",57)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("compon19")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @328
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",147)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("compon19")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @328
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",148)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("compon19")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END