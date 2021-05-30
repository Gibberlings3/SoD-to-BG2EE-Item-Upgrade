ALTER_TRANS TRSKIN04
BEGIN 8 
END
BEGIN 0
END
BEGIN
"ACTION" ~EraseJournalEntry(6996)
EraseJournalEntry(7022)
EraseJournalEntry(7023)
EraseJournalEntry(7024)
EraseJournalEntry(7026)
EraseJournalEntry(15731)
EraseJournalEntry(15803)
EraseJournalEntry(15805)
EraseJournalEntry(15965)
EraseJournalEntry(16530)
EraseJournalEntry(22914)
EraseJournalEntry(37194)
ReputationInc(1)
GiveItemCreate("bdbrac15",LastTalkedToBy,0,0,0)
ActionOverride("trskin05",EscapeArea())
EscapeArea()~
END

REPLACE_SAY TRSKIN04 8 @8008


