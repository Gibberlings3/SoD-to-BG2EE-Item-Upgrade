// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("scaler")~ THEN GOTO NewItemCespy // Red Dragon Plate +2/Red Dragonscale Armor +3/Red Dragonscale Shield +3/Red Dragon Helm
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN NewItemCespy SAY @1194
    IF ~!PartyHasItem("scaler")~ THEN GOTO need_NewItemCespy
    IF ~PartyHasItem("scaler")~ THEN GOTO NewItemCespy_want
  END

  IF ~~ THEN BEGIN need_NewItemCespy SAY @1201
    COPY_TRANS BOTSMITH 4
  END

IF ~~ THEN BEGIN NewItemCespy_want SAY @1196
++ @6019 GOTO HowMuch_shield
++ @6020 GOTO HowMuch_scale
++ @6070 GOTO HowMuch_helm
++ @6035 GOTO HowMuch_plate
++ @6072 GOTO NewItemCespy_stall
END

  IF ~~ THEN BEGIN HowMuch_shield SAY @1197
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",133)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("scaler",1)
                                                 DestroyItem("scaler")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END
  
  IF ~~ THEN BEGIN HowMuch_scale SAY @1197
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",132)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("scaler",1)
                                                 DestroyItem("scaler")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END
  
  IF ~~ THEN BEGIN HowMuch_helm SAY @1197
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",134)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("scaler",1)
                                                 DestroyItem("scaler")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END
  
  IF ~~ THEN BEGIN HowMuch_plate SAY @1197
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",131)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("scaler",1)
                                                 DestroyItem("scaler")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO NewItemCespy_stall
  END

  IF ~~ THEN BEGIN NewItemCespy_stall SAY @1199
    COPY_TRANS BOTSMITH 4
  END

END                                            
