ALTER_TRANS MOURNER6
BEGIN 6 
END
BEGIN 0
END
BEGIN
"ACTION" ~AddexperienceParty(5000)
GiveItemCreate("bdbrd02",LastTalkedToBy,0,0,0)
ActionOverride("mourner5",EscapeArea())
EscapeArea()~
END

REPLACE_SAY MOURNER6 6 @8009



