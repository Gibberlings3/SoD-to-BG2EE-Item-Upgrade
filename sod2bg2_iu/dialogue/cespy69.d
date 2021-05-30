// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtkplt3")~ THEN GOTO ShadDragPlateCespy // Chromatic Shadow Dragon Plate (blue, white, red, silver, green, black, or shadow)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN ShadDragPlateCespy
SAY @1070
 IF ~OR(7)
     PartyHasItem("scaler")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
     PartyHasItem("dtkscal1")
	 PartyHasItem("scaleb")~ THEN GOTO ShadDragPlateCespy_want
 IF ~!PartyHasItem("scaler")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
	 !PartyHasItem("dtkscal1")
	 !PartyHasItem("scaleb")~ THEN GOTO need_ShadDragPlateCespy
END

IF ~~ THEN BEGIN need_ShadDragPlateCespy SAY @1071
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN ShadDragPlateCespy_want 
SAY @1072
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_01 // red scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_02 // white scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_03 // silver scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_04 // blue scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_05  // red, silver, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_06  // white, silver, blue scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_07  // red, silver, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_08  // red, white, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_09  // silver, blue, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_10  // silver, white scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_11  // red, silver scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_12  // red, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_13  // red, blue scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_15  // blue, white, red, silver, scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_16 // green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_17  // red, silver, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_18  // white, silver, blue, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_19  // red, silver, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_20  // red, white, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_21  // silver, blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_22  // silver, white, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_23  // red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_24  // red, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_25  // red, blue, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_26  // blue, white, green scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_27  // blue, white, red, silver, green scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_28 // red, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_29 // white, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_30 // silver, green scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_31 // blue, green scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_32 // black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_33 // red, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_34 // white, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_35 // silver, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_36 // blue, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_37  // red, silver, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_38  // white, silver, blue, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_39  // red, silver, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_40  // red, white, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_41  // silver, blue, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_42  // silver, white, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_43  // red, silver, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_44  // red, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_45  // red, blue, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_46  // blue, white, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_47  // blue, white, red, silver, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_48 // green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_49  // red, silver, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_50  // white, silver, blue, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_51  // red, silver, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_52  // red, white, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_53  // silver, blue, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_54  // silver, white, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_55  // red, silver, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_56  // red, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_57  // red, blue, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_58  // blue, white, green, black scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_59  // blue, white, red, silver, green, black scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_60 // red, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_61 // white, green, black scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_62 // silver, green, black scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_63 // blue, green, black scales


//////////adding shadow scales

IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_64 // shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_65 // red, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_66 // white, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_67 // silver, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_68 // blue, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_69  // red, silver, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_70  // white, silver, blue, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_71  // red, silver, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_72  // red, white, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_73  // silver, blue, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_74  // silver, white, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_75  // red, silver, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_76  // red, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_77  // red, blue, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_78  // blue, white, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_79  // blue, white, red, silver, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_80 // green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_81  // red, silver, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_82  // white, silver, blue, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_83  // red, silver, white, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_84  // red, white, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_85  // silver, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_86  // silver, white, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_87  // red, silver, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_88  // red, white, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_89  // red, blue, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_90  // blue, white, green, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_91  // blue, white, red, silver, green, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_92 // red, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_93 // white, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_94 // silver, green, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_95 // blue, green, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_96 // black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_97 // red, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_98 // white, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_99 // silver, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_100 // blue, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_101  // red, silver, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_102  // white, silver, blue, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_103  // red, silver, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_104  // red, white, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_105  // silver, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_106  // silver, white, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_107  // red, silver, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_108  // red, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_109  // red, blue, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_110  // blue, white, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_111  // blue, white, red, silver, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_112 // green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_113  // red, silver, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_114  // white, silver, blue, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_115  // red, silver, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_116  // red, white, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_117  // silver, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_118  // silver, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_119  // red, silver, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_120  // red, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_121  // red, blue, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_122  // blue, white, green, black, shadow scales
IF ~PartyHasItem("scaler")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_123  // blue, white, red, silver, green, black, shadow scales
IF ~PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_124 // red, green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_125 // white, green, black, shadow scales
IF ~!PartyHasItem("scaler")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_126 // silver, green, black, shadow scales
IF ~!PartyHasItem("scaler")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaleb")~ THEN + ShadDragPlateCespy_want_127 // blue, green, black, shadow scales
END



IF ~~ THEN BEGIN ShadDragPlateCespy_want_01 // red scales
SAY @1079
++ @6006 GOTO HowMuch_redscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_02 // white scales
SAY @1074
++ @6007 GOTO HowMuch_whitescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_03 // silver scales
SAY @1075
++ @6014 GOTO HowMuch_silverscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_04 // blue scales
SAY @1076
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_05 // red, silver, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_06 // white, silver, blue scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_07 // red, silver, white scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_08 // red, white, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_09 // silver, blue scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_10 // silver, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_11 // red, silver scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_12 // red, white scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_13 // red, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_14 // blue, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_15 // white, silver, red, blue scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_16 // green scales
SAY @1181
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_17 // red, silver, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_18 // white, silver, blue, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_19 // red, silver, white, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_20 // red, white, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_21 // silver, blue, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_22 // silver, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_23 // red, silver, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_24 // red, white, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_25 // red, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_26 // blue, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_27 // white, silver, red, blue, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_28 // red, green scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_29 // white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_30 // silver, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_31 // blue, green scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_32 // black scales
SAY @1285
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_33 // red, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_34 // white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_35 // silver, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_36 // blue, black scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_37 // red, silver, blue, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_38 // white, silver, blue, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_39 // red, silver, white, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_40 // red, white, blue, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_41 // silver, blue, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_42 // silver, white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_43 // red, silver, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_44 // red, white, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_45 // red, blue, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_46 // blue, white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_47 // white, silver, red, blue, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_48 // green, black scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_49 // red, silver, blue, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_50 // white, silver, blue, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_51 // red, silver, white, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_52 // red, white, blue, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_53 // silver, blue, green, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_54 // silver, white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_55 // red, silver, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_56 // red, white, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_57 // red, blue, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_58 // blue, white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_59 // white, silver, red, blue, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_60 // red, green, black scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_61 // white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_62 // silver, green, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_63 // blue, green, black scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END


////////////adding shadow scales

IF ~~ THEN BEGIN ShadDragPlateCespy_want_64 // shadow scales
SAY @1073
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_65 // red, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_66 // white, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_67 // silver, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_68 // blue, shadow scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_69 // red, silver, blue, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_70 // white, silver, blue, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_71 // red, silver, white, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_72 // red, white, blue, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_73 // silver, blue, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_74 // silver, white, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_75 // red, silver, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_76 // red, white, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_77 // red, blue, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_78 // blue, white, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_79 // white, silver, red, blue, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_80 // green, shadow scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_81 // red, silver, blue, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_82 // white, silver, blue, green, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_83 // red, silver, white, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_84 // red, white, blue, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_85 // silver, blue, green, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_86 // silver, white, green, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_87 // red, silver, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_88 // red, white, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_89 // red, blue, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_90 // blue, white, green, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_91 // white, silver, red, blue, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_92 // red, green, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_93 // white, green, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_94 // silver, green, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_95 // blue, green, shadow scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_96 // black, shadow scales
SAY @1077
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_97 // red, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_98 // white, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_99 // silver, black, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_100 // blue, black, shadow scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_101 // red, silver, blue, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_102 // white, silver, blue, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_103 // red, silver, white, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_104 // red, white, blue, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_105 // silver, blue, black, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_106 // silver, white, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_107 // red, silver, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_108 // red, white, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_109 // red, blue, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_110 // blue, white, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_111 // white, silver, red, blue, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_112 // green, black, shadow scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_113 // red, silver, blue, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_114 // white, silver, blue, green, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_115 // red, silver, white, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_116 // red, white, blue, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_117 // silver, blue, green, black, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_118 // silver, white, green, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_119 // red, silver, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_120 // red, white, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_121 // red, blue, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_122 // blue, white, green, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_123 // white, silver, red, blue, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_124 // red, green, black, shadow scales
SAY @1077
++ @6006 GOTO HowMuch_redscale
++ @6005 GOTO HowMuch_greenscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_125 // white, green, black, shadow scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_126 // silver, green, black, shadow scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_want_127 // blue, green, black, shadow scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + ShadDragPlateCespy_stall
++ @6012 GOTO ShadDragPlateCespy_stall
END


IF ~~ THEN BEGIN HowMuch_redscale 
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",91)
                                 		TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                		TakePartyItemNum("scaler",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("scaler")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",88)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("compon19")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",93)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("compon18")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",92)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("ohdscale",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("ohdscale")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",90)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",89)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN HowMuch_shadowscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",117)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtkplt3",1)
                                 		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("dtkplt3")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO ShadDragPlateCespy_stall
END

IF ~~ THEN BEGIN ShadDragPlateCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
