// extend cespenar's generic item search with cromwell's items
EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("bdbull02")~ THEN GOTO VoidBulletCespy // Bag of Darkness +3
END

APPEND BOTSMITH              

  IF ~~ THEN BEGIN VoidBulletCespy SAY @1121
    IF ~!PartyHasItem("quiver06")~ THEN GOTO need_VoidBulletCespy
    IF ~PartyHasItem("quiver06")~ THEN GOTO VoidBulletCespy_want
  END

  IF ~~ THEN BEGIN need_VoidBulletCespy SAY @1122
    COPY_TRANS BOTSMITH 4
  END

  IF ~~ THEN BEGIN VoidBulletCespy_want SAY @1123
    IF ~PartyGoldLT(5000)~ THEN REPLY #66908 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN REPLY #66909 DO ~SetGlobal("DTKItemsCespy","GLOBAL",35)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("bdbull02",1)
                                                 DestroyItem("bdbull02")
                                                 TakePartyItemNum("quiver06",1)
                                                 DestroyItem("quiver06")
                                                 DestroyGold(5000)~ GOTO 11
    IF ~~ THEN REPLY #66910 GOTO VoidBulletCespy_stall
  END

  IF ~~ THEN BEGIN VoidBulletCespy_stall SAY @1120
    COPY_TRANS BOTSMITH 4
  END

END                                            
