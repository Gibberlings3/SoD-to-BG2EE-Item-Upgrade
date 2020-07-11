EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkacrl2")~ THEN GOTO PartyHasAncientScroll1	//Thunder Thrust
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasAncientScroll1
SAY @208
 IF ~OR(6)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("scaleb")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
	 PartyHasItem("dtkscal1")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("scaleb")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
	 !PartyHasItem("dtkscal1")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @209
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @210
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_03 // shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_05  // red, shadow, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_06  // white, shadow, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_07  // red, shadow, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_09  // shadow, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_10  // shadow, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_11  // red, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_15  // blue, white, red, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_16 // green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_17 // white, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_18 // shadow, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_19 // blue, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_20  // red, shadow, blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_21  // red, shadow, white, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_22  // white, shadow, blue, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_23  // red, white, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_24  // shadow, blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_25  // shadow, white, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_26  // red, shadow, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_27  // red, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_28  // red, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_29  // blue, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_30  // blue, white, red, shadow, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_31 // red, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_32 // red, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_33 // white, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_34 // shadow, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_35 // blue, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_36  // red, shadow, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_37  // white, shadow, blue, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_38  // red, shadow, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_39  // red, white, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_40  // shadow, blue, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_41  // shadow, white, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_42  // red, shadow, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_43  // red, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_44  // red, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_45  // blue, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_46  // blue, white, red, shadow, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_47 // green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_48 // white, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_49 // shadow, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_50 // blue, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_51  // red, shadow, blue, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_52  // red, shadow, white, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_53  // white, shadow, blue, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_54  // red, white, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_55  // shadow, blue, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_56  // shadow, white, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_57  // red, shadow, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_58  // red, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_59  // red, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_60  // blue, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_61  // blue, white, red, shadow, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_62 // red, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + PartyHasAllParts_63 // black scales
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // red scales
SAY @211
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // white scales
SAY @212
++ @6007 GOTO HowMuch_whitescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // shadow scales
SAY @213
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // blue scales
SAY @214
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // red, shadow, blue scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // white, shadow, blue scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // red, shadow, white scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // red, white, blue scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // shadow, blue scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // shadow, white scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // red, shadow, scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // red, white scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // red, blue scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // blue, white scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // white, shadow, red, blue scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_16 // green scales
SAY @215
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_17 // white, green scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_18 // shadow, green scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_19 // blue, green scales
SAY @216
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_20 // red, shadow, blue, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_21 // red, shadow, white, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_22 // white, shadow, blue, green scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_23 // red, white, blue, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_24 // shadow, blue, green scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_25 // shadow, white, green scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_26 // red, shadow, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_27 // red, white, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_28 // red, blue, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_29 // blue, white, green scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_30 // white, shadow, red, blue, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_31 // red, green scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_32 // red, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_33 // white, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_34 // shadow, black scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_35 // blue, black scales
SAY @216
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_36 // red, shadow, blue, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_37 // white, shadow, blue, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_38 // red, shadow, white, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_39 // red, white, blue, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_40 // shadow, blue, black scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_41 // shadow, white, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_42 // red, shadow, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_43 // red, white, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_44 // red, blue, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_45 // blue, white, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_46 // white, shadow, red, blue, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_47 // green, black scales
SAY @216
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_48 // white, green, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_49 // shadow, green, black scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_50 // blue, green, black scales
SAY @216
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_51 // red, shadow, blue, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_52 // red, shadow, white, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_53 // white, shadow, blue, green, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_54 // red, white, blue, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_55 // shadow, blue, green, black scales
SAY @216
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_56 // shadow, white, green, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_57 // red, shadow, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_58 // red, white, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_59 // red, blue, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_60 // blue, white, green, black scales
SAY @216
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_61 // white, shadow, red, blue, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_62 // red, green, black scales
SAY @216
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_63 // black scales
SAY @218
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN HowMuch_redscale 
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("scaler")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("compon18")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shadowscale
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("scaleb")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("compon19")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("bdscaleg")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @217
 IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("DTKItems","ar0334",72)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(10000)
                                 TakePartyItemNum("dtkacrl2",1)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkacrl2")
                                 DestroyItem("dtkscal1")
                                 DestroyGold(10000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END