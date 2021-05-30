ALTER_TRANS BDHIGG01
BEGIN 154 
END
BEGIN 0
END
BEGIN
"ACTION" ~SetGlobal("BardPlot1","GLOBAL",20)
SetGlobal("BardPlotOn","GLOBAL",6)
GiveItemCreate("bdmisc10",LastTalkedToBy,0,0,0)
TakePartyItem("misc8f")  // Playhouse Deed
DestroyItem("misc8f") ~ // Playhouse Deed
END

REPLACE_SAY BDHIGG01 153 @8001



