EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("bdbow04")~ THEN GOTO PartyHasBbow  //Bow of the Wailing Banshee +4
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasBbow
SAY @98
 IF ~OR(3)
     PartyHasItem("bdbrd04")
     PartyHasItem("compon10")
     PartyHasItem("bow19b")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("bdbrd04")
     !PartyHasItem("compon10")
     !PartyHasItem("bow19b")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @99
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @105
IF ~PartyHasItem("bow19b")
PartyHasItem("bdbrd04")
!PartyHasItem("compon10")~ THEN + PartyHasAllParts_01 
IF ~!PartyHasItem("bow19b")
PartyHasItem("bdbrd04")
PartyHasItem("compon10")~ THEN + PartyHasAllParts_02
IF ~PartyHasItem("bow19b")
PartyHasItem("bdbrd04")
PartyHasItem("compon10")~ THEN + PartyHasAllParts_03
IF ~!PartyHasItem("bow19b")
PartyHasItem("bdbrd04")
!PartyHasItem("compon10")~ THEN + PartyHasAllParts_04
IF ~PartyHasItem("bow19b")
!PartyHasItem("bdbrd04")
PartyHasItem("compon10")~ THEN + PartyHasAllParts_04
IF ~PartyHasItem("bow19b")
!PartyHasItem("bdbrd04")
!PartyHasItem("compon10")~ THEN + PartyHasAllParts_04
IF ~!PartyHasItem("bow19b")
!PartyHasItem("bdbrd04")
PartyHasItem("compon10")~ THEN + PartyHasAllParts_04
END

IF ~~ THEN BEGIN PartyHasAllParts_01 
SAY @106
++ @6021 GOTO HowMuch_gesen
++ @6024 + MovingRightAlong
++ @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02
SAY @107
++ @6022 GOTO HowMuch_gond
++ @6023 + MovingRightAlong
++ @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03
SAY @108
++ @6022 GOTO HowMuch_gond
++ @6021 GOTO HowMuch_gesen
++ @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04
SAY @109
++ @6025 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_gond 
SAY @100
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("CDItems","ar0334",32)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("bdbow04",1)
                                 TakePartyItemNum("compon10",1)
                                 TakePartyItemNum("bdbrd04",1)
                                 DestroyItem("bdbow04")
                                 DestroyItem("compon10")
                                 DestroyItem("bdbrd04")
                                 DestroyGold(10000)~ REPLY @6004 GOTO 56
 IF ~~ THEN REPLY @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_gesen
SAY @100
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("CDItems","ar0334",32)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("bdbow04",1)
                                 TakePartyItemNum("bow19b",1)
                                 TakePartyItemNum("bdbrd04",1)
                                 DestroyItem("bdbow04")
                                 DestroyItem("bow19b")
                                 DestroyItem("bdbrd04")
                                 DestroyGold(10000)~ REPLY @6004 GOTO 56
 IF ~~ THEN REPLY @6003 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END