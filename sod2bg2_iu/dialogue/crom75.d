EXTEND_BOTTOM WSMITH01 13
   IF ~PartyHasItem("cdrem")~ THEN GOTO PartyHasRemo	//Remorhaz Shell Helm

END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN PartyHasRemo SAY @254 
  IF ~Global("RemoHelmForged","GLOBAL",0)~ THEN GOTO PartyHasRemo2
  END
  
  IF ~~ THEN BEGIN PartyHasRemo2 SAY @255
    IF ~PartyGoldLT(6000)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(5999)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",108)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(6000)
                                                 TakePartyItemNum("cdrem",1)
                                                 DestroyItem("cdrem")
                                                 DestroyGold(6000)~ GOTO 56
								 
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3

   COPY_TRANS WSMITH01 13
  END
END