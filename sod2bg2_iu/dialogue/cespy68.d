// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("dtklea3")~ THEN GOTO reddragCespy // Chromatic Crimson/Scarlet Viridescent/Carmine Viridian Dragonscale (blue, white, shadow, silver, green, black, or red)
END

APPEND BOTSMITH              

IF ~~ THEN BEGIN reddragCespy
SAY @1070
 IF ~OR(7)
     PartyHasItem("scaleb")
     PartyHasItem("compon19")
     PartyHasItem("ohdscale")
     PartyHasItem("bdscaleg")
     PartyHasItem("compon18")
     PartyHasItem("dtkscal1")
	 PartyHasItem("scaler")~ THEN GOTO reddragCespy_want
 IF ~!PartyHasItem("scaleb")
     !PartyHasItem("compon19")
     !PartyHasItem("ohdscale")
     !PartyHasItem("bdscaleg")
     !PartyHasItem("compon18")
	 !PartyHasItem("dtkscal1")
	 !PartyHasItem("scaler")~ THEN GOTO need_reddragCespy
END

IF ~~ THEN BEGIN need_reddragCespy SAY @1071
COPY_TRANS BOTSMITH 4
END


IF ~~ THEN BEGIN reddragCespy_want 
SAY @1072
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_01 // shadow scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_02 // white scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_03 // silver scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_04 // blue scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_05  // shadow, silver, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_06  // white, silver, blue scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_07  // shadow, silver, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_08  // shadow, white, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_09  // silver, blue, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_10  // silver, white scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_11  // shadow, silver scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_12  // shadow, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_13  // shadow, blue scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_14  // blue, white scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_15  // blue, white, shadow, silver, scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_16 // green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_17  // shadow, silver, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_18  // white, silver, blue, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_19  // shadow, silver, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_20  // shadow, white, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_21  // silver, blue, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_22  // silver, white, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_23  // shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_24  // shadow, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_25  // shadow, blue, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_26  // blue, white, green scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_27  // blue, white, shadow, silver, green scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_28 // shadow, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_29 // white, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_30 // silver, green scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_31 // blue, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_32 // black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_33 // shadow, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_34 // white, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_35 // silver, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_36 // blue, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_37  // shadow, silver, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_38  // white, silver, blue, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_39  // shadow, silver, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_40  // shadow, white, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_41  // silver, blue, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_42  // silver, white, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_43  // shadow, silver, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_44  // shadow, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_45  // shadow, blue, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_46  // blue, white, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_47  // blue, white, shadow, silver, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_48 // green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_49  // shadow, silver, blue, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_50  // white, silver, blue, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_51  // shadow, silver, white, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_52  // shadow, white, blue, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_53  // silver, blue, green, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_54  // silver, white, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_55  // shadow, silver, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_56  // shadow, white, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_57  // shadow, blue, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_58  // blue, white, green, black scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_59  // blue, white, shadow, silver, green, black scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_60 // shadow, green, black scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_61 // white, green scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_62 // silver, green, black scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
!PartyHasItem("scaler")~ THEN + reddragCespy_want_63 // blue, green, black scales



/////////////// adding red scales

IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_64 // red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_65 // shadow, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_66 // white, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_67 // silver, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_68 // blue, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_69  // shadow, silver, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_70  // white, silver, blue, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_71  // shadow, silver, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_72  // shadow, white, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_73  // silver, blue, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_74  // silver, white, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_75  // shadow, silver, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_76  // shadow, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_77  // shadow, blue, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_78  // blue, white, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_79  // blue, white, shadow, silver, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_80 // green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_81  // shadow, silver, blue, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_82  // white, silver, blue, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_83  // shadow, silver, white, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_84  // shadow, white, blue, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_85  // silver, blue, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_86  // silver, white, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_87  // shadow, silver, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_88  // shadow, white, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_89  // shadow, blue, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_90  // blue, white, green, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_91  // blue, white, shadow, silver, green, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_92 // shadow, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_93 // white, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_94 // silver, green, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
!PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_95 // blue, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_96 // black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_97 // shadow, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_98 // white, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_99 // silver, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_100 // blue, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_101  // shadow, silver, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_102  // white, silver, blue, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_103  // shadow, silver, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_104  // shadow, white, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_105  // silver, blue, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_106  // silver, white, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_107  // shadow, silver, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_108  // shadow, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_109  // shadow, blue, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_110  // blue, white, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
!PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_111  // blue, white, shadow, silver, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_112 // green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_113  // shadow, silver, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_114  // white, silver, blue, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_115  // shadow, silver, white, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_116  // shadow, white, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_117  // silver, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_118  // silver, white, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_119  // shadow, silver, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_120  // shadow, white, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_121  // shadow, blue, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_122  // blue, white, green, black, red scales
IF ~PartyHasItem("scaleb")
PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_123  // blue, white, shadow, silver, green, black, red scales
IF ~PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_124 // shadow, green, black, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_125 // white, green, red scales
IF ~!PartyHasItem("scaleb")
!PartyHasItem("compon19")
PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_126 // silver, green, black, red scales
IF ~!PartyHasItem("scaleb")
PartyHasItem("compon19")
!PartyHasItem("ohdscale")
PartyHasItem("bdscaleg")
!PartyHasItem("compon18")
PartyHasItem("dtkscal1")
PartyHasItem("scaler")~ THEN + reddragCespy_want_127 // blue, green, black, red scales
END


IF ~~ THEN BEGIN reddragCespy_want_01 // shadow scales
SAY @1073
++ @6010 GOTO HowMuch_shadowscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_02 // white scales
SAY @1074
++ @6007 GOTO HowMuch_whitescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_03 // silver scales
SAY @1075
++ @6014 GOTO HowMuch_silverscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_04 // blue scales
SAY @1076
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_05 // shadow, silver, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_06 // white, silver, blue scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_07 // shadow, silver, white scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_08 // shadow, white, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_09 // silver, blue scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_10 // silver, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_11 // shadow, silver scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_12 // shadow, white scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_13 // shadow, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_14 // blue, white scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_15 // white, silver, shadow, blue scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_16 // green scales
SAY @1181
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_17 // shadow, silver, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_18 // white, silver, blue, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_19 // shadow, silver, white, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_20 // shadow, white, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_21 // silver, blue, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_22 // silver, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_23 // shadow, silver, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_24 // shadow, white, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_25 // shadow, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_26 // blue, white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_27 // white, silver, shadow, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_28 // shadow, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_29 // white, green scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_30 // silver, green scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_31 // blue, green scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_32 // black scales
SAY @1285
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_33 // shadow, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_34 // white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_35 // silver, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_36 // blue, black scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_37 // shadow, silver, blue, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_38 // white, silver, blue, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_39 // shadow, silver, white, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_40 // shadow, white, blue, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_41 // silver, blue, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_42 // silver, white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_43 // shadow, silver, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_44 // shadow, white, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_45 // shadow, blue, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_46 // blue, white, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_47 // white, silver, shadow, blue, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_48 // green, black scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_49 // shadow, silver, blue, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_50 // white, silver, blue, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_51 // shadow, silver, white, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_52 // shadow, white, blue, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_53 // silver, blue, green, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_54 // silver, white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_55 // shadow, silver, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_56 // shadow, white, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_57 // shadow, blue, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_58 // blue, white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_59 // white, silver, shadow, blue, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_60 // shadow, green, black scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_61 // white, green, black scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_62 // silver, green, black scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_63 // blue, green, black scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

///////////////// adding red scales

IF ~~ THEN BEGIN reddragCespy_want_64 // red scales
SAY @1072
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_65 // shadow, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_66 // white, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_67 // silver, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_68 // blue, red scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_69 // shadow, silver, blue, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_70 // white, silver, blue, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_71 // shadow, silver, white, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_72 // shadow, white, blue, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_73 // silver, blue, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_74 // silver, white, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_75 // shadow, silver, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_76 // shadow, white, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_77 // shadow, blue, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_78 // blue, white, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_79 // white, silver, shadow, blue, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_80 // green, red scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_81 // shadow, silver, blue, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_82 // white, silver, blue, green, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_83 // shadow, silver, white, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_84 // shadow, white, blue, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_85 // silver, blue, green, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_86 // silver, white, green, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_87 // shadow, silver, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_88 // shadow, white, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_89 // shadow, blue, green scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_90 // blue, white, green, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_91 // white, silver, shadow, blue, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_92 // shadow, green, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_93 // white, green, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_94 // silver, green, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_95 // blue, green, red scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_96 // black, red scales
SAY @1285
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_97 // shadow, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_98 // white, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_99 // silver, black, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_100 // blue, black, red scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_101 // shadow, silver, blue, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_102 // white, silver, blue, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_103 // shadow, silver, white, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_104 // shadow, white, blue, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_105 // silver, blue, black, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_106 // silver, white, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_107 // shadow, silver, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_108 // shadow, white, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_109 // shadow, blue, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_110 // blue, white, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_111 // white, silver, shadow, blue, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_112 // green, black, red scales
SAY @1077
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_113 // shadow, silver, blue, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_114 // white, silver, blue, green, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_115 // shadow, silver, white, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_116 // shadow, white, blue, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_117 // silver, blue, green, black, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_118 // silver, white, green, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_119 // shadow, silver, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_120 // shadow, white, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_121 // shadow, blue, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_122 // blue, white, green, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_123 // white, silver, shadow, blue, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6007 GOTO HowMuch_whitescale
++ @6014 GOTO HowMuch_silverscale
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_124 // shadow, green, black, red scales
SAY @1077
++ @6010 GOTO HowMuch_shadowscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_125 // white, green, black, red scales
SAY @1077
++ @6007 GOTO HowMuch_whitescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_126 // silver, green, black, red scales
SAY @1077
++ @6014 GOTO HowMuch_silverscale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_want_127 // blue, green, black, red scales
SAY @1077
++ @6013 GOTO HowMuch_bluescale
++ @6005 GOTO HowMuch_greenscale
++ @6034 GOTO HowMuch_blackscale
++ @6006 GOTO HowMuch_redscale
++ @6011 + reddragCespy_stall
++ @6012 GOTO reddragCespy_stall
END


IF ~~ THEN BEGIN HowMuch_shadowscale 
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",100)
                                 		TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                		TakePartyItemNum("scaleb",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("scaleb")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_bluescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",95)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("compon19",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("compon19")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_whitescale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",99)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("compon18",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("compon18")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_silverscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",98)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("ohdscale",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("ohdscale")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_greenscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",96)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("bdscaleg",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("bdscaleg")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_blackscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",94)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("dtkscal1",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("dtkscal1")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN HowMuch_redscale
SAY @1078
 IF ~PartyGoldLT(20000)~ THEN REPLY #66908 GOTO 10
 IF ~PartyGoldGT(19999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",97)
                                	        TakePartyGold(20000)
                                 		TakePartyItemNum("dtklea3",1)
                                 		TakePartyItemNum("scaler",1)
                                 		DestroyItem("dtklea3")
                                 		DestroyItem("scaler")
                                 		DestroyGold(20000)~ REPLY @6015 GOTO 11
 IF ~~ THEN REPLY @6012 GOTO reddragCespy_stall
END

IF ~~ THEN BEGIN reddragCespy_stall SAY @1069
COPY_TRANS BOTSMITH 4
END


END
