ALTER_TRANS DEMSON
BEGIN 97 
END
BEGIN 0
END
BEGIN
"ACTION" ~SetGlobal("PaladinPlot","GLOBAL",30)
GiveItemCreate("dtkrnd04",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)
ActionOverride(Player1,RegainPaladinHood())~
END


ALTER_TRANS DEMSON
BEGIN 97 
END
BEGIN 1
END
BEGIN
"ACTION" ~SetGlobal("PaladinPlot","GLOBAL",60)
GiveItemCreate("dtkrnd04",Player1,0,0,0)
GiveItemCreate("shld30",Player1,0,0,0)
ActionOverride(Player1,RegainPaladinHood())~
END



