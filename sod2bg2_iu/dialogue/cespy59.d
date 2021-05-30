EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkascrl")~ THEN GOTO AncientScrollCespy // Trollkiller's Fireball/Thunder Thrust/Hoar of Frost/Corrosion/Ko'Dezza's Multi-Fireball/Ko'Dezza's Slime Golem/Fell Rage/Infernal Bone Shield/Maelstrom/Cataclysm
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN AncientScrollCespy
SAY @1255
 IF ~OR(3)
     PartyHasItem("dtkdgbl2")
     PartyHasItem("dtkdgbld")
     PartyHasItem("misc8h")~ THEN GOTO AncientScrollCespy_want
 IF ~!PartyHasItem("dtkdgbl2")
     !PartyHasItem("dtkdgbld")
     !PartyHasItem("misc8h")~ THEN GOTO need_AncientScrollCespy
END

IF ~~ THEN BEGIN need_AncientScrollCespy SAY @1256
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN AncientScrollCespy_want 
SAY @1257
IF ~PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_01 // Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_02 // Shadow Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
!PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_03 // Dragon/Shadow Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_04 // Dragon's Blood/Silver Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_05 // Shadow/Silver Dragon's Blood
IF ~PartyHasItem("dtkdgbl2")
PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_06 // Dragon/Shadow/Silver Dragon's Blood
IF ~!PartyHasItem("dtkdgbl2")
!PartyHasItem("dtkdgbld")
PartyHasItem("misc8h")~ THEN + AncientScrollCespy_want_07 // Silver Dragon Blood
END



IF ~~ THEN BEGIN AncientScrollCespy_want_01 // Dragon's Blood
SAY @1258
++ @6063 GOTO HowMuch_dragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_02 // Shadow Dragon's Blood
SAY @1259
++ @6064 GOTO HowMuch_shddragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_03 // Dragon's/Shadow Dragon's Blood
SAY @1264
++ @6063 GOTO HowMuch_dragblood
++ @6064 GOTO HowMuch_shddragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_04 // Dragon's/Silver Dragon's Blood
SAY @1264
++ @6063 GOTO HowMuch_dragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_05 // Shadow/Silver Dragon's Blood
SAY @1264
++ @6064 GOTO HowMuch_shddragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_06 // Dragon's/Shadow/Silver Dragon's Blood
SAY @1264
++ @6063 GOTO HowMuch_dragblood
++ @6064 GOTO HowMuch_shddragblood
++ @6065 GOTO HowMuch_sildragblood
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_07 // Silver Dragon's Blood
SAY @1260
++ @6065 GOTO HowMuch_sildragblood
++ @6066 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END


IF ~~ THEN BEGIN HowMuch_dragblood 
SAY @1265
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                 		TakePartyGold(5000)
                                 		TakePartyItemNum("dtkascrl",1)
                                		TakePartyItemNum("dtkdgbl2",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("dtkdgbl2")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shddragblood
SAY @1265
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("dtkdgbld",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("dtkdgbld")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_sildragblood
SAY @1265
 IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(5000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("misc8h",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("misc8h")
                                 		DestroyGold(5000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END


IF ~~ THEN BEGIN AncientScrollCespy_stall SAY @1266
COPY_TRANS BOTSMITH 4
END


END
