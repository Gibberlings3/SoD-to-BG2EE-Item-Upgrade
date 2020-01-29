ALTER_TRANS RENAL
BEGIN 48
END
BEGIN 1
END
BEGIN
"ACTION" ~SetGlobal("RenalJob","GLOBAL",4)
EraseJournalEntry(34194)
EraseJournalEntry(34198)
EraseJournalEntry(34201)
EraseJournalEntry(34205)
EraseJournalEntry(34207)
EraseJournalEntry(34211)
EraseJournalEntry(34217)
EraseJournalEntry(34218)
EraseJournalEntry(34220)
EraseJournalEntry(34232)
EraseJournalEntry(34233)
EraseJournalEntry(34234)
EraseJournalEntry(34235)
EraseJournalEntry(34236)
EraseJournalEntry(34237)
EraseJournalEntry(34238)
EraseJournalEntry(34239)
EraseJournalEntry(34240)
EraseJournalEntry(34241)
EraseJournalEntry(34243)
GiveItemCreate("bdbrac03",LastTalkedToBy,0,0,0)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("RenalJob","GLOBAL",4)~
END



