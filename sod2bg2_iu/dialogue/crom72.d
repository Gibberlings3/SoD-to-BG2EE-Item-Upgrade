EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("ring43")~ THEN GOTO PartyHasOakRing	//Heartwood Ring alternate - elemental
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasOakRing
SAY @242
 IF ~OR(4)
     PartyHasItem("dtkruby")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkfrost")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtktopaz")
	 !PartyHasItem("dtkfrost")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @243
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @244
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_01 // Fire
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_02 // Wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_03 // Fire + Wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_04 // Fire + Earth
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_05 // Wind + Earth
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_06 // Fire + Wind + Earth
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_07 // Earth
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_08 // Fire + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_09 // Wind + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_10 // Fire + Wind + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_11 // Fire + Earth +Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_12 // Wind + Earth + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_13 // Fire + Wind + Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_14 // Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_15 // Water
END


IF ~~ THEN BEGIN PartyHasAllParts_01 // Fire
SAY @245
++ @6042 GOTO HowMuch_firegem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // Wind
SAY @246
++ @6043 GOTO HowMuch_windgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // Fire + Wind
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // Fire + Earth
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // Wind + Earth
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // Fire + Wind + Earth
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // Earth
SAY @247
++ @6044 GOTO HowMuch_earthgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // Fire + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // Wind + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // Fire + Wind + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // Fire + Earth + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // Wind + Earth + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // Fire + Wind + Earth + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // Earth + Water
SAY @249
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // Water
SAY @248
++ @6045 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN HowMuch_firegem 
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",103)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("dtkruby",1)
                                 DestroyItem("ring43")
                                 DestroyItem("dtkruby")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_windgem
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",104)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("dtkemrld",1)
                                 DestroyItem("ring43")
                                 DestroyItem("dtkemrld")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_earthgem
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",105)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("dtktopaz",1)
                                 DestroyItem("ring43")
                                 DestroyItem("dtktopaz")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_watergem
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",106)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("dtkfrost",1)
                                 DestroyItem("ring43")
                                 DestroyItem("dtkfrost")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END