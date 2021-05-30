EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkswda4")~ THEN GOTO PartyHasDemon4	// Verdant Crimson/Shadow Scale/Plate
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasDemon4
SAY @262
 IF ~PartyHasItem("dtkdeye")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkdeye")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @263
 IF ~~ THEN GOTO MovingRightAlong
END


IF ~~ THEN BEGIN PartyHasAllParts 
SAY @264
++ @6062 GOTO HowMuch_demonsword_5
END

IF ~~ THEN BEGIN HowMuch_demonsword_5
SAY @265
 IF ~!PartyHasItem("dtkdeye")~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyHasItem("dtkdeye")~ THEN DO ~SetGlobal("DTKItems","ar0334",111)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyItemNum("dtkswda4",1)
                                 TakePartyItemNum("dtkdeye",1)
                                 DestroyItem("dtkswda4")
                                 DestroyItem("dtkdeye")~ REPLY @6015 GOTO 56
								 
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @3
COPY_TRANS WSMITH01 13
END


END