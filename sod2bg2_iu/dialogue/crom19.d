EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkleat1")~ THEN GOTO PartyHasShadowDrag	//Chromatic Shadow/Viridescent Shadow/Umbral Viridescent Dragonscale
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasShadowDrag
SAY @77
 IF ~OR(7)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
	 PartyHasItem("dtkscal1")
	 PartyHasItem("scaleb")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
     !PartyHasItem("dtkscal1")
	 !PartyHasItem("scaleb")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @66
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @75
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_03 // silver scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_05  // red, silver, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_06  // white, silver, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_07  // red, silver, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_09  // silver, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_10  // silver, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_11  // red, silver scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_15  // blue, white, red, silver scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_16 // green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_17 // white, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_18 // silver, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_19 // blue, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_20  // red, silver, blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_21  // red, silver, white, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_22  // white, silver, blue, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_23  // red, white, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_24  // silver, blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_25  // silver, white, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_26  // red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_27  // red, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_28  // red, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_29  // blue, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_30  // blue, white, red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_31 // red, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_32 // black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_33 // red, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_34 // white, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_35 // silver, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_36 // blue, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_37  // red, silver, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_38  // white, silver, blue, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_39  // red, silver, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_40  // red, white, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_41  // silver, blue, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_42  // silver, white, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_43  // red, silver, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_44  // red, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_45  // red, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_46  // blue, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_47  // blue, white, red, silver, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_48 // green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_49 // white, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_50 // silver, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_51 // blue, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_52  // red, silver, blue, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_53  // red, silver, white, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_54  // white, silver, blue, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_55  // red, white, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_56  // silver, blue, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_57  // silver, white, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_58  // red, silver, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_59  // red, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_60  // red, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_61  // blue, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_62  // blue, white, red, silver, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + PartyHasAllParts_63 // red, green, black scales


/////////// adding shadow scales

IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_64 // shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_65 // red, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_66 // white, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_67 // silver, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_68 // blue, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_69  // red, silver, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_70  // white, silver, blue, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_71  // red, silver, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_72  // red, white, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_73  // silver, blue, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_74  // silver, white, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_75  // red, silver, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_76  // red, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_77  // red, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_78  // blue, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_79  // blue, white, red, silver, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_80 // green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_81 // white, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_82 // silver, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_83 // blue, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_84  // red, silver, blue, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_85  // red, silver, white, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_86  // white, silver, blue, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_87  // red, white, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_88  // silver, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_89  // silver, white, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_90  // red, silver, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_91  // red, white, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_92  // red, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_93  // blue, white, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_94  // blue, white, red, silver, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_95 // red, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_96 // black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_97 // red, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_98 // white, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_99 // silver, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_100 // blue, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_101  // red, silver, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_102  // white, silver, blue, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_103  // red, silver, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_104 // red, white, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_105  // silver, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_106  // silver, white, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_107  // red, silver, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_108  // red, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_109  // red, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_110  // blue, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_111  // blue, white, red, silver, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_112 // green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_113 // white, green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_114 // silver, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_115 // blue, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_116  // red, silver, blue, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_117  // red, silver, white, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_118  // white, silver, blue, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_119  // red, white, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_120  // silver, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_121  // silver, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_122  // red, silver, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_123  // red, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_124  // red, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_125  // blue, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_126  // blue, white, red, silver, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + PartyHasAllParts_127 // red, green, black, shadow scales
END

IF ~~ THEN BEGIN PartyHasAllParts_01 // red scales
SAY @79
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_02 // white scales
SAY @69
++ @6007 GOTO HowMuch_whitescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_03 // silver scales
SAY @70
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_04 // blue scales
SAY @72
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_05 // red, silver, blue scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_06 // white, silver, blue scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_07 // red, silver, white scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // red, white, blue scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_09 // silver, blue scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_10 // silver, white scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_11 // red, silver, scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // red, white scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // red, blue scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_14 // blue, white scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_15 // white, silver, red, blue scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_16 // green scales
SAY @163
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_17 // white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_18 // silver, green scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_19 // blue, green scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_20 // red, silver, blue, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_21 // red, silver, white, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_22 // white, silver, blue, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_23 // red, white, blue, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_24 // silver, blue, green scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_25 // silver, white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_26 // red, silver, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_27 // red, white, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_28 // red, blue, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_29 // blue, white, green scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_30 // white, silver, red, blue, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_31 // red, green scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_32 // black scales
SAY @233
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_33 // red, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_34 // white, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_35 // silver, black scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_36 // blue, black scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_37 // red, silver, blue, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_38 // white, silver, blue, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_39 // red, silver, white, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_40 // red, white, blue, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_41 // silver, blue, black scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_42 // silver, white, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_43 // red, silver, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_44 // red, white, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_45 // red, blue, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_46 // blue, white, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_47 // white, silver, red, blue, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_48 // green, black scales
SAY @76
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_49 // white, green, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_50 // silver, green, black scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_51 // blue, green, black scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_52 // red, silver, blue, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_53 // red, silver, white, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_54 // white, silver, blue, green, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_55 // red, white, blue, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_56 // silver, blue, green, black scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_57 // silver, white, green, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_58 // red, silver, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_59 // red, white, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_60 // red, blue, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_61 // blue, white, green, black scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_62 // white, silver, red, blue, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_63 // red, green, black scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

///////////////Adding shadow scales

IF ~~ THEN BEGIN PartyHasAllParts_64 // shadow scales
SAY @67
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_65 // red, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_66 // white, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_67 // silver, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_68 // blue, shadow scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_69 // red, silver, blue, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_70 // white, silver, blue, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_71 // red, silver, white, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_72 // red, white, blue, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_73 // silver, blue, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_74 // silver, white, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_75 // red, silver, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_76 // red, white, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_77 // red, blue, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_78 // blue, white, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_79 // white, silver, red, blue, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_80 // green, shadow scales
SAY @163
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_81 // white, green, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_82 // silver, green, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_83 // blue, green, shadow scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_84 // red, silver, blue, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_85 // red, silver, white, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_86 // white, silver, blue, green, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_87 // red, white, blue, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_88 // silver, blue, green, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_89 // silver, white, green, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_90 // red, silver, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_91 // red, white, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_92 // red, blue, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_93 // blue, white, green, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_94 // white, silver, red, blue, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_95 // red, green, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_96 // black, shadow scales
SAY @76
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_97 // red, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_98 // white, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_99 // silver, black, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_100 // blue, black, shadow scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_101 // red, silver, blue, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_102 // white, silver, blue, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_103 // red, silver, white, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_104 // red, white, blue, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_105 // silver, blue, black, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_106 // silver, white, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_107 // red, silver, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_108 // red, white, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_109 // red, blue, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_110 // blue, white, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_111 // white, silver, red, blue, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_112 // green, black, shadow scales
SAY @76
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_113 // white, green, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_114 // silver, green, black, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_115 // blue, green, black, shadow scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_116 // red, silver, blue, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_117 // red, silver, white, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_118 // white, silver, blue, green, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_119 // red, white, blue, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_120 // silver, blue, green, black, shadow scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_121 // silver, white, green, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_122 // red, silver, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_123 // red, white, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_124 // red, blue, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_125 // blue, white, green, black, shadow scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_126 // white, silver, red, blue, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_127 // red, green, black, shadow scales
SAY @76
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_redscale 
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",24)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("scaler")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",26)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("compon18")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",25)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("ohdscale",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("ohdscale")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",23)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("compon19")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",52)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("bdscaleg")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",84)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("dtkscal1")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_shadowscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",116)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkleat1",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("dtkleat1")
                                 DestroyItem("scaleb")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END