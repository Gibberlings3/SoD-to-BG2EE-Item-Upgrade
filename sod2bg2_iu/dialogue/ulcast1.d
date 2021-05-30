ALTER_TRANS ULCAST
BEGIN 5 
END
BEGIN 0
END
BEGIN
"ACTION" ~TakePartyItem("Ulbook54")
AddexperienceParty(1000)
GiveItemCreate("ulring",LastTalkedToBy,3,3,3)
EraseJournalEntry(227495)
EraseJournalEntry(227288)
EraseJournalEntry(227279)
EraseJournalEntry(208058)
SetGlobal("ACH_THE_WRITTEN","GLOBAL",1)
~
END





