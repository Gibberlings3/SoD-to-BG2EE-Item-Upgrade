EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("ring43")~ THEN GOTO PartyHasOakRing	//Heartwood Ring - original, fire, water, wind, earth, frost
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasOakRing
SAY @242
 IF ~OR(6)
     PartyHasItem("dtkruby")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkfrost")
	 PartyHasItem("dtkbowat")
	 PartyHasItem("compon14")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtktopaz")
	 !PartyHasItem("dtkfrost")
	 !PartyHasItem("dtkbowat")
	 !PartyHasItem("compon14")~ THEN GOTO PartyDoesNotHaveAllParts
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
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_01 // Fire
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_02 // Wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_03 // Fire + Wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_04 // Fire + Earth
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_05 // Wind + Earth
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_06 // Fire + Wind + Earth
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_07 // Earth
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_08 // Fire + Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_09 // Wind + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_10 // Fire + Wind + Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_11 // Fire + Earth +Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_12 // Wind + Earth + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_13 // Fire + Wind + Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_14 // Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_15 // Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_16 // Fire + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_17 // Wind + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_18 // Fire + Wind + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_19 // Fire + Earth + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_20 // Wind + Earth + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_21 // Fire + Wind + Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_22 // Earth + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_23 // Fire + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_24 // Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_25 // Fire + Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_26 // Fire + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_27 // Wind + Earth + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_28 // Fire + Wind + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_29 // Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_30 // Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + PartyHasAllParts_31 // Water



////////////Adding Nyph tear

IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_32 // Nymph's Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_33 // Fire + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_34 // Wind + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_35 // Fire + Wind + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_36 // Fire + Earth + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_37 // Wind + Earth + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_38 // Fire + Wind + Earth + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_39 // Earth + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_40 // Fire + Frost + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_41 // Wind + Frost + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_42 // Fire + Wind + Frost + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_43 // Fire + Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_44 // Wind + Earth + Frost + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_45 // Fire + Wind + Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_46 // Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_47 // Frost + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_48 // Fire + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_49 // Wind + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_50 // Fire + Wind + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_51 // Fire + Earth + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_52 // Wind + Earth + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_53 // Fire + Wind + Earth + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_54 // Earth + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_55 // Fire + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_56 // Wind + Frost + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_57 // Fire + Wind + Frost + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_58 // Fire + Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_59 // Wind + Earth + Frost + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_60 // Fire + Wind + Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_61 // Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_62 // Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + PartyHasAllParts_63 // Water + Tear
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

IF ~~ THEN BEGIN PartyHasAllParts_08 // Fire + Frost
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // Wind + Frost
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // Fire + Wind + Frost
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // Fire + Earth + Frost
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // Wind + Earth + Frost
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // Fire + Wind + Earth + Frost
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // Earth + Frost
SAY @249
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // Frost
SAY @248
++ @6045 GOTO HowMuch_frostgem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_16 // Fire + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_17 // Wind + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_18 // Fire + Wind + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_19 // Fire + Earth + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_20 // Wind + Earth + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_21 // Fire + Wind + Earth + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_22 // Earth + Water
SAY @249
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_23 // Fire + Frost + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_24 // Wind + Frost + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_25 // Fire + Wind + Frost + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_26 // Fire + Earth + Frost + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_27 // Wind + Earth + Frost + Water
SAY @249
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_28 // Fire + Wind + Earth + Frost + Water
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6076 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_29 // Earth + Frost + Water
SAY @249
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_30 // Frost + Water
SAY @249
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_31 // Water
SAY @284
++ @6067 GOTO HowMuch_watergem
++ @6046 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

/////////////// adding tear//////////////////

IF ~~ THEN BEGIN PartyHasAllParts_32 // Tear
SAY @319
++ @6073 GOTO HowMuch_nymphtear
++ @6074 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_33 // Fire + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_34 // Wind + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_35 // Fire + Wind + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_36 // Fire + Earth + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_37 // Wind + Earth + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_38 // Fire + Wind + Earth + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_39 // Earth + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_40 // Fire + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_41 // Wind + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_42 // Fire + Wind + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_43 // Fire + Earth + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_44 // Wind + Earth + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_45 // Fire + Wind + Earth + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_46 // Earth + Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_47 // Frost + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6045 GOTO HowMuch_frostgem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_48 // Fire + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_49 // Wind + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_50 // Fire + Wind + Water + Tear
SAY @249
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_51 // Fire + Earth + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_52 // Wind + Earth + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_53 // Fire + Wind + Earth + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_54 // Earth + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_55 // Fire + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_56 // Wind + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_57 // Fire + Wind + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_58 // Fire + Earth + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_59 // Wind + Earth + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_60 // Fire + Wind + Earth + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_61 // Earth + Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_62 // Frost + Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_63 // Water + Tear
SAY @249
++ @6073 GOTO HowMuch_nymphtear
++ @6067 GOTO HowMuch_watergem
++ @6075 + MovingRightAlong
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

IF ~~ THEN BEGIN HowMuch_frostgem
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

IF ~~ THEN BEGIN HowMuch_watergem
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("dtkbowat",1)
                                 DestroyItem("ring43")
                                 DestroyItem("dtkbowat")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_nymphtear
SAY @250
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",138)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("ring43",1)
                                 TakePartyItemNum("compon14",1)
                                 DestroyItem("ring43")
                                 DestroyItem("compon14")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END