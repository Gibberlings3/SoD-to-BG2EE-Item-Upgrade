ALTER_TRANS SHANDAL2
BEGIN 29 
END
BEGIN 0
END
BEGIN
"ACTION" ~DialogueInterrupt(FALSE)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
GiveItemCreate("auril",LastTalkedToBy,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
~
END

REPLACE_SAY SHANDAL2 29 @8014



ALTER_TRANS SHANDAL2
BEGIN 30 
END
BEGIN 0
END
BEGIN
"ACTION" ~DialogueInterrupt(FALSE)
TakePartyItem("CLCK22")
TakePartyItem("MISC2H")
AddexperienceParty(500)
GiveItemCreate("auril",LastTalkedToBy,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
~
END

REPLACE_SAY SHANDAL2 30 @8015

