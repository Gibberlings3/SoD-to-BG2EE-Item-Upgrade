EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkascrl")~ THEN GOTO AncientScrollCespy // Trollkiller's Fireball
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN AncientScrollCespy
SAY @1255
 IF ~OR(6)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("scaleb")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
	 PartyHasItem("dtkscal1")~ THEN GOTO AncientScrollCespy_want
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("scaleb")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
	 !PartyHasItem("dtkscal1")~ THEN GOTO need_AncientScrollCespy
END

IF ~~ THEN BEGIN need_AncientScrollCespy SAY @1256
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN AncientScrollCespy_want 
SAY @1257
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_03 // shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_05  // red, shadow, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_06  // white, shadow, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_07  // red, shadow, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_09  // shadow, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_10  // shadow, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_11  // red, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_15  // blue, white, red, shadow, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_16 // green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_17  // red, shadow, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_18  // white, shadow, blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_19  // red, shadow, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_20  // red, white, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_21  // shadow, blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_22  // shadow, white, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_23  // red, shadow, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_24  // red, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_25  // red, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_26  // blue, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_27  // blue, white, red, shadow, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_28 // red, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_29 // white, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_30 // shadow, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_31 // blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_32 // red, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_33 // white, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_34 // shadow, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_35 // blue, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_36  // red, shadow, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_37  // white, shadow, blue, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_38  // red, shadow, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_39  // red, white, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_40  // shadow, blue, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_41  // shadow, white, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_42  // red, shadow, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_43  // red, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_44  // red, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_45  // blue, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_46  // blue, white, red, shadow, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_47 // green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_48  // red, shadow, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_49  // white, shadow, blue, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_50  // red, shadow, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_51  // red, white, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_52  // shadow, blue, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_53  // shadow, white, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_54  // red, shadow, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_55  // red, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_56  // red, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_57  // blue, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_58  // blue, white, red, shadow, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_59 // red, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_60 // white, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_61 // shadow, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("scaleb")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_62 // blue, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("scaleb")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")~ THEN + AncientScrollCespy_want_63 // black scales
END

IF ~~ THEN BEGIN AncientScrollCespy_want_01 // red scales
SAY @1258
++ @6006 GOTO HowMuch_redscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_02 // white scales
SAY @1260
++ @6007 GOTO HowMuch_whitescale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_03 // shadow scales
SAY @1259
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_04 // blue scales
SAY @1261
++ @6013 GOTO HowMuch_bluescale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_05 // red, shadow, blue scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_06 // white, shadow, blue scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_07 // red, shadow, white scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_08 // red, white, blue scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_09 // shadow, blue scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_10 // shadow, white scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_11 // red, shadow scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_12 // red, white scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_13 // red, blue scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_14 // blue, white scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_15 // white, shadow, red, blue scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_16 // green scales
SAY @1262
++ @6005 GOTO HowMuch_greenscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_17 // red, shadow, blue, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_18 // white, shadow, blue, green scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_19 // red, shadow, white, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_20 // red, white, blue, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_21 // shadow, blue, green scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_22 // shadow, white, green scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_23 // red, shadow, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_24 // red, white, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_25 // red, blue, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_26 // blue, white, green scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_27 // white, shadow, red, blue, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_28 // red, green scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_29 // white, green scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_30 // shadow, green scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_31 // blue, green scales
SAY @1264
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END


IF ~~ THEN BEGIN AncientScrollCespy_want_32 // red, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_33 // white, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_34 // shadow, black scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_35 // blue, black scales
SAY @1264
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_36 // red, shadow, blue, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_37 // white, shadow, blue, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_38 // red, shadow, white, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_39 // red, white, blue, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_40 // shadow, blue, black scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_41 // shadow, white, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_42 // red, shadow, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_43 // red, white, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_44 // red, blue, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_45 // blue, white, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_46 // white, shadow, red, blue, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_47 // green, black scales
SAY @1264
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_48 // red, shadow, blue, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_49 // white, shadow, blue, green, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_50 // red, shadow, white, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_51 // red, white, blue, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_52 // shadow, blue, green, black scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_53 // shadow, white, green, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_54 // red, shadow, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_55 // red, white, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_56 // red, blue, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_57 // blue, white, green, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_58 // white, shadow, red, blue, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_59 // red, green, black scales
SAY @1264
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_60 // white, green, black scales
SAY @1264
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_61 // shadow, green, black scales
SAY @1264
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_62 // blue, green, black, black scales
SAY @1264
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_want_63 // black scales
SAY @1263
++ @6034 GOTO HowMuch_blackscale
++ @6011 + AncientScrollCespy_stall
++ @6012 GOTO AncientScrollCespy_stall
END


IF ~~ THEN BEGIN HowMuch_redscale 
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                 		TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                		TakePartyItemNum("scaler",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("scaler")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("compon19")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("compon18")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shadowscale
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @1265
 IF ~PartyGoldLT(10000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(9999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",71)
                                	        TakePartyGold(10000)
                                 		TakePartyItemNum("dtkascrl",1)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkascrl")
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(10000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO AncientScrollCespy_stall
END

IF ~~ THEN BEGIN AncientScrollCespy_stall SAY @1266
COPY_TRANS BOTSMITH 4
END


END
