ALTER_TRANS WSMITH01			//Modifying existing dialogue for shadow dragon scales to point to new crafting options
BEGIN 13 
END
BEGIN 1
END
BEGIN
"EPILOGUE" ~GOTO DTKnewDragonscale~
END




APPEND WSMITH01			// New Options for Shadow Scales

IF ~~ THEN BEGIN DTKnewDragonscale

SAY #59709
  IF ~PartyHasItem("scaleb")~ THEN GOTO PartyHasShadowscale
  IF ~!PartyHasItem("scaleb")
PartyHasItem("scaler")~ THEN GOTO PartyHasredscale
  IF ~!PartyHasItem("scaleb")
!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 18
END

IF ~~ THEN BEGIN PartyHasShadowscale
SAY @315
++ @6019 GOTO HowMuch_shadowshield
++ @6020 GOTO HowMuch_shadowscale
++ @6070 GOTO HowMuch_shadowhelm
++ @6035 GOTO HowMuch_shadowplate
++ @6071 GOTO RedScaleCheck
END

IF ~~ THEN BEGIN HowMuch_shadowshield 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO RedScaleCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",133)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("scaleb")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO RedScaleCheck
END

IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO RedScaleCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",130)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("scaleb")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO RedScaleCheck
END

IF ~~ THEN BEGIN HowMuch_shadowhelm 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO RedScaleCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",132)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("scaleb")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO 19
END

IF ~~ THEN BEGIN HowMuch_shadowplate 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO RedScaleCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",131)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("scaleb")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO RedScaleCheck
END


IF ~~ THEN BEGIN RedScaleCheck

SAY @317
IF ~PartyHasItem("scaler")~ THEN GOTO PartyHasredscale
IF ~!PartyHasItem("scaler")
PartyHasItem("misc12")~ THEN GOTO 18
IF ~!PartyHasItem("scaler")
!PartyHasItem("misc12")~ THEN GOTO 19
END


/////////////////New options for red dragon scales////////////


IF ~~ THEN BEGIN PartyHasredscale
SAY @316
++ @6019 GOTO HowMuch_redshield
++ @6020 GOTO HowMuch_redscale
++ @6070 GOTO HowMuch_redhelm
++ @6035 GOTO HowMuch_redplate
++ @6072 GOTO AnkhegShellCheck
END

IF ~~ THEN BEGIN HowMuch_redshield 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO AnkhegShellCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",136)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("scaler")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO AnkhegShellCheck
END

IF ~~ THEN BEGIN HowMuch_redscale 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO AnkhegShellCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",135)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("scaler")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO AnkhegShellCheck
END

IF ~~ THEN BEGIN HowMuch_redhelm 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO AnkhegShellCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",134)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("scaler")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO 19
END

IF ~~ THEN BEGIN HowMuch_redplate 
SAY #59771
 IF ~PartyGoldLT(5000)~ THEN REPLY #66662 GOTO AnkhegShellCheck
 IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("DTKItems","ar0334",137)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(5000)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("scaler")
                                 DestroyGold(5000)~ REPLY @6015 GOTO 56
IF ~~ THEN REPLY @6012 GOTO AnkhegShellCheck
END


IF ~~ THEN BEGIN AnkhegShellCheck

SAY @318
IF ~PartyHasItem("misc12")~ THEN GOTO 18
IF ~!PartyHasItem("misc12")~ THEN GOTO 19
END

END
