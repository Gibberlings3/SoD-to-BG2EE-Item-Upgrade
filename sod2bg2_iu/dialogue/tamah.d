ALTER_TRANS TAMAH
BEGIN 5 
END
BEGIN 0
END
BEGIN
"ACTION" ~AddexperienceParty(300)
ReputationInc(1)
GiveItemCreate("bootfor",LastTalkedToBy,0,0,0)
EscapeArea()
~
END

REPLACE_SAY TAMAH 5 @8012



