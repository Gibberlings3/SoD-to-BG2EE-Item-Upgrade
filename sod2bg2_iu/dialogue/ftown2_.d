ALTER_TRANS FTOWN2_
BEGIN 8 
END
BEGIN 0
END
BEGIN
"ACTION" ~AddexperienceParty(800)
SetGlobal("HelpNashkellWoman","GLOBAL",3)
EraseJournalEntry(227101)
GiveItemCreate("dtkwscrf",LastTalkedToBy,0,0,0)~
"SOLVED_JOURNAL" ~@6068~
END

REPLACE_SAY FTOWN2_ 8 @8038



