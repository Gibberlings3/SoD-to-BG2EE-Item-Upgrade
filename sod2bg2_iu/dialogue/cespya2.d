ALTER_TRANS BOTSMITH			//Modifying existing dialogue for heartwood ring to point to new crafting options
BEGIN 4 
END
BEGIN 2
END
BEGIN
"EPILOGUE" ~GOTO DTKnewHeartwood~
END

REPLACE_SAY BOTSMITH 140 @1003

APPEND BOTSMITH  

IF ~~ THEN BEGIN DTKnewHeartwood 
  SAY #67014 
  IF ~OR(2)
  !PartyHasItem("ring43")~ THEN GOTO 140
  IF ~PartyHasItem("ring43")
~ THEN GOTO DTKnewHeartwoodHasRing
END


IF ~~ THEN BEGIN DTKnewHeartwoodHasRing
SAY @1294
 IF ~OR(6)
     PartyHasItem("dtkruby")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkfrost")
	 PartyHasItem("dtkbowat")
	 PartyHasItem("compon14")~ THEN GOTO HeartwoodCespy_want
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtktopaz")
	 !PartyHasItem("dtkfrost")
	 !PartyHasItem("dtkbowat")
	 !PartyHasItem("compon14")~ THEN GOTO 140
END


IF ~~ THEN BEGIN HeartwoodCespy_want 
SAY @1302
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_01 // Fire
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_02 // Wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_03 // Fire + Wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_04 // Fire + Earth
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_05 // Wind + Earth
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_06 // Fire + Wind + Earth
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_07 // Earth
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_08 // Fire + Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_09 // Wind + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_10 // Fire + Wind + Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_11 // Fire + Earth +Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_12 // Wind + Earth + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_13 // Fire + Wind + Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_14 // Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_15 // Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_16 // Fire, Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_17 // Wind, Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_18 // Fire + Wind + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_19 // Fire + Earth + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_20 // Wind + Earth + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_21 // Fire + Wind + Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_22 // Earth + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_23 // Fire + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_24 // Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_25 // Fire + Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_26 // Fire + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_27 // Wind + Earth + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_28 // Fire + Wind + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_29 // Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_30 // Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
!PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_31 // Water



/////////////adding tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_32 // Nymph's Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_33 // Fire + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_34 // Wind + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_35 // Fire + Wind + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_36 // Fire + Earth + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_37 // Wind + Earth + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_38 // Fire + Wind + Earth + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_39 // Earth + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_40 // Fire + Frost + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_41 // Wind + Frost + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_42 // Fire + Wind + Frost + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_43 // Fire + Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_44 // Wind + Earth + Frost + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_45 // Fire + Wind + Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_46 // Earth + Frost + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_47 // Frost + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_48 // Fire + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_49 // Wind + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_50 // Fire + Wind + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_51 // Fire + Earth + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_52 // Wind + Earth + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_53 // Fire + Wind + Earth + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_54 // Earth + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_55 // Fire + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_56 // Wind + Frost + Water + Tear
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_57 // Fire + Wind + Frost + Water + Tear
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_58 // Fire + Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_59 // Wind + Earth + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_60 // Fire + Wind + Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_61 // Earth + Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_62 // Frost + Water + Tear
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")
PartyHasItem("compon14")~ THEN + HeartwoodCespy_want_63 // Water + Tear
END



IF ~~ THEN BEGIN HeartwoodCespy_want_01 // Fire
SAY @1296
++ @6042 GOTO HowMuch_firegem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_02 // Wind
SAY @1298
++ @6043 GOTO HowMuch_windgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_03 // Fire + Wind
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_04 // Fire + Earth
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_05 // Wind + Earth
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_06 // Fire + Wind + Earth
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_07 // Earth
SAY @1297
++ @6044 GOTO HowMuch_earthgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_08 // Fire + Frost
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_09 // Wind + Frost
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_10 // Fire + Wind + Frost
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_11 // Fire + Earth + Frost
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_12 // Wind + Earth + Frost
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_13 // Fire + Wind + Earth + Frost
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_14 // Earth + Frost
SAY @1300
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_15 // Frost
SAY @1299
++ @6045 GOTO HowMuch_frostgem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_16 // Fire + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_17 // Wind + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_18 // Fire + Wind + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_19 // Fire + Earth + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_20 // Wind + Earth + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_21 // Fire + Wind + Earth + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_22 // Earth + Water
SAY @1300
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_23 // Fire + Frost + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_24 // Wind + Frost + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_25 // Fire + Wind + Frost + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_26 // Fire + Earth + Frost + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_27 // Wind + Earth + Frost + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_28 // Fire + Wind + Earth + Frost + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6076 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_29 // Earth + Frost + Water
SAY @1300
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_30 // Frost + Water
SAY @1300
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_31 // Water
SAY @1341
++ @6067 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

/////////////////////adding tear//////////////

IF ~~ THEN BEGIN HeartwoodCespy_want_32 // Nymph's Tear
SAY @1382
++ @6073 GOTO HowMuch_nymphtear
++ @6074 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_33 // Fire + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_34 // Wind + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_35 // Fire + Wind + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_36 // Fire + Earth + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_37 // Wind + Earth + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_38 // Fire + Wind + Earth + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_39 // Earth + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_40 // Fire + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_41 // Wind + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_42 // Fire + Wind + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_43 // Fire + Earth + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_44 // Wind + Earth + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_45 // Fire + Wind + Earth + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_46 // Earth + Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_47 // Frost + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6045 GOTO HowMuch_frostgem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_48 // Fire + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_49 // Wind + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_50 // Fire + Wind + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_51 // Fire + Earth + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_52 // Wind + Earth + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_53 // Fire + Wind + Earth + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_54 // Earth + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_55 // Fire + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_56 // Wind + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_57 // Fire + Wind + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_58 // Fire + Earth + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_59 // Wind + Earth + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_60 // Fire + Wind + Earth + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_61 // Earth + Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_62 // Frost + Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6045 GOTO HowMuch_frostgem
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_63 // Water + Tear
SAY @1300
++ @6073 GOTO HowMuch_nymphtear
++ @6067 GOTO HowMuch_watergem
++ @6075 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END



IF ~~ THEN BEGIN HowMuch_firegem 
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",103)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                		TakePartyItemNum("dtkruby",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("dtkruby")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HowMuch_frostgem
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",106)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                 		TakePartyItemNum("dtkfrost",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("dtkfrost")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HowMuch_windgem
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",104)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                 		TakePartyItemNum("dtkemrld",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("dtkemrld")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HowMuch_earthgem
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",105)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                 		TakePartyItemNum("dtktopaz",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("dtktopaz")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HowMuch_watergem
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",72)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                 		TakePartyItemNum("dtkbowat",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("dtkbowat")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HowMuch_nymphtear
SAY @1303
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",130)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("ring43",1)
                                 		TakePartyItemNum("compon14",1)
                                 		DestroyItem("ring43")
                                 		DestroyItem("compon14")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO HeartwoodCespy_stall
END


IF ~~ THEN BEGIN HeartwoodCespy_stall SAY @1301
IF ~~ THEN GOTO 144
END


END
