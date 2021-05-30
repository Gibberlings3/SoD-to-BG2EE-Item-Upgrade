EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkascrl")~ THEN GOTO PartyHasAncientScroll1	//Trollkiller's Fireball/Thunder Thrust/Hoar of Frost/Corrosion/Ko'Dezza's Multi-Fireball/Ko'Dezza's Slime Golem/Fell Rage/Infernal Bone Shield/Maelstrom/Cataclysm
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasAncientScroll1
SAY @208
 IF ~OR(3)
     PartyHasItem("dtkdgbl2")
     PartyHasItem("dtkdgbld")
     PartyHasItem("misc8h")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkdgbl2")
     !PartyHasItem("dtkdgbld")
     !PartyHasItem("misc8h")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @209
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @210
IF ~PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + PartyHasAllParts_01 // Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + PartyHasAllParts_02 // Shadow Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + PartyHasAllParts_03 // Dragon's/Shadow Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + PartyHasAllParts_04 // Dragon's/Silver Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + PartyHasAllParts_05 // Shadow/Silver Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + PartyHasAllParts_06 // Dragon's/Shadow/Silver Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + PartyHasAllParts_07 // Silver Dragon's Blood
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // Dragon's Blood
SAY @211
++ @6063 GOTO HowMuch_dragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // Shadow Dragon's Blood
SAY @212
++ @6064 GOTO HowMuch_shddragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // Dragon/Shadow Dragon's Blood
SAY @216
++ @6063 GOTO HowMuch_dragblood
++ @6064 GOTO HowMuch_shddragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // Dragon's/Silver Dragon's Blood
SAY @216
++ @6063 GOTO HowMuch_dragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // Shadow/Silver Dragon's Blood
SAY @216
++ @6064 GOTO HowMuch_shddragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // Dragon/Shadow/Silver Dragon's Blood
SAY @216
++ @6063 GOTO HowMuch_dragblood
++ @6064 GOTO HowMuch_shddragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // Silver Dragon's Blood
SAY @213
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_dragblood 
SAY @217
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",71)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkascrl",1)
                                 TakePartyItemNum("dtkdgbl2",1)
                                 DestroyItem("dtkascrl")
                                 DestroyItem("dtkdgbl2")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_sildragblood
SAY @217
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",71)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkascrl",1)
                                 TakePartyItemNum("misc8h",1)
                                 DestroyItem("dtkascrl")
                                 DestroyItem("misc8h")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shddragblood
SAY @217
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",71)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtkascrl",1)
                                 TakePartyItemNum("dtkdgbld",1)
                                 DestroyItem("dtkascrl")
                                 DestroyItem("dtkdgbld")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END