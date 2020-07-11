// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("ring43")~ THEN GOTO HeartwoodCespy // Alternate Heartwood Ring (elemental)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN HeartwoodCespy
SAY @1294
 IF ~OR(4)
     PartyHasItem("dtkruby")
     PartyHasItem("dtkemrld")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkfrost")~ THEN GOTO HeartwoodCespy_want
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtkemrld")
     !PartyHasItem("dtktopaz")
	 !PartyHasItem("dtkfrost")~ THEN GOTO need_HeartwoodCespy
END

IF ~~ THEN BEGIN need_HeartwoodCespy SAY @1295
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN HeartwoodCespy_want 
SAY @1302
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_01 // Fire
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_02 // Wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_03 // Fire + Wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_04 // Fire + Earth
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_05 // Wind + Earth
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_06 // Fire + Wind + Earth
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_07 // Earth
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_08 // Fire + Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_09 // Wind + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_10 // Fire + Wind + Water
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_11 // Fire + Earth +Water
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_12 // Wind + Earth + Water
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_13 // Fire + Wind + Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_14 // Earth + Water
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkfrost")~ THEN + HeartwoodCespy_want_15 // Water
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

IF ~~ THEN BEGIN HeartwoodCespy_want_08 // Fire + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_09 // Wind + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_10 // Fire + Wind + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_11 // Fire + Earth + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_12 // Wind + Earth + Water
SAY @1300
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_13 // Fire + Wind + Earth + Water
SAY @1300
++ @6042 GOTO HowMuch_firegem
++ @6043 GOTO HowMuch_windgem
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_14 // Earth + Water
SAY @1300
++ @6044 GOTO HowMuch_earthgem
++ @6045 GOTO HowMuch_watergem
++ @6046 + HeartwoodCespy_stall
++ @6012 GOTO HeartwoodCespy_stall
END

IF ~~ THEN BEGIN HeartwoodCespy_want_15 // Water
SAY @1299
++ @6045 GOTO HowMuch_watergem
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

IF ~~ THEN BEGIN HowMuch_watergem
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



IF ~~ THEN BEGIN HeartwoodCespy_stall SAY @1301
COPY_TRANS BOTSMITH 4
END


END
