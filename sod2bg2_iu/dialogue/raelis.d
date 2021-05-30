// creator  : E:\NearInfinity.jar (v2.1-20180615)
// game     : E:\Baldur's Gate II - Enhanced Edition
// resource : RAELIS.DLG
// source   : Override\RAELIS.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~RAELIS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #11 /* Triggers after states #: 27 24 71 69 67 57 54 37 33 17 10 even though they appear after this state */
~  Global("HaerDalisFree","GLOBAL",1)
Global("RaelisJob","GLOBAL",1)
Global("HaerDalisMove","GLOBAL",1)
~ THEN BEGIN 0 // from: 
  SAY #109 /* ~So you return, and our dark Haer'Dalis, his fetters shattered by your hands, has preceded you. Here is the gold I promised... Have you the gem he spoke of?~ [RAELIS17] */
  IF ~~ THEN REPLY #110 /* ~No, Miss Raelis, but I shall soon return with it.~ */ DO ~GiveGoldForce(300)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ GOTO 1
  IF ~  OR(2)
!Global("Chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #111 /* ~The gem is safe, but first I must know how much you'll give me for it.~ */ DO ~GiveGoldForce(300)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ GOTO 2
  IF ~  Global("Chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46108 /* ~I have the gem, but I need more gold for it... a friend of mine is captive to the Cowled Wizards, and I need gold to rescue her.~ */ DO ~GiveGoldForce(300)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ GOTO 2
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #112 /* ~Aye, here it is, safely delivered.~ */ DO ~GiveGoldForce(300)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 4.2 8.0 29.1 68.0
  SAY #113 /* ~Do so, child, for much depends on it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 8.1 68.1
  SAY #114 /* ~Do not try to barter with me, child! I shall give you more than any other might, for I have more to give and greater need. Is that enough?~ */
  IF ~  PartyHasItem("MISC6X")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Edwin")
~ THEN REPLY #115 /* ~Yes, Miss Raelis, I merely wished to confirm it. Here is the gem; let me show it to you.~ */ GOTO 3
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Edwin")
~ THEN REPLY #116 /* ~I'll barter with who I wish, Miss Raelis... Show me your greater need if you wish, but I am leaving.~ */ GOTO 4
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Edwin")
~ THEN REPLY #117 /* ~Excuse me while I fetch it, then, Miss Raelis.~ */ GOTO 1
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 164
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 136
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.2
  SAY #118 /* ~Ah, Mekrath's prize! It shall be our salvation yet. Here be 1,200 gold. Haer'Dalis, tell them what we are about while I prepare the summoning of the conduit.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4659)
EraseJournalEntry(4660)
EraseJournalEntry(4661)
EraseJournalEntry(4662)
EraseJournalEntry(4679)
EraseJournalEntry(4680)
EraseJournalEntry(46842)
EraseJournalEntry(46843)
EraseJournalEntry(46844)
EraseJournalEntry(46845)
AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(1200)
SetGlobal("HaerDalisFree","GLOBAL",2)
SetGlobal("RaelisHasGem","GLOBAL",1)
~ SOLVED_JOURNAL #47759 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have returned the gem to Raelis Shai, the mistress of the playhouse beneath the Five Flagons Inn and companion to Haer'Dalis, the bard I rescued from the enforced servitude of the wizard Mekrath.~ */ EXTERN ~HAERDA~ 198
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #119 /* ~1,200 gold then, if you be wanting numbers! 'Tis all I have.~ */
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #120 /* ~1,200? Aye, you have bought my interest. Here is your petty costume jewel.~ */ GOTO 5
  IF ~~ THEN REPLY #121 /* ~And it's not enough... Goodbye, Miss Raelis.~ */ GOTO 6
  IF ~~ THEN REPLY #126 /* ~Very well, I shall go run your petty errand.~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #122 /* ~And here, then, is your petty penny, child. Haer'Dalis, tell them the truth of what we are about while I prepare for the summoning of the conduit.~ */
  IF ~~ THEN DO ~SetGlobal("RaelisHasGem","GLOBAL",1)
EraseJournalEntry(4659)
EraseJournalEntry(4660)
EraseJournalEntry(4661)
EraseJournalEntry(4662)
EraseJournalEntry(4679)
EraseJournalEntry(4680)
EraseJournalEntry(46842)
EraseJournalEntry(46843)
EraseJournalEntry(46844)
EraseJournalEntry(46845)
AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(1200)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ SOLVED_JOURNAL #47759 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have returned the gem to Raelis Shai, the mistress of the playhouse beneath the Five Flagons Inn and companion to Haer'Dalis, the bard I rescued from the enforced servitude of the wizard Mekrath.~ */ EXTERN ~HAERDA~ 198
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #123 /* ~Haer'Dalis, all of you, stop them!~ */
  IF ~~ THEN DO ~ActionOverride("HaerDalis",Enemy())
Shout(89)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.3 68.2
  SAY #124 /* ~Ah, Mekrath's prize! It shall be our salvation yet. Here be 700 gold. Haer'Dalis, tell them what we are about while I prepare for the summoning of the conduit.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4659)
EraseJournalEntry(4660)
EraseJournalEntry(4661)
EraseJournalEntry(4662)
EraseJournalEntry(4679)
EraseJournalEntry(4680)
EraseJournalEntry(46842)
EraseJournalEntry(46843)
EraseJournalEntry(46844)
EraseJournalEntry(46845)
AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(700)
SetGlobal("RaelisHasGem","GLOBAL",1)
~ SOLVED_JOURNAL #47759 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have returned the gem to Raelis Shai, the mistress of the playhouse beneath the Five Flagons Inn and companion to Haer'Dalis, the bard I rescued from the enforced servitude of the wizard Mekrath.~ */ EXTERN ~HAERDA~ 198
END

IF WEIGHT #12 /* Triggers after states #: 27 24 71 69 67 57 54 37 33 17 10 even though they appear after this state */
~  Global("HaerDalisFree","GLOBAL",2)
!InParty("HaerDalis")
!Dead("HaerDalis")
Global("RaelisHasGem","GLOBAL",0)
~ THEN BEGIN 8 // from: 
  SAY #125 /* ~Ah, the fabled rescuers of Haer'Dalis... Do you carry with you the gem he told you of?~ [RAELIS18] */
  IF ~~ THEN REPLY #127 /* ~No, Miss Raelis, but I shall soon return with it.~ */ GOTO 1
  IF ~~ THEN REPLY #128 /* ~The gem is safe, but first I must know how much you'll give me for it.~ */ GOTO 2
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #129 /* ~Aye, here it is, safely delivered.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 65.0
  SAY #158 /* ~<CHARNAME>, your presence here would be appreciated. Will you stay with us?~ */
  IF ~  !InParty("HaerDalis")
~ THEN REPLY #159 /* ~I'm not interested in fighting extraplanar creatures... I'll be on my way, thank you.~ */ GOTO 10
  IF ~  !InParty("HaerDalis")
~ THEN REPLY #160 /* ~We shall hold off these creatures as best as we are able. Tell me when you find the right tunnel.~ */ GOTO 13
  IF ~  InParty("HaerDalis")
~ THEN REPLY #246 /* ~I'm not interested in fighting extraplanar creatures... I'll be on my way, thank you.~ */ EXTERN ~HAERDAJ~ 12
  IF ~  InParty("HaerDalis")
~ THEN REPLY #247 /* ~We shall hold off these creatures as best as we are able. Tell me when you find the right tunnel.~ */ EXTERN ~HAERDAJ~ 13
  IF ~  !InParty("Haerdalis")
Alignment(Player1,MASK_EVIL)
~ THEN REPLY #50203 /* ~I shall stay only if the reward is sufficient. What shall you give me for my skills in this battle?~ */ EXTERN ~HAERDA~ 217
  IF ~  InParty("Haerdalis")
Alignment(Player1,MASK_EVIL)
~ THEN REPLY #50276 /* ~I shall stay only if the reward is sufficient. What shall you give me for my skills in this battle?~ */ EXTERN ~HAERDAJ~ 92
END

IF WEIGHT #0 ~  Global("RaelisLeaving","GLOBAL",1)
~ THEN BEGIN 10 // from: 9.0
  SAY #161 /* ~We could have used your bravery... escort yourself out. We shall not begin until you are gone. Haer'Dalis, prepare your blades... for you are all we have.~ */
  IF ~~ THEN EXTERN ~HAERDA~ 95
END

IF ~~ THEN BEGIN 11 // from: 
  SAY #163 /* ~You are more than kind. Haer'Dalis's blades are something to behold. Would you have him join you for this fight?~ */
  IF ~~ THEN REPLY #90 /* ~It would be an honor.~ */ GOTO 12
  IF ~~ THEN REPLY #91 /* ~I'm afraid he and I are not used to fighting at each other's side. It would be best if, for the time being at least, he fought under your command.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #96 /* ~Haer'Dalis, unsheathe your blades and put yourself at <CHARNAME>'s command.~ */
  IF ~~ THEN EXTERN ~HAERDA~ 96
END

IF ~~ THEN BEGIN 13 // from: 9.1 11.1 73.0 74.1 75.0 77.1 78.0
  SAY #97 /* ~As you wish. Come, friends, let us begin.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut17a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 
  SAY #168 /* ~Who are you, and what business do you have with us?~ */
  IF ~~ THEN EXTERN ~BOUNHA~ 2
END

IF ~~ THEN BEGIN 15 // from: 
  SAY #170 /* ~We were set up. We performed it under the assumption that it was fiction. The playwright never told us otherwise.~ */
  IF ~~ THEN EXTERN ~BOUNHA~ 3
END

IF ~~ THEN BEGIN 16 // from: 
  SAY #172 /* ~Neither did we... he wore a mask and met with us in the alleyways. It doesn't matter... Come, my bards. It appears 'tis time to make our reckoning. Haer'Dalis? ~ */
  IF ~~ THEN UNSOLVED_JOURNAL #4685 /* ~Rescue Raelis and Haer'Dalis from the planar prison

Now that Raelis Shai has used the gem I acquired for them to open up her planar portals to return to their extraplanar home, it appears that the past has caught up to the troupe. Haer'Dalis, Raelis, and the rest of the actors have been arrested by bounty hunters and brought through a portal... which remains open. They have ignored me for now, which only begs the question of whether or not I will follow.~ */ EXTERN ~BOUNHA~ 4
END

IF WEIGHT #1 ~  Global("PlanarPrison","GLOBAL",1)
!Dead("Haerdalis")
AreaCheck("AR0516")
AreaCheckObject("AR0516","Haerdalis")
~ THEN BEGIN 17 // from: 
  SAY #177 /* ~You have known us for so short a time, and yet you have bought our freedom with blood. My child, my friend, it is a debt I can never repay...~ [RAELIS21] */
  IF ~~ THEN DO ~EraseJournalEntry(4685)
EraseJournalEntry(46846)
EraseJournalEntry(46847)
EraseJournalEntry(46848)
EraseJournalEntry(46849)
EraseJournalEntry(46850)
EraseJournalEntry(46851)
AddXPObject(Player1,44000)
AddXPObject(Player2,44000)
AddXPObject(Player3,44000)
AddXPObject(Player4,44000)
AddXPObject(Player5,44000)
AddXPObject(Player6,44000)
~ SOLVED_JOURNAL #47761 /* ~Rescue Raelis and Haer'Dalis from the planar prison

Although it was not a simple matter, Raelis and her troupe have been freed from the extraplanar prison that they were brought to. Raelis and her troupe fled the place, but she had magic enough to open another conduit and return us home.~ */ GOTO 66
END

IF ~~ THEN BEGIN 18 // from: 
  SAY #179 /* ~No? No more plays, Haer'Dalis? No more theater?~ */
  IF ~~ THEN EXTERN ~HAERDA~ 98
  IF ~  Global("CDHaerdalisJoined","GLOBAL",1)
~ THEN EXTERN ~HAERDAP~ 15
END

IF ~~ THEN BEGIN 19 // from: 
  SAY #181 /* ~Don't be a fool, Haer'Dalis. There was no mystery writer of our play! I wrote "A Comedy of Terrors," it was mine! I brought all of this upon us!~ */
  IF ~~ THEN EXTERN ~HAERDA~ 99
  IF ~  Global("CDHaerdalisJoined","GLOBAL",1)
~ THEN EXTERN ~HAERDAP~ 16
END

IF ~~ THEN BEGIN 20 // from: 59.0
  SAY #197 /* ~Those that know us shall assist you any way they can... fill the place with music in memory of what has passed... Go and take yon lovely moth with you.~ */
  IF ~~ THEN DO ~SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("Playhouse","GLOBAL",1)
SetGlobal("PlanarPrison","GLOBAL",2)
GiveItemCreate("misc8f",[PC],0,0,0)
StartCutSceneMode()
StartCutSceneEx("Cut17e",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 
  SAY #198 /* ~Then go, my lovely Haer'Dalis... remember us fondly in your musings. And you, <CHARNAME>, go with my thanks and take yon lovely moth with you.~ */
  IF ~~ THEN DO ~SetGlobal("PlanarPrison","GLOBAL",2)
Wait(1)
StartCutSceneMode()
StartCutSceneEx("Cut17d",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 61.0
  SAY #203 /* ~Fill the place with song, in memory of what has transpired here. Go, and let the three of us each part in love.~ */
  IF ~~ THEN DO ~SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("Playhouse","GLOBAL",1)
SetGlobal("PlanarPrison","GLOBAL",2)
GiveItemCreate("misc8f",[PC],0,0,0)
StartCutSceneMode()
StartCutSceneEx("Cut17e",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 62.0 71.1
  SAY #204 /* ~Come, ye Doomguard, we must be off and swiftly. And you, <CHARNAME>, I can give you nothing but my gratitude. Perhaps we all shall meet again.~ */
  IF ~~ THEN DO ~SetGlobal("PlanarPrison","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("Cut17d",FALSE)
~ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 71 69 67 57 54 37 33 even though they appear after this state */
~  Global("HaerDalisFree","GLOBAL",1)
Global("RaelisJob","GLOBAL",1)
InParty("HaerDalis")
!Dead("HaerDalis")
~ THEN BEGIN 24 // from: 
  SAY #84 /* ~And the errant actor doth return! <CHARNAME>, I thank you, for you have brought joy to this dark house. Haer'Dalis, have you the gem?~ [RAELIS15] */
  IF ~  PartyHasItem("MISC6X")
~ THEN DO ~SetGlobal("HaerDalisFree","GLOBAL",2)
~ EXTERN ~HAERDAJ~ 4
  IF ~  !PartyHasItem("MISC6X")
~ THEN DO ~SetGlobal("HaerDalisFree","GLOBAL",2)
~ EXTERN ~HAERDAJ~ 5
END

IF ~~ THEN BEGIN 25 // from: 63.0
  SAY #93 /* ~Haer'Dalis, tell them the truth of what we are about while I prepare the summoning of the conduit.~ */
  IF ~~ THEN DO ~AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(1000)
SetGlobal("HaerDalisFree","GLOBAL",2)
SetGlobal("RaelisHasGem","GLOBAL",1)
~ EXTERN ~HAERDAJ~ 48
END

IF ~~ THEN BEGIN 26 // from: 
  SAY #100 /* ~I promised 300 gold for the rescue of my finest bard. But without that gem, he be just a pretty song. Fetch the gem and I shall more than double your reward.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 71 69 67 57 54 37 33 even though they appear after this state */
~  Global("HaerDalisFree","GLOBAL",1)
Global("RaelisJob","GLOBAL",0)
InParty("HaerDalis")
!Dead("HaerDalis")
~ THEN BEGIN 27 // from: 
  SAY #264 /* ~Haer'Dalis, you have returned! ...And who is this that you bring with you?~ [RAELIS16] */
  IF ~~ THEN DO ~SetGlobal("HaerDalisFree","GLOBAL",2)
~ EXTERN ~HAERDAJ~ 16
END

IF ~~ THEN BEGIN 28 // from: 
  SAY #266 /* ~Have you the gem, my brilliant hound?~ */
  IF ~  PartyHasItem("MISC6X")
~ THEN EXTERN ~HAERDAJ~ 17
  IF ~  !PartyHasItem("MISC6X")
~ THEN EXTERN ~HAERDAJ~ 18
END

IF ~~ THEN BEGIN 29 // from: 
  SAY #276 /* ~Very well. I have upon me 700 coins. Will that be enough?~ */
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #277 /* ~Your purse is generous. Here, then, is the stone you covet.~ */ DO ~AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(700)
SetGlobal("RaelisHasGem","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #278 /* ~I can make do with that. Let me just go fetch the jewel from where I've hidden it. ~ */ GOTO 1
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #279 /* ~Don't make me laugh. Goodbye, Miss Raelis, I think our business here is through.~ */ EXTERN ~HAERDAJ~ 19
  IF ~  !PartyHasItem("MISC6X")
~ THEN REPLY #280 /* ~Don't make me laugh. Goodbye, Miss Raelis, I think our business here is through.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.3
  SAY #254 /* ~1,000 then, 1,000 gold! Please, just fetch the gem.~ */
  IF ~~ THEN REPLY #282 /* ~Aye, for 1,000 I'll do your deed. Come, Haer'Dalis, let us find ourselves a gem.~ */ EXTERN ~HAERDAJ~ 20
  IF ~~ THEN REPLY #283 /* ~Neither for a thousand nor a hundred thousand shall I be your gnomish errand-beast. Come, Haer'Dalis, your friends are wearing on my patience.~ */ EXTERN ~HAERDAJ~ 21
END

IF ~~ THEN BEGIN 31 // from: 
  SAY #287 /* ~Good, for our time grows short. Here is the thousand gold. Haer'Dalis, tell your friends what we are about. I must prepare the jewel for its summoning.~ */
  IF ~~ THEN DO ~SetGlobal("RaelisHasGem","GLOBAL",1)
AddexperienceParty(21250)
TakePartyItem("MISC6X")
GiveGoldForce(1000)
~ EXTERN ~HAERDAJ~ 48
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #288 /* ~And here be 700 of the petty coins to which you focus your desire. Haer'Dalis, tell them what we are about while I go prepare the stone for summoning.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4659)
EraseJournalEntry(4660)
EraseJournalEntry(4661)
EraseJournalEntry(4662)
EraseJournalEntry(4679)
EraseJournalEntry(4680)
EraseJournalEntry(46842)
EraseJournalEntry(46843)
EraseJournalEntry(46844)
EraseJournalEntry(46845)
~ SOLVED_JOURNAL #47759 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have returned the gem to Raelis Shai, the mistress of the playhouse beneath the Five Flagons Inn and companion to Haer'Dalis, the bard I rescued from the enforced servitude of the wizard Mekrath.~ */ EXTERN ~HAERDAJ~ 48
END

IF WEIGHT #2 ~  NumTimesTalkedTo(0)
Allegiance(Myself,NEUTRAL)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 33 // from: 
  SAY #29924 /* ~I... I am sorry, good folk of the audience. As you can see, things are not quite right with our troupe due to circumstances beyond our control.~ [RAELIS07] */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Nalia")
~ THEN DO ~SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ GOTO 34
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ EXTERN ~MINSCJ~ 192
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ EXTERN ~KORGANJ~ 165
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Nalia")
~ THEN DO ~SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ EXTERN ~NALIAJ~ 293
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29925 /* ~I beg of you, good people, come back another day when we have restored matters... we shall prove to you then that the Sigil Troupe is worthy of your attention and coin, and we shall do so for free, of course.~ [RAELIS08] */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29926 /* ~...and one final... odd... request, good folk. If you or another knows of those who are skilled in the arts of sword and adventure... do send them to speak to me. It is a matter of utmost urgency.~ [RAELIS09] */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29927 /* ~Tell them to come and speak to I, Raelis Shai. Until then, I apologize again and bid you a fair evening...~ [RAELIS10] */
  IF ~~ THEN DO ~SetGlobal("PlayOver","AR0510",1)
SetHomeLocation([1317.246])
MoveToPointNoInterrupt([1317.246])
~ UNSOLVED_JOURNAL #46842 /* ~Raelis Shai asks for aid

It seems the playhouse beneath the Five Flagons is in need of some adventurers. A woman by the name of Raelis Shai has asked for any interested to go backstage and speak to her about the matter.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedTo(1)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 37 // from: 
  SAY #29958 /* ~Ah, hello? I am afraid if you are looking for a refund for tonight's performance, I can only tell you to come back when our troupe is not in such disarray.~ [RAELIS02] */
  IF ~  OR(3)
!Global("QuayleJob","GLOBAL",1)
!InParty("Aerie")
!See("Aerie")
~ THEN REPLY #29959 /* ~Actually, I'm here regarding your call for adventurers.~ */ DO ~EraseJournalEntry(3301)
EraseJournalEntry(3303)
SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ GOTO 38
  IF ~  OR(3)
!Global("QuayleJob","GLOBAL",1)
!InParty("Aerie")
!See("Aerie")
~ THEN REPLY #29960 /* ~Why is your troupe in disarray?~ */ DO ~EraseJournalEntry(3301)
EraseJournalEntry(3303)
SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ GOTO 39
  IF ~  Global("QuayleJob","GLOBAL",1)
!Dead("quaylem")
!Dead("quayle")
InParty("Aerie")
See("Aerie")
~ THEN DO ~EraseJournalEntry(3301)
EraseJournalEntry(3303)
SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ EXTERN ~AERIEJ~ 209
  IF ~  Global("QuayleJob","GLOBAL",1)
OR(2)
Dead("quaylem")
Dead("quayle")
InParty("Aerie")
See("Aerie")
~ THEN DO ~EraseJournalEntry(3301)
EraseJournalEntry(3303)
SetGlobal("HaerDalisPlotStarted","GLOBAL",1)
~ EXTERN ~AERIEJ~ 210
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #29962 /* ~Is this true, child? Fate smiles on us, then, for I can see in your bearing that you are a <PRO_MANWOMAN> of no mean experience. I thank you for coming to our aid.~ */
  IF ~~ THEN REPLY #29963 /* ~What is it, exactly, that you need me to do?~ */ GOTO 41
  IF ~~ THEN REPLY #29964 /* ~I haven't agreed to anything yet.~ */ GOTO 41
  IF ~~ THEN REPLY #29965 /* ~Who are you people? I don't quite... recognize what race you belong to, if you'll pardon my asking.~ */ GOTO 44
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #29966 /* ~The vagaries of fortune blow an ill wind over us. One of our members is absent due to circumstances we cannot control. I am pleased you have come to aid us.~ */
  IF ~~ THEN REPLY #29967 /* ~Tell me more about the situation first.~ */ GOTO 41
  IF ~~ THEN REPLY #29968 /* ~I haven't agreed to help you yet.~ */ GOTO 41
  IF ~~ THEN REPLY #29969 /* ~Who are you people? I don't quite... recognize what race you belong to, if you'll pardon my asking.~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 
  SAY #29970 /* ~As it pleases you, my good <PRO_MANWOMAN>. I promise that the Sigil Troupe will be more pleasing in our performance when you next see us.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.0 38.1 39.0 39.1 44.0 57.0
  SAY #29971 /* ~You must hear our story, then. One of our actors, Haer'Dalis, has been kidnapped by a wizard native to this city... he has made no effort to negotiate with us.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29972 /* ~The wizard's greed may have called to him at the sight of Haer'Dalis's beloved gem... something our sparrow would not gladly surrender.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #29973 /* ~So this wizard has stolen both away, and there is nothing we can do. I would ask that you return our sparrow and his gem to us both, by whatever means possible.~ */
  IF ~~ THEN REPLY #29974 /* ~Who is this wizard, and where can I find him?~ */ GOTO 46
  IF ~~ THEN REPLY #29975 /* ~Why do you not contact the city guard about this?~ */ GOTO 47
  IF ~~ THEN REPLY #29976 /* ~What reward might I receive for this task?~ */ GOTO 50
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46109 /* ~I need to gather a large amount of gold to rescue a friend of my own, so I would be interested in a reward.~ */ GOTO 50
  IF ~~ THEN REPLY #29977 /* ~No, I am not interested in doing this.~ */ GOTO 52
END

IF ~~ THEN BEGIN 44 // from: 38.2 39.2
  SAY #29978 /* ~I understand what you ask, child. We are people from distant lands, and all of us are of mixed heritage. Please, my good <PRO_MANWOMAN>... will you aid us?~ */
  IF ~~ THEN REPLY #29979 /* ~I would need to know what the problem is, exactly.~ */ GOTO 41
  IF ~~ THEN REPLY #29980 /* ~No, I am not interested.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY #29981 /* ~You do not even know what ails us, and yet you refuse? Perhaps you are not the heroes we seek. Very well, child, I thank you for your interest.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.0 49.0 51.0 57.1
  SAY #29982 /* ~His name is Mekrath, I believe... I know that his lair can be accessed through the city's sewers, though where exactly it lies is a mystery.~ */
  IF ~~ THEN REPLY #29983 /* ~Why do you not simply contact the city guard?~ */ GOTO 47
  IF ~  OR(2)
!Global("chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #29984 /* ~I see. And what kind of reward might I be looking at?~ */ GOTO 50
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46110 /* ~I see. I need to gather a large amount of gold to rescue a friend of my own, however, so I would be interested in some kind of reward.~ */ GOTO 50
  IF ~~ THEN REPLY #29985 /* ~Very well, I shall do as you ask, Raelis.~ */ GOTO 53
  IF ~~ THEN REPLY #29986 /* ~I've no interest in taking on a wizard for you. Forget it.~ */ GOTO 52
END

IF ~~ THEN BEGIN 47 // from: 43.1 46.0 51.1
  SAY #29987 /* ~I am... unsure of your particular customs, but it has never been this Sigil's fortune to be treated fairly by the many city authorities that we have come across.~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #29988 /* ~As well, though Haer'Dalis might be released, would the gem be returned? The wizard could say it is his... and we could offer no proof to the contrary.~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29989 /* ~No... we must have our brother and his gem both safely returned, with no questions asked of us due to our strangeness. This is the best way.~ */
  IF ~~ THEN REPLY #29990 /* ~Tell me who this wizard is, then, and where I might find him.~ */ GOTO 46
  IF ~~ THEN REPLY #29991 /* ~What kind of reward might I receive for this task, then?~ */ GOTO 50
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46111 /* ~I need to collect a large amount of gold to rescue a friend of my own, so any reward you could offer would be appreciated.~ */ GOTO 50
  IF ~~ THEN REPLY #29992 /* ~Very well... I shall do as you ask.~ */ GOTO 53
  IF ~~ THEN REPLY #29993 /* ~Sorry... not interested.~ */ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 43.2 43.3 46.1 46.2 49.1 49.2 57.2 57.3
  SAY #29994 /* ~We are but a destitute troupe of players, child, and can afford little. Mekrath may have treasure of his own... Wrest it from his grasp if you wish to do so.~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29995 /* ~But coin is e'er on the tongue... I can offer you 300 gold for our sparrow's return. Bring back the gem, and I can more than double that. Is that sufficient?~ */
  IF ~~ THEN REPLY #29996 /* ~I would like to know who this wizard is and where I can find him first.~ */ GOTO 46
  IF ~~ THEN REPLY #29997 /* ~I would ask, first, why you do not go to the authorities?~ */ GOTO 47
  IF ~~ THEN REPLY #29998 /* ~Yes, I shall do as you ask.~ */ GOTO 53
  IF ~~ THEN REPLY #29999 /* ~No, I am not interested.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 43.4 46.4 49.4 51.3 54.2
  SAY #30000 /* ~*sigh* It is as I feared. If you change your mind, child, please do return... I have a feeling Haer'Dalis will not return soon to our side otherwise.~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Aerie")
!Global("QuayleJob","GLOBAL",1)
~ THEN DO ~SetGlobal("RaelisJob","GLOBAL",0)
~ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
Global("QuayleJob","GLOBAL",1)
~ THEN DO ~SetGlobal("RaelisJob","GLOBAL",0)
~ EXTERN ~AERIEJ~ 216
END

IF ~~ THEN BEGIN 53 // from: 46.3 49.3 51.2 57.4
  SAY #30001 /* ~Fly, then... fetch our brother away from his captor however you might, and return to us soon. My prayers go with you, my good <PRO_MANWOMAN>.~ */
  IF ~  OR(2)
!IsValidForPartyDialogue("Aerie")
!Global("QuayleJob","GLOBAL",1)
~ THEN DO ~SetGlobal("RaelisJob","GLOBAL",1)
~ UNSOLVED_JOURNAL #4659 /* ~Free Haer'Dalis from imprisonment by Mekrath

I have accepted a commission from Raelis Shai, the leader of a troupe of players who work in the playhouse underneath the Five Flagons. One of her actors, named Haer'Dalis, has been kidnapped by a wizard named Mekrath, whose laboratory is accessible through the sewers. I am to retrieve Haer'Dalis from the wizard, as well as locate a jewel that belongs to him.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
Global("QuayleJob","GLOBAL",1)
~ THEN DO ~SetGlobal("RaelisJob","GLOBAL",1)
~ UNSOLVED_JOURNAL #4659 /* ~Free Haer'Dalis from imprisonment by Mekrath

I have accepted a commission from Raelis Shai, the leader of a troupe of players who work in the playhouse underneath the Five Flagons. One of her actors, named Haer'Dalis, has been kidnapped by a wizard named Mekrath, whose laboratory is accessible through the sewers. I am to retrieve Haer'Dalis from the wizard, as well as locate a jewel that belongs to him.~ */ EXTERN ~AERIEJ~ 217
END

IF WEIGHT #4 ~  Global("RaelisJob","GLOBAL",1)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 54 // from: 
  SAY #30007 /* ~Back so soon, child? But I see neither our Haer'Dalis nor his gem with you.~ [RAELIS11] */
  IF ~~ THEN REPLY #30008 /* ~I need to know where this Mekrath is again.~ */ GOTO 56
  IF ~~ THEN REPLY #30009 /* ~All right, I'll keep trying.~ */ GOTO 55
  IF ~~ THEN REPLY #30010 /* ~Forget it... I've decided not to continue this task.~ */ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.1
  SAY #30011 /* ~Excellent, child... the fortunes of our troupe fly with you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #30012 /* ~Mekrath's sanctuary and laboratory can be accessed through the city sewers, though where exactly they lie is a mystery.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("RaelisJob","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 57 // from: 
  SAY #30013 /* ~You have returned once again, child. Have you, perhaps, reconsidered rescuing our poor Haer'Dalis? Our gratitude would be great indeed.~ [RAELIS12] */
  IF ~~ THEN REPLY #30014 /* ~I need to know the full situation first.~ */ GOTO 41
  IF ~~ THEN REPLY #30015 /* ~Tell me who keeps your actor, then, and where he can be found.~ */ GOTO 46
  IF ~~ THEN REPLY #30016 /* ~I would like to know what sort of reward I can expect.~ */ GOTO 50
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46112 /* ~I need a large amount of gold to rescue a friend of my own, so I would like to know what reward you are offering first.~ */ GOTO 50
  IF ~~ THEN REPLY #30017 /* ~Yes, I will do as you ask, Raelis.~ */ GOTO 53
  IF ~~ THEN REPLY #30018 /* ~No, I haven't changed my mind.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.5
  SAY #30019 /* ~Then have you returned only to torment us with false hope? Leave us, child, and do not return unless you have altered your choice.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 
  SAY #36691 /* ~Aye, you will do as you must. I never could stop you. I owe our savior more than parting words, however. <CHARNAME>, here are the deeds to the playhouse in Amn.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 60 // from: 
  SAY #36693 /* ~Oh, Haer'Dalis, you were always too in love with poetry and not enough with me. But alas, ye Doomguard, I know you well enough not to steal you from your tragedy.~ */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 71.0
  SAY #36694 /* ~<CHARNAME>, if we be parting ways, then let me give to you the deeds to the playhouse in Amn. May it be yours, and may all who serve you do so gallantly...~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 62 // from: 
  SAY #36696 /* ~Oh, Haer'Dalis, you were always too in love with poetry and not enough with me. I will not steal you from your tragedy. If only you will remember me in mine.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 63 // from: 
  SAY #36714 /* ~Ah, Mekrath's prize! It shall be our salvation yet! Here, <CHARNAME>: 300 gold for the rescue of my bard and a further 700 for the gem.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4659)
EraseJournalEntry(4660)
EraseJournalEntry(4661)
EraseJournalEntry(4662)
EraseJournalEntry(4679)
EraseJournalEntry(4680)
EraseJournalEntry(46842)
EraseJournalEntry(46843)
EraseJournalEntry(46844)
EraseJournalEntry(46845)
~ SOLVED_JOURNAL #47759 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have returned the gem to Raelis Shai, the mistress of the playhouse beneath the Five Flagons Inn and companion to Haer'Dalis, the bard I rescued from the enforced servitude of the wizard Mekrath.~ */ GOTO 25
END

IF ~~ THEN BEGIN 64 // from: 
  SAY #36726 /* ~Haer'Dalis, everyone, gather 'round. The stone is ready to begin the summoning...~ [RAELIS20] */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #36727 /* ~As the conduits open, they will bring something with them. We will do what we can to hold off whatever beasts come, the better to determine which route be safest.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 66 // from: 17.0
  SAY #37079 /* ~But we must go before the duke marshals his forces. I will use what powers I have remaining to open another conduit. Are you ready, Haer'Dalis?~ */
  IF ~~ THEN EXTERN ~HAERDA~ 97
  IF ~  Global("CDHaerdalisJoined","GLOBAL",1)
~ THEN EXTERN ~HAERDAP~ 14
END

IF WEIGHT #6 ~  Global("HaerDalisMove","GLOBAL",1)
Global("RaelisJob","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",1)
~ THEN BEGIN 67 // from: 
  SAY #37550 /* ~So... the rescuers of our beloved Haer'Dalis have come to us at last. Haer'Dalis has preceded you and spoken of you well. Here is a reward for his return.~ [RAELIS13] */
  IF ~~ THEN DO ~AddexperienceParty(5000)
GiveGoldForce(300)
SetGlobal("HaerDalisFree","GLOBAL",2)
~ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #37551 /* ~Now... do you have the gem he spoke of, child? The portal gem that Mekrath had in his keeping?~ */
  IF ~~ THEN REPLY #37552 /* ~No, I don't... but I intend on getting it.~ */ GOTO 1
  IF ~~ THEN REPLY #37553 /* ~Perhaps... how much is the stone worth to you?~ */ GOTO 2
  IF ~  PartyHasItem("MISC6X")
~ THEN REPLY #37554 /* ~I do. Here you go.~ */ GOTO 7
END

IF WEIGHT #7 ~  InParty("HaerDalis")
!Dead("HaerDalis")
Global("HaerDalisFree","GLOBAL",2)
Global("RaelisHasGem","GLOBAL",0)
~ THEN BEGIN 69 // from: 
  SAY #37568 /* ~You have returned, my brilliant hound. Have you brought the gem with you?~ [RAELIS14] */
  IF ~  PartyHasItem("MISC6X")
~ THEN EXTERN ~HAERDAJ~ 4
  IF ~  !PartyHasItem("MISC6X")
~ THEN EXTERN ~HAERDAJ~ 59
END

IF ~~ THEN BEGIN 70 // from: 
  SAY #39675 /* ~Neither did we... He wore a mask and met with us in the alleyways. It doesn't matter... Come, my bards. It appears 'tis time to make our reckoning.~ */
  IF ~~ THEN EXTERN ~BOUNHA~ 4
END

IF WEIGHT #8 ~  Global("PlanarPrison","GLOBAL",1)
AreaCheck("AR0516")
~ THEN BEGIN 71 // from: 
  SAY #39922 /* ~You have known us for so short a time, yet you have bought our freedom with blood. My child, my friend, it is a debt I can never repay...~ */
  IF ~  Global("PlayerHasStronghold","GLOBAL",0)
Class(Player1,BARD_ALL)
~ THEN DO ~EraseJournalEntry(4685)
EraseJournalEntry(46846)
EraseJournalEntry(46847)
EraseJournalEntry(46848)
EraseJournalEntry(46849)
EraseJournalEntry(46850)
EraseJournalEntry(46851)
AddXPObject(Player1,44000)
AddXPObject(Player2,44000)
AddXPObject(Player3,44000)
AddXPObject(Player4,44000)
AddXPObject(Player5,44000)
AddXPObject(Player6,44000)
~ SOLVED_JOURNAL #47761 /* ~Rescue Raelis and Haer'Dalis from the planar prison

Although it was not a simple matter, Raelis and her troupe have been freed from the extraplanar prison that they were brought to. Raelis and her troupe fled the place, but she had magic enough to open another conduit and return us home.~ */ GOTO 61
  IF ~  OR(2)
Global("PlayerHasStronghold","GLOBAL",1)
!Class(Player1,BARD_ALL)
~ THEN DO ~EraseJournalEntry(4685)
EraseJournalEntry(46846)
EraseJournalEntry(46847)
EraseJournalEntry(46848)
EraseJournalEntry(46849)
EraseJournalEntry(46850)
EraseJournalEntry(46851)
AddXPObject(Player1,44000)
AddXPObject(Player2,44000)
AddXPObject(Player3,44000)
AddXPObject(Player4,44000)
AddXPObject(Player5,44000)
AddXPObject(Player6,44000)
~ SOLVED_JOURNAL #47761 /* ~Rescue Raelis and Haer'Dalis from the planar prison

Although it was not a simple matter, Raelis and her troupe have been freed from the extraplanar prison that they were brought to. Raelis and her troupe fled the place, but she had magic enough to open another conduit and return us home.~ */ GOTO 23
END

IF ~~ THEN BEGIN 72 // from: 
  SAY #50218 /* ~This is a somewhat awkward question, child. It is inappropriate to make demands of desperate people. Nevertheless, perhaps we can come to an agreement.~ */
  IF ~  Class(Player1,BARD_ALL)
~ THEN GOTO 73
  IF ~  !Class(Player1,BARD_ALL)
~ THEN GOTO 77
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #50223 /* ~Help us fight whatever creatures come through the portal, and we shall give you the deed to the playhouse before we leave. You are a bard and shall use it well.~ */
  IF ~~ THEN REPLY #50240 /* ~That sounds great. Just don't forget to give it to me before you leave. I wouldn't want to have to run around the planes looking for you.~ */ GOTO 13
  IF ~~ THEN REPLY #50264 /* ~Give it to me now, and you shall have my help.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY #50266 /* ~Worry not, <CHARNAME>. I would not betray your trust.~ */
  IF ~~ THEN REPLY #50267 /* ~Nevertheless, I insist that I receive the deed before you open the portal.~ */ GOTO 75
  IF ~~ THEN REPLY #50268 /* ~Just don't forget to give it to me before you leave. I wouldn't want to have to run around the planes looking for you.~ */ GOTO 13
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #50269 /* ~If that is how it must be. Here, take the deed and prepare yourself.~ */
  IF ~~ THEN REPLY #50270 /* ~Good. Let's get this over with.~ */ DO ~GiveItemCreate("misc8f",LastTalkedToBy,0,0,0)
SetGlobal("EvilRaelis","GLOBAL",2)
~ GOTO 13
END

IF ~~ THEN BEGIN 76 // from: 
  SAY #50275 /* ~Traitor! Our trusts and hopes have been pinned on you! You betray us for the deed to a simple playhouse? Have you no morals at all?!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~JAHEIRAJ~ 499
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Keldorn")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~KELDORJ~ 231
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~VICONIJ~ 167
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~AERIEJ~ 176
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN SOLVED_JOURNAL #51915 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained the deed to the playhouse, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 77 // from: 72.1
  SAY #50279 /* ~I have 1,000 Amnian coins left and shall have no more use for them. Would this be sufficient? I shall give them to you once the portal is safe.~ */
  IF ~~ THEN REPLY #50280 /* ~Give them to me now, and I will stay.~ */ GOTO 78
  IF ~~ THEN REPLY #50282 /* ~It will have to do. Let us get this over with.~ */ GOTO 13
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #50283 /* ~Greed has no place amongst friends. Then again, I suppose you have shown that we are not to be friends. Here is the gold.~ */
  IF ~~ THEN REPLY #50284 /* ~Good. Let's get this over with.~ */ DO ~GiveGoldForce(1000)
SetGlobal("EvilRaelis","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 79 // from: 
  SAY #50286 /* ~Traitor! Our trusts and hopes have been pinned on you! You betray us for 1,000 pieces of gold? Have you no morals at all?!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
~ THEN SOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~BOUNHA~ 6
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN SOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~JAHEIRAJ~ 499
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Keldorn")
~ THEN SOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~KELDORJ~ 231
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Viconia")
~ THEN SOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~VICONIJ~ 167
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~AERIEJ~ 176
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN SOLVED_JOURNAL #51916 /* ~Rescue Haer'Dalis and his gem from Mekrath

I have easily obtained 1,000 pieces of gold, at no expense to myself, from the fool Raelis. Did she truly believe that I would risk my life for her?~ */ EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 80 // from: 
  SAY #59399 /* ~Then you are certainly welcome here amongst us, dear child. But I am afraid you have me at somewhat of a loss. Who is this uncle you speak of?~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 211
END

IF ~~ THEN BEGIN 81 // from: 
  SAY #59405 /* ~Ahhh, yes. The young illusionist gnome. I heard he had come to this city, but had not expected him to reply to my letter so quickly. How does he fair, dear elf?~ */
  IF ~  !Dead("quaylem")
!Dead("quayle")
~ THEN EXTERN ~AERIEJ~ 212
  IF ~  OR(2)
Dead("quaylem")
Dead("quayle")
~ THEN EXTERN ~AERIEJ~ 213
END

IF ~~ THEN BEGIN 82 // from: 
  SAY #59408 /* ~If this is so, then yon gnome has done far more than I thought possible. A more than fair return for the time I aided him in Sigil. Will you help me, child?~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 214
END

IF ~~ THEN BEGIN 83 // from: 
  SAY #59410 /* ~We are saddened by his loss. Perhaps one day I will see him in the planes, to thank him for having friends to aid us in his stead. Can you help us, child?~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 214
END

IF WEIGHT #13 ~  !Global("PlanarPrison","GLOBAL",1)
!InPartyAllowDead("HaerDalis")
Dead("Haerdalis")
~ THEN BEGIN 84 // from: 
  SAY #62046 /* ~You do not need to say anything, dear one. I have sensed Haer'Dalis's death prior to your coming. It breaks my heart to see such a free spirit crushed in this poor plane.~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #62047 /* ~A reward for your troubles... and then my troupe and I must return home. There is little else to keep us here. We shall wait until you depart.~ */
  IF ~~ THEN DO ~GiveGoldForce(700)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut62a",FALSE)
~ EXIT
END

IF WEIGHT #14 ~  !Global("PlanarPrison","GLOBAL",1)
InPartyAllowDead("HaerDalis")
Dead("Haerdalis")
~ THEN BEGIN 86 // from: 
  SAY #62048 /* ~Ahhhh... our poor actor numbers in your group. Yet his spark has left him. A tragedy indeed, but one that may yet be fixed... a moment, please.~ */
  IF ~~ THEN DO ~ForceSpell(Myself,DO_NOTHING)
Wait(1)
ApplySpell("HaerDalis",CLERIC_RESURRECTION)
StartDialogNoSet([PC])
~ EXIT
END
