ALTER_TRANS NARLEN
BEGIN 24 
END
BEGIN 0
END
BEGIN
"ACTION" ~EraseJournalEntry(227307)
EraseJournalEntry(227311)
EraseJournalEntry(227312)
SetGlobal("NarlenMove","GLOBAL",6)
TakePartyItem("MISC45")
GiveItemCreate("shadows",LastTalkedToBy,0,0,0)
Hide()
EscapeArea()
~
END

REPLACE_SAY NARLEN 24 @8023

ALTER_TRANS NARLEN
BEGIN 25 
END
BEGIN 0
END
BEGIN
"ACTION" ~EraseJournalEntry(227307)
EraseJournalEntry(227311)
EraseJournalEntry(227312)
SetGlobal("NarlenMove","GLOBAL",7)
TakePartyItem("MISC45")
GiveItemCreate("shadows",LastTalkedToBy,0,0,0)
Hide()
EscapeArea()
~
END

REPLACE_SAY NARLEN 25 @8024

