ALTER_TRANS UDDEMON
BEGIN 10 
END
BEGIN 0
END
BEGIN
"ACTION" ~TakePartyItem("MISC9t")
EraseJournalEntry(5810)
EraseJournalEntry(6535)
EraseJournalEntry(16529)
EraseJournalEntry(6943)
EraseJournalEntry(16339)
EraseJournalEntry(9649)
EraseJournalEntry(6405)
EraseJournalEntry(6403)
EraseJournalEntry(6590)
EraseJournalEntry(7147)
EraseJournalEntry(7148)
EraseJournalEntry(15793)
EraseJournalEntry(15792)
EraseJournalEntry(23424)
GiveItemCreate("dtkdebld",LastTalkedToBy,1,0,0)
SetGlobalTimer("udEscape","GLOBAL",120)
SetGlobal("DrowCityHostile","GLOBAL",0)
CreateVisualEffectObject("SPPORTAL",Myself)
Wait(1)
DestroySelf()~
"SOLVED_JOURNAL" ~@6061~
END

REPLACE_SAY UDDEMON 10 @8029





ALTER_TRANS UDDEMON
BEGIN 12 
END
BEGIN 0
END
BEGIN
"ACTION" ~EraseJournalEntry(5810)
EraseJournalEntry(6535)
EraseJournalEntry(16529)
EraseJournalEntry(6943)
EraseJournalEntry(16339)
EraseJournalEntry(9649)
EraseJournalEntry(6405)
EraseJournalEntry(6403)
EraseJournalEntry(6590)
EraseJournalEntry(7147)
EraseJournalEntry(7148)
EraseJournalEntry(15793)
EraseJournalEntry(15792)
EraseJournalEntry(23424)
SetGlobalTimer("udEscape","GLOBAL",360)
SetGlobal("DrowCityHostile","GLOBAL",0)ReallyForceSpell(Player1,CLERIC_FLAME_STRIKE)
Wait(1)
Attack(Player1)~
"SOLVED_JOURNAL" ~@6060~
END

