ALTER_TRANS OHDAZOTH
BEGIN 29 
END
BEGIN 0
END
BEGIN
"ACTION" ~AddJournalEntry(96132,INFO)
GiveItemCreate("vexed3","dorn",1,1,0)
SetGlobal("OHD_ritual_postazothet","OH5120",1)
~
END

REPLACE_SAY OHDAZOTH 29 @8010



