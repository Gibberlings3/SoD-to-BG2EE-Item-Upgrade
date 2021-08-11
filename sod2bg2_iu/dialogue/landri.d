ALTER_TRANS LANDRI
BEGIN 5 
END
BEGIN 0
END
BEGIN
"ACTION" ~AddexperienceParty(300)
TakePartyItem("BOOT06")
GiveItemCreate("dtkwboot",LastTalkedToBy,0,0,0)
IncrementGlobal("HelpLandrin","GLOBAL",1)~
"UNSOLVED_JOURNAL" ~@6068~
END

REPLACE_SAY LANDRI 5 @8037



