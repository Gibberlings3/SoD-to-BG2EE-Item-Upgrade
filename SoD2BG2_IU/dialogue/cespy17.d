// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdleat05")~ THEN GOTO gdragCespy // Verdant Crimson/Shadow Scale
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN gdragCespy
SAY @1062
 IF ~OR(2)
     PartyHasItem("scaler")
     PartyHasItem("scaleb")~ THEN GOTO gdragCespy_want
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("scaleb")~ THEN GOTO need_gdragCespy
END

IF ~~ THEN BEGIN need_gdragCespy SAY @1063
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN gdragCespy_want 
SAY @1064
IF ~PartyHasItem("scaler")
!PartyHasItem("scaleb")~ THEN + gdragCespy_want_01 
IF ~!PartyHasItem("scaler")
PartyHasItem("scaleb")~ THEN + gdragCespy_want_02
IF ~PartyHasItem("scaler")
PartyHasItem("scaleb")~ THEN + gdragCespy_want_03
END

IF ~~ THEN BEGIN gdragCespy_want_01 
SAY @1065
++ @6006 GOTO HowMuch_redscale
++ @6017 + gdragCespy_stall
++ @6012 GOTO gdragCespy_stall
END

IF ~~ THEN BEGIN gdragCespy_want_02
SAY @1066
++ @6010 GOTO HowMuch_shadowscale
++ @6018 + gdragCespy_stall
++ @6012 GOTO gdragCespy_stall
END

IF ~~ THEN BEGIN gdragCespy_want_03
SAY @1067
++ @6010 GOTO HowMuch_shadowscale
++ @6006 GOTO HowMuch_redscale
++ @6012 GOTO gdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @1068
 IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",18)
                                 		TakePartyGold(15000)
                                 		TakePartyItemNum("bdleat05",1)
                                		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("bdleat05")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(15000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_redscale
SAY @1068
 IF ~PartyGoldLT(15000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(14999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",17)
                                	        TakePartyGold(15000)
                                 		TakePartyItemNum("bdleat05",1)
                                 		TakePartyItemNum("scaler",1)
                                 		DestroyItem("bdleat05")
                                 		DestroyItem("scaler")
                                 		DestroyGold(15000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO gdragCespy_stall
END

IF ~~ THEN BEGIN gdragCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
