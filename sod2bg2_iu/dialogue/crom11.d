EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdhelm11")~ THEN GOTO NewItem	//Melodious Bard Hat
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @31
    IF ~OR(2)
          !PartyHasItem("helm19")
          !PartyHasItem("helm23")~ THEN GOTO NewItem2
    IF ~PartyHasItem("helm19")
        PartyHasItem("helm23")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @32
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @33
    IF ~PartyGoldLT(7500)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",11)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdhelm11",1)
                                                 DestroyItem("bdhelm11")
                                                 TakePartyItemNum("helm19",1)
                                                 DestroyItem("helm19")
                                                 TakePartyItemNum("helm23",1)
                                                 DestroyItem("helm23")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END