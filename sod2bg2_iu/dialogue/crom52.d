EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("sw1h06")~ THEN GOTO PartyHasVarscona	//Varscona +3
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasVarscona
SAY @182
 IF ~PartyHasItem("dtkcoals")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkcoals")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @183
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @184
IF ~PartyHasItem("dtkcoals")~ THEN + PartyHasAllParts_01 
END


IF ~~ THEN BEGIN PartyHasAllParts_01 
SAY @185
++ @6031 GOTO HowMuch_coalesced
++ @6032 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN HowMuch_coalesced 
SAY @188
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",64)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("sw1h06",1)
                                 TakePartyItemNum("dtkcoals",1)
                                 DestroyItem("sw1h06")
                                 DestroyItem("dtkcoals")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END