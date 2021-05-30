// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtktdag1")~ THEN GOTO eledagg4Cespy // Element's Fury +4
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN eledagg4Cespy
SAY @1132
 IF ~OR(4)
     PartyHasItem("dtkruby")
     PartyHasItem("dtktopaz")
     PartyHasItem("dtkemrld")
	 PartyHasItem("dtkfrost")~ THEN GOTO eledagg4Cespy_want
 IF ~!PartyHasItem("dtkruby")
     !PartyHasItem("dtktopaz")
     !PartyHasItem("dtkemrld")
	 !PartyHasItem("dtkfrost")~ THEN GOTO need_eledagg4Cespy
END

IF ~~ THEN BEGIN need_eledagg4Cespy SAY @1133
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN eledagg4Cespy_want 
SAY @1134
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_01 // flame
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_02 // ichor
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_03 // flame, ichor
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_04 // wind
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_05 // flame, wind
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_06 // ichor, wind
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_07 // flame, ichor, wind
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_08 // frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_09 // flame, frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_10 // ichor, frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
!PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_11 // flame, ichor, frost
IF ~!PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
!PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_12 // wind, frost
IF ~PartyHasItem("dtkruby")
!PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_13 // flame, wind, frost
IF ~!PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_14 // ichor, wind, frost
IF ~PartyHasItem("dtkruby")
PartyHasItem("dtktopaz")
PartyHasItem("dtkemrld")
PartyHasItem("dtkfrost")~ THEN + eledagg4Cespy_want_15 // flame, ichor, wind, frost
END


IF ~~ THEN BEGIN eledagg4Cespy_want_01 // flame
SAY @1328
++ @6042 GOTO HowMuch_heartflame
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_02 // ichor
SAY @1329
++ @6044 GOTO HowMuch_eyeichor
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_03 // flame, ichor
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_04 // wind
SAY @1330
++ @6043 GOTO HowMuch_breathwind
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_05 // flame, wind
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6043 GOTO HowMuch_breathwind
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_06 // ichor, wind
SAY @1332
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_07 // flame, ichor, wind
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_08 // frost
SAY @1331
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_09 // flame, frost
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_10// ichor, frost
SAY @1332
++ @6044 GOTO HowMuch_eyeichor
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_11 // flame, ichor, frost
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_12 // wind, frost
SAY @1332
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_13 // flame, wind, frost
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_14 // ichor, wind, frost
SAY @1332
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6046 + eledagg4Cespy_stall
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_want_15 // flame, ichor, wind, frost
SAY @1332
++ @6042 GOTO HowMuch_heartflame
++ @6044 GOTO HowMuch_eyeichor
++ @6043 GOTO HowMuch_breathwind
++ @6045 GOTO HowMuch_soulfrost
++ @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_heartflame 
SAY @1333
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",113)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("dtktdag1",1)
                                		TakePartyItemNum("dtkruby",1)
                                 		DestroyItem("dtktdag1")
                                 		DestroyItem("dtkruby")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_eyeichor 
SAY @1333
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",114)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("dtktdag1",1)
                                		TakePartyItemNum("dtktopaz",1)
                                 		DestroyItem("dtktdag1")
                                 		DestroyItem("dtktopaz")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_breathwind
SAY @1333
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",115)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("dtktdag1",1)
                                		TakePartyItemNum("dtkemrld",1)
                                 		DestroyItem("dtktdag1")
                                 		DestroyItem("dtkemrld")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN HowMuch_soulfrost 
SAY @1333
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",38)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("dtktdag1",1)
                                		TakePartyItemNum("dtkfrost",1)
                                 		DestroyItem("dtktdag1")
                                 		DestroyItem("dtkfrost")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO eledagg4Cespy_stall
END

IF ~~ THEN BEGIN eledagg4Cespy_stall SAY @1334
COPY_TRANS BOTSMITH 4
END


END
