EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtktdag1")~ THEN GOTO PartyHasEleDagg3	//Element's Fury +4 - four variants
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasEleDagg3
SAY @126
 IF ~OR(5)
     PartyHasItem("dtkruby")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtkfrost")
     PartyHasItem("dtkbowat")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtktopaz")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtkfrost")
     !PartyHasItem("dtkbowat")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @127
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @273
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_01 // heart of flame
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_02 // eye of ichor
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_03 // ichor, flame
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_04 // breath of wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_05 // flame, wind
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_06 // ichor, wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_07 // flame, ichor, wind
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_08 // soul of frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_09 // flame, frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_10 // ichor, frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_11 // ichor, flame, frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_12 // wind, frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_13 // flame, wind, frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_14 // ichor, wind, frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + PartyHasAllParts_15 // flame, ichor, wind, frost
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // heart of flame
SAY @274
++ @6042 GOTO HowMuch_heartflame
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // eye of ichor
SAY @275
++ @6044 GOTO HowMuch_eyeichor
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // flame, ichor
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // breath of wind
SAY @276
++ @6043 GOTO HowMuch_breathwind
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // flame, wind
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6043 GOTO HowMuch_breathwind
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // ichor, wind
SAY @278
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // flame, ichor, wind
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // soul of frost
SAY @277
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // flame, frost
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // ichor, frost
SAY @278
++ @6044 GOTO HowMuch_eyeichor
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // flame, ichor, frost
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // wind, frost
SAY @278
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // flame, wind, frost
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // ichor, wind, frost
SAY @278
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // flame, ichor, wind, frost
SAY @278
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_soulfrost 
SAY @128
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",38)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtktdag1",1)
                                 TakePartyItemNum("dtkfrost",1)
                                 DestroyItem("dtktdag1")
                                 DestroyItem("dtkfrost")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_heartflame 
SAY @128
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",113)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtktdag1",1)
                                 TakePartyItemNum("dtkruby",1)
                                 DestroyItem("dtktdag1")
                                 DestroyItem("dtkruby")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_eyeichor 
SAY @128
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",114)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtktdag1",1)
                                 TakePartyItemNum("dtktopaz",1)
                                 DestroyItem("dtktdag1")
                                 DestroyItem("dtktopaz")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_breathwind 
SAY @128
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",115)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("dtktdag1",1)
                                 TakePartyItemNum("dtkemrld",1)
                                 DestroyItem("dtktdag1")
                                 DestroyItem("dtkemrld")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END