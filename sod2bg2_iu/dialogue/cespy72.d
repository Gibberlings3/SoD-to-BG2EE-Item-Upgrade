// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ring43")~ THEN GOTO HeartwoodCespy // Alternate Heartwood Ring (elemental)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN HeartwoodCespy
SAY @1294
 IF ~OR(5)
     PartyHasItem("dtkruby")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkfrost")
	 PartyHasItem("dtkbowat")~ THEN GOTO HeartwoodCespy_want
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtktopaz")
	 !PartyHasItem("dtkfrost")
	 !PartyHasItem("dtkbowat")~ THEN GOTO need_HeartwoodCespy
END

IF ~~ THEN BEGIN need_HeartwoodCespy SAY @1295
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN HeartwoodCespy_want 
SAY @1302
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_01 // Fire
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_02 // Wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_03 // Fire + Wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_04 // Fire + Earth
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_05 // Wind + Earth
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_06 // Fire + Wind + Earth
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_07 // Earth
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_08 // Fire + Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_09 // Wind + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_10 // Fire + Wind + Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_11 // Fire + Earth +Frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_12 // Wind + Earth + Frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_13 // Fire + Wind + Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_14 // Earth + Frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
!PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_15 // Frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_16 // Fire, Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_17 // Wind, Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_18 // Fire + Wind + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_19 // Fire + Earth + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_20 // Wind + Earth + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_21 // Fire + Wind + Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_22 // Earth + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_23 // Fire + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_24 // Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_25 // Fire + Wind + Frost + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_26 // Fire + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_27 // Wind + Earth + Frost + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_28 // Fire + Wind + Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_29 // Earth + Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_30 // Frost + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")
PartyHasItem("dtkbowat")~ THEN + HeartwoodCespy_want_31 // Water
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


IF ~~ THEN BEGIN HeartwoodCespy_stall SAY @1301
COPY_TRANS BOTSMITH 4
END


END
