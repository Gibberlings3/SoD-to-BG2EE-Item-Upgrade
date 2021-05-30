// creator  : E:\NearInfinity.jar (v2.1-20180615)
// game     : E:\Baldur's Gate II - Enhanced Edition
// resource : TRGENI01.DLG
// source   : Override\TRGENI01.DLG
// dialog   : Lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~TRGENI01~

IF ~NumTimesTalkedTo(0)
!PartyHasItem("misc8k")~ THEN BEGIN 0 // from: 
  SAY #43410 /* ~Greetings to you, wayfarer! I am Khan Zahraa of Calimshan, a Dao djinn, at your service!~ [TRGENI02] */
  IF ~~ THEN REPLY #43411 /* ~Dao djinn?~ */ GOTO 1
  IF ~~ THEN REPLY #43412 /* ~What would Calishite genies be doing here in Trademeet?~ */ GOTO 2
  IF ~Global("loganjob2","GLOBAL",1)~ THEN REPLY #43413 /* ~I have been sent by Lord Coprith to persuade you to leave.~ */ GOTO 8
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43414 /* ~I have been sent by the town's merchants to persuade you to leave.~ */ GOTO 8
  IF ~!Dead("cefald01")~ THEN REPLY #43415 /* ~What do you know about these animal attacks on the town?~ */ GOTO 10
  IF ~~ THEN REPLY #43416 /* ~Well, I'll be going.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 28.0
  SAY #43417 /* ~The clans of djinn are beyond the ken of most mortals, this I understand. It is a complicated thing, wayfarer. Suffice it to say that I am a djinni of the family Dao, yes?~ */
  IF ~~ THEN REPLY #43418 /* ~What would Calishite genies be doing here in Trademeet?~ */ GOTO 2
  IF ~Global("loganjob2","GLOBAL",1)~ THEN REPLY #43419 /* ~I have been sent by Lord Coprith to persuade you to leave.~ */ GOTO 8
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43420 /* ~I have been sent by the town's merchants to persuade you to leave.~ */ GOTO 8
  IF ~!Dead("cefald01")~ THEN REPLY #43421 /* ~What do you know about these animal attacks on the town?~ */ GOTO 10
  IF ~~ THEN REPLY #43422 /* ~Well, I'll be going.~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 10.1 28.1
  SAY #43423 /* ~Yes, this does beg a question, mortal, does it not? The Dao would not normally choose to make such a place our home, even temporarily, indeed.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.1
  SAY #43424 /* ~Suffice it to say that we have come on a service, hunting a criminal of some repute from Calimshan... a rakshasa by the name of Ihtafeer.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43425 /* ~Rakshasa, if you have never encountered them, are devious shapeshifters and thieves. We have followed this particular prey for quite some months now, and she has eluded us at every turn.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43426 /* ~We have grown tired of this chase. We know that Ihtafeer lies hiding in this area in mortal form, and so the Dao have taken over the trade of this town.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #43427 /* ~We Dao buy all that comes here, you see, and charge prices too high for the mortals to afford... and we will not relinquish it until the mortals find this rakshasa for us.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43428 /* ~Eventually, they shall run out of their food and such, and they will become desperate enough to do it. Or not. Regardless, the hunt is less taxing and far more amusing this way, don't you agree?~ */
  IF ~~ THEN REPLY #43430 /* ~You have monopolized the trade of this town? No, I don't think that's amusing at all!~ */ GOTO 12
  IF ~Global("loganjob2","GLOBAL",1)~ THEN REPLY #43431 /* ~No, I don't. I have been sent by Lord Coprith to persuade you to stop.~ */ GOTO 8
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43432 /* ~No, I don't. I have been sent by the merchants of Trademeet to persuade you to stop.~ */ GOTO 8
  IF ~~ THEN REPLY #43433 /* ~Sounds like you're having fun.~ */ GOTO 13
  IF ~~ THEN REPLY #43448 /* ~Can I take a look at your goods for sale, then?~ */ GOTO 14
  IF ~~ THEN REPLY #43434 /* ~What would you say if I found this rakshasa for you?~ */ GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 0.2 0.3 1.1 1.2 7.1 7.2 10.2 10.3 13.1 28.2 28.3
  SAY #43435 /* ~Ah! At last the mortals have sent an emissary, then. Truly they are of limited intelligence to have waited this long. No doubt they quaver in fear of our power, and rightly so!~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #43436 /* ~But if you have come to plead and persuade, mortal, then your breaths are wasted. The Dao do not intend to leave until we have what we came for.~ */
  IF ~~ THEN REPLY #43437 /* ~Then I shall have to destroy you!~ */ GOTO 16
  IF ~~ THEN REPLY #43438 /* ~And what would that be, exactly?~ */ GOTO 3
  IF ~~ THEN REPLY #43439 /* ~Yes, I have heard... the rakshasa. What would you say if I found this creature for you?~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 0.4 1.3 28.4
  SAY #43440 /* ~Nothing at all. We do not concern ourselves with the affairs of these mortals overmuch. They are being attacked by beasts, are they? Most amusing!~ */
  IF ~~ THEN REPLY #43441 /* ~What did you mean when you called yourself a "Dao"?~ */ GOTO 1
  IF ~~ THEN REPLY #43442 /* ~What are genies doing here in Trademeet, anyway?~ */ GOTO 2
  IF ~Global("loganjob2","GLOBAL",1)~ THEN REPLY #43443 /* ~I have been sent by Lord Coprith to persuade you to leave.~ */ GOTO 8
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43444 /* ~I have been sent by the town's merchants to persuade you to leave.~ */ GOTO 8
  IF ~~ THEN REPLY #43445 /* ~Well, I'll be going.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.5 1.4 10.4 28.6 29.6
  SAY #43447 /* ~If that is what you wish, wayfarer, may you have pleasant diversions in your travels.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.0
  SAY #43449 /* ~That is a very precocious statement, for a mortal. What do you intend to do about it, then, little one? How do you intend to dissuade us from this activity?~ */
  IF ~~ THEN REPLY #43450 /* ~By destroying you!~ */ GOTO 16
  IF ~~ THEN REPLY #43451 /* ~What would you say if I found this rakshasa for you?~ */ GOTO 15
  IF ~~ THEN REPLY #43452 /* ~Er... nothing at all.~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY #43453 /* ~Indeed we are! The Dao grew tired of chasing this little rakshasa... one does not always have to do things the difficult way, after all.~ */
  IF ~~ THEN REPLY #43454 /* ~Still... you've monopolized the trade in this town, and I don't like it.~ */ GOTO 12
  IF ~OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43455 /* ~I have been sent here to persuade you to stop, no matter how much fun you're having.~ */ GOTO 8
  IF ~~ THEN REPLY #43456 /* ~I would like to see what you have for sale.~ */ GOTO 14
  IF ~~ THEN REPLY #43457 /* ~What would you say if I found this rakshasa for you?~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 7.4 13.2 28.5 29.0
  SAY #43458 /* ~Aha! This wayfarer is a potential customer! While you may find our prices high, little mortal, you will not find a better selection in this town, that is certain! Ha ha!~ */
  IF ~~ THEN DO ~StartStore("trgeni01",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.5 9.2 12.1 13.3
  SAY #43459 /* ~Hmmm. I would say, mortal, that I wish the head of this rakshasa returned to me... and once that was done, despite the amusements we have found here, the Dao would return to Calimshan.~ */
  IF ~~ THEN REPLY #43460 /* ~Do you have any idea where this rakshasa might be?~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 9.0 12.0 29.1 30.3
  SAY #43461 /* ~Most excellent! Dao djinn, we have sport attending us today!~ */
  IF ~~ THEN DO ~ActionOverride("trgeni02",Enemy())
ActionOverride("trgeni03",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY #43462 /* ~Ha ha ha! Most bold of you, little mortal, most bold! We are fortunate that you choose to visit us in our tent today, for we have not had our fill of amusement just yet!~ */
  IF ~Global("genielaughs","GLOBAL",0)~ THEN GOTO 18
  IF ~Global("genielaughs","GLOBAL",1)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #43463 /* ~Truly amusing you are, wayfarer. As a payment for our laughter, we award you this ring as a token of our appreciation!~ */
  IF ~~ THEN DO ~GiveItemCreate("ring23",LastTalkedToBy,0,0,0)
SetGlobal("genielaughs","GLOBAL",1)~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #43464 /* ~But off you go, funny mortal. I am sure you have other things to divert your attention than us mere extraplanar merchants. Ho ho!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #43465 /* ~If we knew where she was, we would go and collect her, yes? As a shapechanger, I am sure she hides in the form of yet another tiresome mortal. It is a tactic her kind use often.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43466 /* ~It is doubtful that she and her companions actually reside in the town itself. The appetites and predilections of the rakshasa would not keep her hidden among you for very long.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43467 /* ~But we are sure she is somewhere in the area. Perhaps hidden and preying secretly upon you mortals, as the rakshasa do. But who knows, really? She could be anywhere.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43468 /* ~Why, little mortal? Do you intend to bring Ihtafeer's head to us and end our stay in this dreary little place? We would look forward to a mortal finally ending this business.~ */
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)~ THEN REPLY #43469 /* ~Very well. I will attempt to find this rakshasa and bring her head back to you.~ */ GOTO 24
  IF ~OR(2)
!Global("chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)~ THEN REPLY #43470 /* ~Might there be a reward involved?~ */ GOTO 26
  IF ~Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)~ THEN REPLY #46051 /* ~I need to collect a large amount of coin to rescue a friend... might there be a reward if I did this task for you?~ */ GOTO 26
  IF ~OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43471 /* ~Very well. I will attempt to find this rakshasa and bring her head back to you... if that means you will leave Trademeet.~ */ GOTO 25
  IF ~~ THEN REPLY #43472 /* ~No, I don't think so.~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0 26.0 29.4
  SAY #43473 /* ~Ah, this is a good thing! The Dao wish you well on your hunt, then, and await eagerly the sight of Ihtafeer's head!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",1)~ UNSOLVED_JOURNAL #6584 /* ~Dealing with the Trademeet genies

I have spoken to the djinn, led by Khan Zahraa, and agreed to bring back the head of the rakshasa Ihtafeer. The djinn implied that the shapechanging rakshasa was unlikely to be in Trademeet itself, rather somewhere nearby, perhaps preying on the locals.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.3 26.1 29.5
  SAY #43474 /* ~It is agreed! The Dao wish you well on your hunt, then, and await eagerly the sight of Ihtafeer's head!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",1)~ UNSOLVED_JOURNAL #6584 /* ~Dealing with the Trademeet genies

I have spoken to the djinn, led by Khan Zahraa, and agreed to bring back the head of the rakshasa Ihtafeer. The djinn implied that the shapechanging rakshasa was unlikely to be in Trademeet itself, rather somewhere nearby, perhaps preying on the locals.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1 23.2 29.2 29.3
  SAY #43475 /* ~Oho! You are a demanding little mortal, aren't you? But of course... we Dao have plenty of treasures we could offer you should you do this for us. So, then, what do you say?~ */
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)~ THEN REPLY #43476 /* ~Very well. I will attempt to find this rakshasa and bring her head back to you.~ */ GOTO 24
  IF ~OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43477 /* ~Very well. I will attempt to find this rakshasa and bring her head back to you... if that means you will leave Trademeet.~ */ GOTO 25
  IF ~~ THEN REPLY #43478 /* ~No, I don't think so.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 23.4 26.2 30.4
  SAY #43479 /* ~Ah, this is saddening. You are the most promising mortal to perform this task, however... I will bide my time for your attitude to change on this matter.~ */
  IF ~~ THEN DO ~SetGlobal("zahraarefused","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("zahraajob","GLOBAL",0)
Global("zahraarefused","GLOBAL",0)
!PartyHasItem("misc8k")~ THEN BEGIN 28 // from: 
  SAY #43480 /* ~Ah! It is one of our wayfarers once again. Tell me, what can the Dao do for you this time, my friend?~ [TRGENI07] */
  IF ~~ THEN REPLY #43485 /* ~Why do you call yourselves "Dao"?~ */ GOTO 1
  IF ~~ THEN REPLY #43486 /* ~I would like to know what you're doing here in Trademeet.~ */ GOTO 2
  IF ~Global("loganjob2","GLOBAL",1)~ THEN REPLY #43488 /* ~I have been sent by Lord Coprith to persuade you to leave.~ */ GOTO 8
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43489 /* ~I have been sent by the merchants of Trademeet to persuade you to leave.~ */ GOTO 8
  IF ~!Dead("cefald01")~ THEN REPLY #43490 /* ~What do you know about these animal attacks on the town?~ */ GOTO 10
  IF ~~ THEN REPLY #43491 /* ~I would like to see what you have to sell.~ */ GOTO 14
  IF ~~ THEN REPLY #43492 /* ~Nothing. I'll be going.~ */ GOTO 11
END

IF ~Global("zahraajob","GLOBAL",0)
Global("zahraarefused","GLOBAL",1)
!PartyHasItem("misc8k")~ THEN BEGIN 29 // from: 
  SAY #43496 /* ~Oh? One of our intrepid mortal adventurers approaches the Dao once again. Have you changed your mind, mortal? Will you seek Ihtafeer's head for us?~ [TRGENI08] */
  IF ~~ THEN REPLY #43498 /* ~No, I would just like to see what you have to sell.~ */ GOTO 14
  IF ~~ THEN REPLY #43499 /* ~No... I have come here to destroy you instead!~ */ GOTO 16
  IF ~OR(2)
!Global("chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)~ THEN REPLY #43500 /* ~I would like to know if there is a reward first.~ */ GOTO 26
  IF ~Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)~ THEN REPLY #46052 /* ~I need to collect a large amount of gold to rescue a friend... so I want to know if there is a reward first.~ */ GOTO 26
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)~ THEN REPLY #43501 /* ~Yes. I will attempt to find the rakshasa and return her head to you.~ */ GOTO 24
  IF ~OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)~ THEN REPLY #43502 /* ~Yes. I will attempt to find the rakshasa and return her head to you... if that means you will leave Trademeet.~ */ GOTO 25
  IF ~~ THEN REPLY #43503 /* ~No. I'll just be on my way.~ */ GOTO 11
END

IF ~Global("zahraajob","GLOBAL",1)
!PartyHasItem("misc8k")~ THEN BEGIN 30 // from: 
  SAY #43504 /* ~Mmm... you return to the Dao, mortal, and yet I do not sense the head of the rakshasa Ihtafeer in your possession. Have you perhaps changed your mind?~ [TRGENI09] */
  IF ~~ THEN REPLY #43505 /* ~No, I haven't... I just want to see your services.~ */ GOTO 31
  IF ~Dead("trrak01")~ THEN REPLY #43506 /* ~No, actually. I found and killed Ihtafeer—I just don't have her head with me.~ */ GOTO 32
  IF ~Global("itonatold","GLOBAL",1)~ THEN REPLY #43589 /* ~No, I haven't. In fact, I know where Ihtafeer is.~ */ GOTO 41
  IF ~~ THEN REPLY #43507 /* ~Yes, I have. I've decided to destroy you instead!~ */ GOTO 16
  IF ~~ THEN REPLY #43508 /* ~Yes, actually. I don't have the time to do this for you.~ */ DO ~SetGlobal("zahraajob","GLOBAL",0)~ GOTO 27
  IF ~~ THEN REPLY #43509 /* ~No, I haven't. I'll be going now.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #43510 /* ~Ah, of course! Our goods are always available to an intrepid mortal adventurer!~ */
  IF ~~ THEN DO ~StartStore("trgeni01",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #43511 /* ~Hmm... this is promising news, mortal. Promising indeed. But if you wish your reward, you must bring the head of the rakshasa to us. We shall await its delivery!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #43512 /* ~Wondrous! Find the dreaded rakshasa, mortal... bring us her head, and the Dao shall be pleased!~ */
  IF ~~ THEN EXIT
END

IF ~Global("zahraajob","GLOBAL",1)
PartyHasItem("misc8k")~ THEN BEGIN 34 // from: 
  SAY #43513 /* ~Ahhh... I sense that you possess the head of our little Ihtafeer with you as agreed! Astounding, even for a mortal!~ [TRGENI10] */
  IF ~~ THEN DO ~TakePartyItem("MISC8K")
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #43514 /* ~Here, then, is a scimitar that you may find useful. It has been mine own for some time, but I am sure I shall find another. Use it well, wayfarer!~ */
  IF ~~ THEN DO ~GiveItemCreate("bdsw1h08",LastTalkedToBy,0,0,0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 40.0
  SAY #43515 /* ~As for you, my little Ihtafeer, you have been a very naughty creature eluding us as you have! What a brave mortal to bring you to us!~ */
  IF ~Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)~ THEN DO ~EraseJournalEntry(6583)
EraseJournalEntry(6584)
EraseJournalEntry(6585)
EraseJournalEntry(10103)
EraseJournalEntry(10125)
EraseJournalEntry(16335)
EraseJournalEntry(23341)~ SOLVED_JOURNAL #11775 /* ~Dealing with the Trademeet genies

Khan Zahraa, the head of the Dao djinn, was quite pleased to receive the head of the rakshasa. It was all they were in Trademeet for, apparently, and they immediately left for Calimshan.~ */ GOTO 37
  IF ~OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)~ THEN DO ~EraseJournalEntry(6583)
EraseJournalEntry(6584)
EraseJournalEntry(6585)
EraseJournalEntry(10103)
EraseJournalEntry(10125)
EraseJournalEntry(16335)
EraseJournalEntry(23341)~ SOLVED_JOURNAL #11775 /* ~Dealing with the Trademeet genies

Khan Zahraa, the head of the Dao djinn, was quite pleased to receive the head of the rakshasa. It was all they were in Trademeet for, apparently, and they immediately left for Calimshan.~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #43516 /* ~Come, then, my Dao... we return to Calimshan and fulfill our service!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",2)
SetGlobal("geniesgone","GLOBAL",1)
AddexperienceParty(10000)
ActionOverride("trgeni02",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni02",Wait(1))
ActionOverride("trgeni02",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni02",DestroySelf())
ActionOverride("trgeni03",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni03",Wait(1))
ActionOverride("trgeni03",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni03",DestroySelf())
CreateVisualEffectObject("SPDISPMA",Myself)
Wait(1)
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #43517 /* ~Come, then, my Dao... we return to Calimshan and fulfill our service! And you, mortal, may tell your patrons that their town is free of our little terror, yes? We shall not return.~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",2)
SetGlobal("geniesgone","GLOBAL",1)
AddexperienceParty(10000)
ActionOverride("trgeni02",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni02",Wait(1))
ActionOverride("trgeni02",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni02",DestroySelf())
ActionOverride("trgeni03",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni03",Wait(1))
ActionOverride("trgeni03",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni03",DestroySelf())
CreateVisualEffectObject("SPDISPMA",Myself)
Wait(1)
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()
~ EXIT
END

IF ~Global("zahraajob","GLOBAL",0)
PartyHasItem("misc8k")~ THEN BEGIN 39 // from: 
  SAY #43518 /* ~Hmm. I see you have the head of our quarry with you... the head of the rakshasa, Ihtafeer! Whether you knew this or not, mortal, this is our entire reason for being in this dreary place!~ [TRGENI11] */
  IF ~~ THEN DO ~TakePartyItem("misc8k")
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #43519 /* ~How wondrous that you have brought this to us on a silver platter, as it were! I shall relieve you of it now and replace it with something that shall serve you better, I think!~ */
  IF ~~ THEN DO ~GiveItemCreate("bdsw1h08",LastTalkedToBy,0,0,0)
~ GOTO 36
END

IF ~~ THEN BEGIN 41 // from: 30.2
  SAY #43590 /* ~*sigh* I thought I had made this clear earlier, mortal. You short-lived creatures do have such difficulty with your hearing.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #43591 /* ~We have no intention of chasing down this crude rakshasa ourselves. It is much more preferable to wait here and amuse ourselves and have another do it for us.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #43592 /* ~So if you know where the ruhk lies, excellent! I suggest you go forth and retrieve her head for us, yes? We shall await your return!~ */
  IF ~~ THEN EXIT
END
