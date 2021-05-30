EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("bdblun09")~ THEN GOTO NewItem	//Blazing Glory +5
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN NewItem SAY @312
    IF ~OR(3)
          !PartyHasItem("dtkruby")
          !PartyHasItem("wand11")
          !PartyHasItem("scrl62")~ THEN GOTO NewItem2
    IF ~PartyHasItem("dtkruby")
        PartyHasItem("wand11")
        PartyHasItem("scrl62")~ THEN GOTO NewItem3
  END
  
  IF ~~ THEN BEGIN NewItem2 SAY @313
    IF ~~ THEN GOTO NoThanks
  END
  
  IF ~~ THEN BEGIN NewItem3 SAY @314
    IF ~PartyGoldLT(7500)~ THEN REPLY #66662 GOTO NoThanks
    IF ~PartyGoldGT(7499)~ THEN REPLY #66664 DO ~SetGlobal("DTKItems","ar0334",127)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(7500)
                                                 TakePartyItemNum("bdblun09",1)
                                                 DestroyItem("bdblun09")
                                                 TakePartyItemNum("dtkruby",1)
                                                 DestroyItem("dtkruby")
                                                 TakePartyItemNum("wand11",1)
                                                 DestroyItem("wand11")
                                                 TakePartyItemNum("scrl62",1)
                                                 DestroyItem("scrl62")
                                                 DestroyGold(7500)~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO NoThanks
  END

  IF ~~ THEN BEGIN NoThanks SAY @3
   COPY_TRANS WSMITH01 13
  END
END