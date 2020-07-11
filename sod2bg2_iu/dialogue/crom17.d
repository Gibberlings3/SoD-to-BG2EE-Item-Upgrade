EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("bdleat05")~ THEN GOTO PartyHasGreenDrag	// Verdant Crimson/Shadow Scale/Plate
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasGreenDrag
SAY @50
 IF ~OR(2)
     PartyHasItem("scaler")
     PartyHasItem("scaleb")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("scaleb")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @51
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @52
IF ~PartyHasItem("scaler")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_01 
IF ~!PartyHasItem("scaler")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_02
IF ~PartyHasItem("scaler")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_03
END

IF ~~ THEN BEGIN PartyHasAllParts_01 
SAY @53
++ @6038 GOTO HowMuch_redscale_plate
++ @6037 GOTO HowMuch_redscale_scale
++ @6017 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02
SAY @57
++ @6041 GOTO HowMuch_shadowscale_plate
++ @6040 GOTO HowMuch_shadowscale_scale
++ @6018 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03
SAY @60
++ @6041 GOTO HowMuch_shadowscale_plate
++ @6040 GOTO HowMuch_shadowscale_scale
++ @6038 GOTO HowMuch_redscale_plate
++ @6037 GOTO HowMuch_redscale_scale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shadowscale_plate 
SAY @61
 IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(14999)~ THEN DO ~SetGlobal("DTKItems","ar0334",87)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(15000)
                                 TakePartyItemNum("bdleat05",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("bdleat05")
                                 DestroyItem("scaleb")
                                 DestroyGold(15000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shadowscale_scale 
SAY @61
 IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(14999)~ THEN DO ~SetGlobal("DTKItems","ar0334",18)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(15000)
                                 TakePartyItemNum("bdleat05",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("bdleat05")
                                 DestroyItem("scaleb")
                                 DestroyGold(15000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_redscale_plate
SAY @61
 IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(14999)~ THEN DO ~SetGlobal("DTKItems","ar0334",17)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(15000)
                                 TakePartyItemNum("bdleat05",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("bdleat05")
                                 DestroyItem("scaler")
                                 DestroyGold(15000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_redscale_scale
SAY @61
 IF ~PartyGoldLT(15000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(14999)~ THEN DO ~SetGlobal("DTKItems","ar0334",86)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(15000)
                                 TakePartyItemNum("bdleat05",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("bdleat05")
                                 DestroyItem("scaler")
                                 DestroyGold(15000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END