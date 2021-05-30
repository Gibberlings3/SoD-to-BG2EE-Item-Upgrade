EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("bdsw1h02")~ THEN GOTO PartyHasAcidSwd  //Tongue of Acid +4
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasAcidSwd
SAY @0
 IF ~OR(1)
     PartyHasItem("sw2h15a")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("sw2h15a")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @1
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @2
IF ~PartyHasItem("sw2h15a")~ THEN + PartyHasAllParts_01	//Silver Hilt
IF ~!PartyHasItem("sw2h15a")~ THEN + PartyHasAllParts_02	//Silver Hilt
END

IF ~~ THEN BEGIN PartyHasAllParts_01 
SAY @101
++ @6028 GOTO HowMuch_SilverHilt
++ @6029 + MovingRightAlong
++ @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02
SAY @104
++ @6025 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_SilverHilt
SAY @110
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",58)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("bdsw1h02",1)
                                 TakePartyItemNum("sw2h15a",1)
                                 DestroyItem("bdsw1h02")
                                 DestroyItem("sw2h15a")
                                 DestroyGold(10000)~ REPLY @6004 GOTO 56
 IF ~~ THEN REPLY @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END