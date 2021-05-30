EXTEND_BOTTOM WSMITH01 13
IF ~PartyHasItem("dtkplat1")~ THEN GOTO PartyHasRedDrag	//Chromatic Crimson/Carmine Viridian/Scarlet Viridescent Dragon Plate
END

APPEND WSMITH01

IF ~~ THEN BEGIN PartyHasRedDrag
SAY @65
 IF ~OR(7)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
	 PartyHasItem("dtkscal1")
	 PartyHasItem("scaler")~ THEN GOTO PartyHasAllParts
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
	 !PartyHasItem("dtkscal1")
 	 !PartyHasItem("scaler")~ THEN GOTO PartyDoesNotHaveAllParts
END

IF ~~ THEN BEGIN PartyDoesNotHaveAllParts 
SAY @66
 IF ~~ THEN GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts 
SAY @75
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_15  // blue, white, shadow, silver scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_16 // green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_17 // white, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_18 // silver, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_19 // blue, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_20  // shadow, silver, blue, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_21  // shadow, silver, white, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_22  // white, silver, blue, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_23  // shadow, white, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_24  // silver, blue, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_25  // silver, white, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_26  // shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_27  // shadow, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_28  // shadow, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_29  // blue, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_30  // blue, white, shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_31 // shadow, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_32 // black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_33 // shadow, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_34 // white, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_35 // silver, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_36 // blue, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_37  // shadow, silver, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_38  // white, silver, blue, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_39  // shadow, silver, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_40  // shadow, white, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_41  // silver, blue, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_42  // silver, white, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_43  // shadow, silver, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_44  // shadow, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_45  // shadow, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_46  // blue, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_47  // blue, white, shadow, silver, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_48 // green, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_49 // white, green, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_50 // silver, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_51 // blue, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_52  // shadow, silver, blue, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_53  // shadow, silver, white, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_54  // white, silver, blue, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_55  // shadow, white, blue, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_56  // silver, blue, green, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_57  // silver, white, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_58  // shadow, silver, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_59  // shadow, white, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_60  // shadow, blue, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_61  // blue, white, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_62  // blue, white, shadow, silver, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + PartyHasAllParts_63 // shadow, green, black scales


//////// adding red scales

IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_64 // red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_65 // shadow, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_66 // white, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_67 // silver, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_68 // blue, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_69  // shadow, silver, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_70  // white, silver, blue, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_71  // shadow, silver, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_72  // shadow, white, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_73  // silver, blue, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_74  // silver, white, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_75  // shadow, silver, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_76  // shadow, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_77  // shadow, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_78  // blue, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_79  // blue, white, shadow, silver, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_80 // green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_81 // white, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_82 // silver, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_83 // blue, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_84  // shadow, silver, blue, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_85  // shadow, silver, white, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_86  // white, silver, blue, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_87  // shadow, white, blue, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_88  // silver, blue, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_89  // silver, white, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_90  // shadow, silver, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_91  // shadow, white, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_92  // shadow, blue, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_93  // blue, white, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_94  // blue, white, shadow, silver, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_95 // shadow, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_96 // black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_97 // shadow, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_98 // white, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_99 // silver, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_100 // blue, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_101  // shadow, silver, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_102  // white, silver, blue, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_103  // shadow, silver, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_104  // shadow, white, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_105  // silver, blue, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_106  // silver, white, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_107  // shadow, silver, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_108  // shadow, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_109  // shadow, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_110  // blue, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_111  // blue, white, shadow, silver, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_112 // green, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_113 // white, green, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_114 // silver, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_115 // blue, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_116  // shadow, silver, blue, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_117  // shadow, silver, white, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_118  // white, silver, blue, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_119  // shadow, white, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_120  // silver, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_121  // silver, white, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_122  // shadow, silver, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_123  // shadow, white, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_124  // shadow, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_125  // blue, white, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_126  // blue, white, shadow, silver, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + PartyHasAllParts_127 // shadow, green, black, red scales


END

IF ~~ THEN BEGIN PartyHasAllParts_01 // shadow scales
SAY @67
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_05 // shadow, silver, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_07 // shadow, silver, white scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_08 // shadow, white, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_11 // shadow, silver, scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_12 // shadow, white scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_13 // shadow, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_15 // white, silver, shadow, blue scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_20 // shadow, silver, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_21 // shadow, silver, white, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_23 // shadow, white, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_26 // shadow, silver, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_27 // shadow, white, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_28 // shadow, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_30 // white, silver, shadow, blue, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_31 // shadow, green scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_33 // shadow, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_37 // shadow, silver, blue, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_39 // shadow, silver, white, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_40 // shadow, white, blue, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_43 // shadow, silver, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_44 // shadow, white, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_45 // shadow, blue, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_47 // white, silver, shadow, blue, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_52 // shadow, silver, blue, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_53 // shadow, silver, white, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_55 // shadow, white, blue, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_58 // shadow, silver, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_59 // shadow, white, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_60 // shadow, blue, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
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

IF ~~ THEN BEGIN PartyHasAllParts_62 // white, silver, shadow, blue, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_63 // shadow, green, black scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

/////////////// adding red scales


IF ~~ THEN BEGIN PartyHasAllParts_64 // red scales
SAY @79
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_65 // shadow, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_66 // white, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_67 // silver, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_68 // blue, red scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_69 // shadow, silver, blue, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_70 // white, silver, blue, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_71 // shadow, silver, white, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_72 // shadow, white, blue, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_73 // silver, blue, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_74 // silver, white, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_75 // shadow, silver, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_76 // shadow, white, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_77 // shadow, blue, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_78 // blue, white, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_79 // white, silver, shadow, blue, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_80 // green, red scales
SAY @163
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_81 // white, green, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_82 // silver, green, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_83 // blue, green, red scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_84 // shadow, silver, blue, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_85 // shadow, silver, white, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_86 // white, silver, blue, green, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_87 // shadow, white, blue, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_88 // silver, blue, green, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_89 // silver, white, green, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_90 // shadow, silver, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_91 // shadow, white, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_92 // shadow, blue, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_93 // blue, white, green, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_94 // white, silver, shadow, blue, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_95 // shadow, green, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_96 // black, red scales
SAY @233
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_97 // shadow, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_98 // white, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_99 // silver, black, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_100 // blue, black, red scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_101 // shadow, silver, blue, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_102 // white, silver, blue, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_103 // shadow, silver, white, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_104 // shadow, white, blue, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_105 // silver, blue, black, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_106 // silver, white, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_107 // shadow, silver, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_108 // shadow, white, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_109 // shadow, blue, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_110 // blue, white, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_111 // white, silver, shadow, blue, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_112 // green, black, red scales
SAY @76
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_113 // white, green, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_114 // silver, green, black, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_115 // blue, green, black, red scales
SAY @76
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_116 // shadow, silver, blue, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_117 // shadow, silver, white, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_118 // white, silver, blue, green, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_119 // shadow, white, blue, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_120 // silver, blue, green, black, red scales
SAY @76
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_121 // silver, white, green, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_122 // shadow, silver, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_123 // shadow, white, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_124 // shadow, blue, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_125 // blue, white, green, black, red scales
SAY @76
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_126 // white, silver, shadow, blue, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN PartyHasAllParts_127 // shadow, green, black, red scales
SAY @76
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + MovingRightAlong
++ @6012 GOTO MovingRightAlong
END


IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",20)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("scaleb",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("scaleb")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",22)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("compon18",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("compon18")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",21)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("ohdscale",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("ohdscale")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",19)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("compon19",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("compon19")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",51)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("bdscaleg",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("bdscaleg")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",83)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("dtkscal1",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("dtkscal1")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN HowMuch_redscale 
SAY @74
 IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO MovingRightAlong
 IF ~PartyGoldGT(19999)~ THEN DO ~SetGlobal("DTKItems","ar0334",85)
                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                 TakePartyGold(20000)
                                 TakePartyItemNum("dtkplat1",1)
                                 TakePartyItemNum("scaler",1)
                                 DestroyItem("dtkplat1")
                                 DestroyItem("scaler")
                                 DestroyGold(20000)~ REPLY @6015 GOTO 56
 IF ~~ THEN REPLY @6012 GOTO MovingRightAlong
END

IF ~~ THEN BEGIN MovingRightAlong SAY @62
COPY_TRANS WSMITH01 13
END


END