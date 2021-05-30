EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("compon18")~ THEN GOTO PartyHasWhiteDragScale	//Dragonscale Shield +3/Silver Dragonscale Armor +3/Silver Dragon Scale (Plate)/Silver Dragon Helm
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasWhiteDragScale
SAY @323
 IF ~PartyHasItem("compon18")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("compon18")~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts
SAY @324
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6088 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shield 
SAY @325
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",145)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("compon18")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_scale
SAY @325
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",144)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("compon18")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_plate
SAY @325
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",143)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("compon18")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_helm
SAY @325
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",146)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("compon18")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END