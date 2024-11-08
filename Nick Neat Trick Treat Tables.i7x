Version 1/241026 of Nick Neat Trick Treat Tables by Andrew Schultz begins here.

"This lays out the major tables for Nick Neat Trick Treat for easy indexing and searching, as well as any rules related to the tables."

volume stubs

to rm-and (th - a thing) and (nu - a number):
	now eyevalue of location of player is nu;
	now eyevalue of th is nu;

to declue (th - a thing):
	now eyevalue of th is -2;

to declue-here:
	now eyevalue of location of player is -2;

to declue-rm (th - a thing):
	now eyevalue of th is -2;
	declue-here;

volume main table

table of verb checks [the order of things to solve is roughly alphabetical, so the lurking lump always gives you the best value, but this is subverted by if one rhyme pushes the game/story further than the others. So Leave Lo is first. Sassed can be anywhere for the bonus point, since the lump explicitly avoids bonus points.]
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"ick"	"eat"	--	--	false	true	true	false	SickSeat	vc-ick-eat rule	vr-ick-eat rule	--	--
"pick"	"pete"	--	--	false	true	true	false	SickSeat	vc-pick-pete rule	vr-pick-pete rule	--	"You can [b]PICK PETE[r] as a companion [once-now of vc-pick-pete rule] you've finished dinner."
"treat"	"tree"	--	--	false	true	true	false	SickSeat	vc-treat-tree rule	vr-treat-tree rule	--	--
"donor"	"douse"	--	--	false	true	false	false	HonerHouse	vc-donor-douse rule	vr-donor-douse rule	--	--
"loner"	"louse"	"loaner"	--	false	true	true	false	HonerHouse	vc-loner-louse rule	vr-loner-louse rule	--	--
"moaner"	"mouse"	--	--	false	true	true	false	HonerHouse	vc-moaner-mouse rule	vr-moaner-mouse rule	--	--
"get"	"ghoul"	--	--	false	true	true	false	strick street	vc-get-ghoul rule	vr-get-ghoul rule	--	"You can [b]GET GHOUL[r] [once-now of vc-get-ghoul rule] you have what you need for a ritual and are in the right place."
"shove"	"shook"	--	--	false	true	true	false	strick street	vc-shove-shook rule	vr-shove-shook rule	--	"You can [b]SHOVE SHOOK[r] [once-now of vc-shove-shook rule] you have what you need for a ritual and are in the right place."
"pluralled|pluraled"	"plea"	--	--	false	true	true	false	strick street	vc-pluraled-plea rule	vr-pluraled-plea rule	--	"You can make a [b]PLURALED PLEA[r] [once-now of vc-pluraled-plea rule] you have what you need for a ritual and are in the right place."
"plank"	"pling"	--	--	false	true	true	false	rank ring	vc-plank-pling rule	vr-plank-pling rule	--	--
"blank"	"bling"	--	--	false	true	true	false	rank ring	vc-blank-bling rule	vr-blank-bling rule	--	"You can find [b]BLANK BLING[r] [once-now of vc-blank-bling rule] you have discovered where it's been hidden."
"thank"	"thing"	--	--	false	true	true	false	rank ring	vc-thank-thing rule	vr-thank-thing rule	--	"You can [b]THANK THING[r] [once-now of vc-thank-thing rule] you have gotten a gift to be thankful for."
"sank"	"sing"	--	--	false	true	false	false	rank ring	vc-sank-sing rule	vr-sank-sing rule	--	--
"fun"	"foam"	--	--	false	true	true	false	hun home	vc-fun-foam rule	vr-fun-foam rule	--	--
"ton"	"tome"	--	--	false	true	true	false	hun home	vc-ton-tome rule	vr-ton-tome rule	--	"You can summon a [b]TON TOME[r] [once-now of vc-ton-tome rule] it can land softly."
"pun"	"poem"	--	--	false	true	true	false	hun home	vc-pun-poem rule	vr-pun-poem rule	--	"You can summon a [b]PUN POEM[r] [once-now of vc-pun-poem rule] there's a thing or place where it can be recorded."
"done"	"dome"	--	--	false	true	true	false	hun home	vc-done-dome rule	vr-done-dome rule	--	"You can claim [b]DONE DOME[r] [once-now of vc-done-dome rule] the place is a bit cheerier."
"run"	"roam"	--	--	false	true	true	false	hun home	vc-run-roam rule	vr-run-roam rule	--	"You can [b]RUN ROAM[r] [once-now of vc-run-roam rule] you need to rebel against feeling stuck."
"a"	"gnome"	--	--	false	true	false	false	hun home	vc-a-gnome rule	vr-a-gnome rule	--	--
"be"	"bold"	--	--	false	true	true	false	TreeTrolled	vc-be-bold rule	vr-be-bold rule	--	--
"re"	"rolled"	--	--	false	true	true	false	TreeTrolled	vc-re-rolled rule	vr-re-rolled rule	"re rolled" or "rerolled"	"You can [b]REROLLED[r] [once-now of vc-re-rolled rule] you have committed to something but want to do it a bit better."
"me"	"mold"	--	--	false	true	true	false	TreeTrolled	vc-me-mold rule	vr-me-mold rule	--	"You can [b]ME MOLD[r] [once-now of vc-me-mold rule] you feel confident enough in your artistic ability."
"see"	"sold"	--	--	false	true	true	false	TreeTrolled	vc-see-sold rule	vr-see-sold rule	--	"You can [b]SEE SOLD[r] [once-now of vc-see-sold rule] you have a creation you can swap."
"wee"	"wold"	--	--	false	true	false	false	TreeTrolled	vc-wee-wold rule	vr-wee-wold rule	--	--
"dandy"	"ding"	--	--	false	true	true	false	eee ing	vc-dandy-ding rule	vr-dandy-ding rule	--	--
"andy|sandy|mandy|landy"	"ng|tsing|hsing|sing|ming|ling"	--	--	false	true	true	false	eee ing	vc-andy-ng rule	vr-andy-ng rule	"andy ng" or "sandy sing/tsing/hsing" or "mandy ming" or "landy ling"	"You can recall [b]ANDY NG[r] or any other classmate [once-now of vc-andy-ng rule] you have hit it off with Randy."
"weakie"	"way"	--	--	false	true	true	false	leaky ley	vc-weakie-way rule	vr-weakie-way rule	--	--
"creaky"	"cray"	--	--	false	true	true	false	leaky ley	vc-creaky-cray rule	vr-creaky-cray rule	--	--
"grit"	"grins"	--	--	false	true	true	false	leaky ley	vc-grit-grins rule	vr-grit-grins rule	--	--
"streaky"	"stray"	--	--	false	true	true	false	leaky ley	vc-streaky-stray rule	vr-streaky-stray rule	--	"You can call out a [b]STREAKY STRAY[r] [once-now of vc-streaky-stray rule] combat has gotten really heated."
"slick"	"sleet"	--	--	false	true	true	false	leaky ley	vc-slick-sleet rule	vr-slick-sleet rule	--	"You can cast [b]SLICK SLEET[r] [once-now of vc-slick-sleet rule] your final enemy is up."
"fair"	"fine"	--	--	false	true	true	false	Lair Line	vc-fair-fine rule	vr-fair-fine rule	--	--
"theyre|there"	"thine"	--	--	false	true	false	false	Lair Line	vc-theyre-thine rule	vr-theyre-thine rule	--	--
"green"	"grid"	--	--	false	true	true	false	lair line	vc-green-grid rule	vr-green-grid rule	--	--
"dare"	"dine"	--	--	false	true	true	false	Lair Line	vc-dare-dine rule	vr-dare-dine rule	--	"You can [b]DARE DINE[r] [once-now of vc-dare-dine rule] you have passed out the candy equitably and have a way home."
"share"	"shine"	--	--	false	true	false	false	lair line	vc-share-shine rule	vr-share-shine rule	--	--

chapter sick seat scoring

a goodrhyme rule (this is the vc-ick-eat rule):
	if player is not in SickSeat, unavailable;
	if sco-ick-eat is true:
		vcal "You've earned enough brownie points. Time to prep to go look for candy.";
		already-done;
	ready;

this is the vr-ick-eat rule:
	now sco-ick-eat is true;
	say "You mouth the phrase to yourself. You think it. It wouldn't do to say it aloud. You worry you're getting a bit too old for either saying the phrase or disliking vegetables. But a part of you hopes you always hate certain vegetables. You have to stand for SOMETHING, after all.[paragraph break]But the vegetables aren't bad once you start in on them. They just don't compare to trick or treat candy.[paragraph break]You have a lot of friends to go out with. But who's the best fit for tonight? Well, you've sort of already chosen. Just got to remember whom to, uh, choose.";
	rm-and nick and 44;
	now eyevalue of sick seat is 44;

a goodrhyme rule (this is the vc-pick-pete rule):
	if sco-ick-eat is false:
		vcp "Pete will be fun to trick-or-treat with, but first, those vegetables. Your parents aren't wasting them.";
		not-yet;
	if sco-pick-pete is true:
		vcal "You already picked Pete[if sco-treat-tree is true] and met up.[else]. Where to meet him?[end if]";
		already-done;
	ready;

this is the vr-pick-pete rule:
	now sco-pick-pete is true;
	say "You message Pete on your phone. Pete P. He has a long name nobody can quite pronounce. Well, some kids do, and they get called show-offs. He's not ashamed of his long name. He just understands. You know how to spell it and pronounce it.";
	say "[line break]The message back: 'Meet me. -- Pete P.'";
	say "[line break]But where?";
	now player has meet me pete p;
	declue-rm sick seat;
	rm-and Nick and 55;

a goodrhyme rule (this is the vc-treat-tree rule):
	if player does not have meet me pete p, unavailable;
	if sco-treat-tree is true:
		vcal "[if player is in lair line]You can't see it right now, but the tree is okay again, thanks to you[else if eee ing is visited]You hope the tree has healed, but you have more important business right now[else]You can't change the treat tree back until you get to the root of all this[end if].";
		already-done;
	ready;

this is the vr-treat-tree rule:
	now sco-treat-tree is true;
	say "Meeting by the treat tree should be easy, but the area is much darker than you remember. The tree even starts talking ... someone or something has cast a spell on it, so it can't enjoy Halloween, or it can't help others to. It's a trolled tree now. It nudges you north to a neighborhood you didn't know existed.[paragraph break]And you're pretty sure Strick Street isn't an avenue, as strick isn't really a word, but sadly it fits in here.[paragraph break]How to make things un-struck?";
	move player to Strick Street;

chapter strick street scoring

a goodrhyme rule (this is the vc-pluraled-plea rule):
	if player does not have whirled key, unavailable;
	if player is not in strick street:
		vcp "This is not the right place for such a plea.";
		not-yet;
	ready;

this is the vr-pluraled-plea rule:
	now sco-pluraled-plea is true;
	ritual-item whirled key;

a goodrhyme rule (this is the vc-shove-shook rule):
	if player does not have book, unavailable;
	if player is not in strick street:
		vcp "There's nothing for the book to shake here.";
		not-yet;
	ready;

this is the vr-shove-shook rule:
	now sco-shove-shook is true;
	ritual-item book;

a goodrhyme rule (this is the vc-get-ghoul rule):
	if player does not have jewel, unavailable;
	if player is not in strick street:
		vcp "That'd seem to work, in the 'get rid of' sense, but perhaps it should be part of a ritual.";
		not-yet;
	if ncp < 3:
		vcp "[The plate] shakes a bit. Hmm. It has three slots, but you only seem to have [ncp in words] thing[if ncp > 1]s[end if] to put into it.";
		not-yet;
	ready;

this is the vr-get-ghoul rule:
	now sco-get-ghoul is true;
	ritual-item jewel;

to ritual-item (th - a thing):
	say "You place [the th] in the compartment in [the plate] where it fits. The compartment closes.";
	moot th;
	say "[line break]";
	if incant-score is 3:
		say "[The plate] shatters to reveal not only a [face] but also passage east!";
		moot plate;
		move fate face to strick street;
	else if incant-score is 2:
		say "More rumbling. Clear cracks appear in [the plate].";
	else:
		say "[The plate] shakes a bit. You think you see a crack in it.";

chapter Honer House scoring

a goodrhyme rule (this is the vc-donor-douse rule):
	if player is not in HonerHouse, unavailable;
	if sco-donor-douse is true:
		vcal "Don't get greedy!";
		already-done;
	ready;

this is the vr-donor-douse rule:
	now sco-donor-douse is true;
	say "You cheekily ask for more candy, even though there doesn't appear to be anyone here. A voice promises you it will be waiting at game's end.";

a goodrhyme rule (this is the vc-loner-louse rule):
	if player is not in HonerHouse, unavailable;
	if sco-loner-louse is true:
		vcal "Don't rub it in. Move on!";
		already-done;
	ready;

this is the vr-loner-louse rule:
	now sco-loner-louse is true;
	say "You fight back at any imaginary undead who, okay, they are lonely, and maybe they died gruesomely, but that doesn't excuse them being mean and scaring people.";
	check-house-progress;

a goodrhyme rule (this is the vc-moaner-mouse rule):
	if player is not in HonerHouse, unavailable;
	if sco-moaner-mouse is true:
		vcal "The mouse has been properly chastised.";
		already-done;
	ready;

this is the vr-moaner-mouse rule:
	now sco-moaner-mouse is true;
	say "You locate the source of scary moaning, which is not a very big mouth. The truth sets one free from fear!";
	check-house-progress;

to check-house-progress:
	say "[line break]";
	if house-crit-score is 1:
		say "You sense there is one more thing you need to do here.";
	else:
		if house-score is 3:
			say "Can't be more to do here. You even got some candy!";
		else:
			say "Perhaps you could do some trick-or-treating with an impromptu phrase. You want LOTS of candy, if you can. You've earned it! You passed this introductory bit!";

chapter rank ring scoring

a goodrhyme rule (this is the vc-plank-pling rule):
	if player is not in rank ring, unavailable;
	if sco-plank-pling is true:
		vcal "You already found the odd-sounding plank and what was behind it!";
		already-done;
	ready;

this is the vr-plank-pling rule:
	now sco-plank-pling is true;
	say "You search around. Most planks give odd thuds, but one -- ah, a pling! There must be something under it, or them. But what?";

a goodrhyme rule (this is the vc-blank-bling rule):
	if player is not in rank ring, unavailable;
	if sco-plank-pling is false:
		vcp "Nothing will materialise just because you want it to! Search for it first.";
		not-yet;
	if sco-blank-bling is true:
		vcal "You already acquired bling!";
		already-done;
	ready;

this is the vr-blank-bling rule:
	now sco-blank-bling is true;
	say "Hooray! You found some blank bling! Gut you feel guilty just taking it. Who or what left it for you?";

a goodrhyme rule (this is the vc-thank-thing rule):
	if player is not in rank ring, unavailable;
	if sco-blank-bling is false:
		vcp "You have found nothing to be grateful for, yet.";
		not-yet;
	if sco-thank-thing is true:
		vcal "You've been taught to be polite, but that'd be overkill.";
		already-done;
	ready;

this is the vr-thank-thing rule:
	now sco-thank-thing is true;
	say "A weird wraith sighs. You feel like you have earned the jewel, and you take it without any incident.";
	if sco-sank-sing is true:
		say "[line break]It also appreciates your 'Sank? Sing!' advice from earlier.";
	else:
		say "[line break]The weird wraith still looks a bit sad, though. Perhaps positive advice, however trivial and generic, would be nice, if you can think of it. But you DO have a quest to get on with.";
	now eyevalue of rank ring is 2044;
	now player has jewel;

a goodrhyme rule (this is the vc-sank-sing rule):
	if player is not in rank ring, unavailable;
	if sco-sank-sing is true:
		vcal "More than once is too cheery!";
		already-done;
	ready;

this is the vr-sank-sing rule:
	now sco-sank-sing is true;
	say "Well, whatever works. You engage in some harmless positivity. [if sco-thank-thing is false]There's no audience yet, but when there is, you'll be ready[else]The thing seems to appreciate it[end if].";

chapter hun home scoring

a goodrhyme rule (this is the vc-fun-foam rule):
	if player is not in hun home, unavailable;
	if sco-fun-foam is true:
		vcal "Too much fun foam would be suffocating.";
		already-done;
	ready;

this is the vr-fun-foam rule:
	now sco-fun-foam is true;
	say "Pop! Fun foam appears! Weird, but way less creepy-weird than, well, the hun home.";
	move fun foam to hun home;

a goodrhyme rule (this is the vc-ton-tome rule):
	if player is not in hun home, unavailable;
	if sco-fun-foam is false:
		vcp "But the ton-tome would land with such a crash if it appeared! You need a soft place for it to rest.";
		not-yet;
	if sco-ton-tome is true:
		vcal "Two ton tomes are more than enough! Well, one is, in its own way.";
		already-done;
	ready;

this is the vr-ton-tome rule:
	now sco-ton-tome is true;
	say "A very, very big and dark and intimidating book, which puts scary high school textbooks to shame, pops into existence and falls onto the fun foam.";
	move ton tome to hun home;

a goodrhyme rule (this is the vc-pun-poem rule):
	if player is not in hun home, unavailable;
	if sco-ton-tome is false:
		vcp "There is nowhere for poems to be written, to bring joy where there might be darkness!";
		not-yet;
	if sco-pun-poem is true:
		vcal "Too many puns get old and stale.";
		already-done;
	ready;

this is the vr-pun-poem rule:
	now sco-pun-poem is true;
	say "The ton tome glows a bit! It seems less awful now. In fact, some of the more evil pages crumble and blow away. The book's less heavy now.";
	rm-and foam and 44;
	now eyevalue of tome is 44;

a goodrhyme rule (this is the vc-done-dome rule):
	if player is not in hun home, unavailable;
	if sco-pun-poem is false:
		vcp "You haven't cheered the place up enough to consider it 'done!'";
		not-yet;
	if sco-done-dome is true:
		vcal "You already certified completing renovation of the home/dome!";
		already-done;
	ready;

this is the vr-done-dome rule:
	now sco-done-dome is true;
	say "Now that the place is cheered up, you feel obliged to stay here, forced to be happy. As if a voice says 'What more could you want?'[paragraph break]Many pages of the erstwhile Ton Tome blow away. What's left is a [book], which seems sappy. Still, you pick it up, and you feel frozen to the spot. It's perfect here, right? Why would you want to leave? Why not enjoy what you've created?";
	now player has book;
	rm-and foam and 34;
	now eyevalue of tome is 34;

a goodrhyme rule (this is the vc-run-roam rule):
	if player is not in hun home, unavailable;
	if sco-done-dome is false:
		vcp "It's a bit creepy in here, but no need to run away ... yet. Still, you file the idea for later.";
		not-yet;
	if sco-run-roam is true:
		vcal "You already exhorted yourself to get out! You need no magicking to do so.";
		already-done;
	ready;

this is the vr-run-roam rule:
	now sco-run-roam is true;
	say "You exhort yourself to get going, and not just get going, but to see new places. And yes, the hun home does feel a bit fake. You notice a few things off about it, and you feel okay exiting now.";
	if sco-a-gnome is false:
		say "[line break]And yet ... and yet ... you could call in someone appropriate to keep watch over the more comfy home you created.";
	else:
		say "[line break]The (a) gnome you called earlier will keep the Hun Home in its much nicer state from here on out.";
	if sco-a-gnome is true:
		declue-rm fun foam;
		declue ton tome;
	else:
		rm-and fun foam and 2015;
		now eyevalue of ton tome is 2015;

a goodrhyme rule (this is the vc-a-gnome rule):
	if player is not in hun home, unavailable;
	if sco-a-gnome is true:
		vcal "You already summoned a gnome!";
		already-done;
	ready;

this is the vr-a-gnome rule:
	now sco-a-gnome is true;
	say "Yes, yes, that's a good idea, have a gnome for upkeep once everything's fixed here. But they shouldn't be here right now, you'd guess.";
	if sco-run-roam is true:
		declue-rm fun foam;
		declue ton tome;

chapter TreeTrolled scoring

a goodrhyme rule (this is the vc-be-bold rule):
	if player is not in TreeTrolled, unavailable;
	if sco-be-bold is true:
		vcal "You are bold enough now.";
		already-done;
	ready;

this is the vr-be-bold rule:
	now sco-be-bold is true;
	say "You feel less fearful now. And yet -- you went about it pretty well, but you could feel even less fearful if things are done right.";
	rm-and Tree Trolled and 10026;

a goodrhyme rule (this is the vc-re-rolled rule):
	if player is not in TreeTrolled, unavailable;
	if sco-be-bold is false:
		vcp "But you haven't tried anything to feel less scared!";
		not-yet;
	if sco-re-rolled is true:
		vcal "Nah, you're doing well enough. Don't push your luck.";
		already-done;
	ready;

this is the vr-re-rolled rule:
	now sco-re-rolled is true;
	say "Yes! That's more like it. It maybe wasn't that brave to look for ways to be more brave, but you did so, and you found them. The tree, trolled, almost seems to smile. 'I need a piece of you, or an effigy of you, or something. Then I will give you something back.'[paragraph break]Weird, but maybe you're in luck. The ground is soft here ... maybe you can make something of it.";
	rm-and Tree Trolled and 24;

a goodrhyme rule (this is the vc-me-mold rule):
	if player is not in TreeTrolled, unavailable;
	if sco-re-rolled is false:
		vcal "You have no reason to make an effigy of yourself yet!";
		not-yet;
	if sco-me-mold is true:
		vcp "One you-doll is enough.";
		already-done;
	ready;

this is the vr-me-mold rule:
	now sco-me-mold is true;
	say "Ah, there we go! It looks ... vaguely like you, you guess. Sadly, Mart Made-Art-Aid, that cool summer camp counselor (as you called him,) isn't here to give pointers.[paragraph break]It was work, though, and you're not giving it away for free. The tree, trolled, indicates it wants to engage in commerce, of a sort.";
	rm-and Tree Trolled and 34;

a goodrhyme rule (this is the vc-see-sold rule):
	if player is not in TreeTrolled, unavailable;
	if sco-me-mold is false:
		vcp "You have nothing to perform a transaction with!";
		not-yet;
	if sco-see-sold is true:
		vcal "The deal has already been clinched.";
		already-done;
	ready;

this is the vr-see-sold rule:
	now sco-see-sold is true;
	say "The tree is impressed by your confidence. It swaps: the key, cold, for the me-mold. Perhaps you have a future career as an artist! Or just a side hustle.[paragraph break]But the key quickly warms up when you grab it! And my, what an odd shape it is, too. Whirled, curled. A whirled (whee) curled key!";
	if sco-wee-wold is false:
		say "[line break]There doesn't seem to be anything else to say. Though the tree does seem to want to chat. Perhaps about distant lands. But where? It's still feeling trolled, so it won't want to start the conversation.";
	now player has whirled key;
	declue-rm trolled tree;
	if sco-wee-wold is true:
		declue-rm tree;
	else:
		rm-and tree and 2034;

a goodrhyme rule (this is the vc-wee-wold rule):
	if player is not in TreeTrolled, unavailable;
	if sco-wee-wold is true:
		vcal "You might get tired of the story, and so might the tree.";
		already-done;
	ready;

this is the vr-wee-wold rule:
	now sco-wee-wold is true;
	say "At your suggestion, [the tree] launches into stories of the far-off Wee Wold. After a while, it apologizes for taking so long. But really, you don't mind. You're glad you took the time, even if it doesn't further your quest.";
	if sco-see-sold is true:
		declue-rm tree;

chapter eee ing scoring

a goodrhyme rule (this is the vc-dandy-ding rule):
	if player is not in eee ing, unavailable;
	if sco-dandy-ding is true:
		vcal "You already got Randy's attention!";
		already-done;
	ready;

this is the vr-dandy-ding rule:
	now sco-dandy-ding is true;
	say "'There you go!' says [Randy]. 'Just had to make sure, you know. Oh, one other thing -- can you call up a classmate? Maybe someone you don't know that well, just by name. I think you have a few who would work really well with me.'";

a goodrhyme rule (this is the vc-andy-ng rule):
	if player is not in eee ing, unavailable;
	if sco-dandy-ding is false:
		now classmate-asked is called;
		now classmate-chosen is classmate-asked;
		vcp "You remember [classmate-asked], whom you don't know very well. Maybe you should've gotten to know them better. They seemed okay. Maybe you could, very shortly, with [randy] to introduce you. You need [randy]'s trust, first, though.";
		not-yet;
	if sco-andy-ng is true: [this code is probably not reached since you are kicked to the next room right away]
		if classmate-asked is classmate-chosen:
			vcal "Don't worry. [classmate-chosen] will be along when needed.";
		else:
			vcal "[if classmate-asked is called]You already suggested [classmate-asked][else]Yes, [classmate-asked] would work as well[end if]. But [classmate-chosen] will bring the others along.";
		now classmate-asked is called;
		already-done;
	ready;

this is the vr-andy-ng rule:
	now sco-andy-ng is true;
	say "[randy] says, 'Yes! They seem like someone quite worthy. They and their friends will be a big help.' You protest you don't know them that well so they might not help. [Randy] assures you that people do help each other, just because, and you can get to know each other, later.";
	wfak;
	say "But thinking a bit more, you feel sort of bad. You always felt the Asian kids were all just sort of there and similar, but maybe they thought the same way about you and Pete P. You think of how they are different, despite similar names ... Sandy, Andy, Landy, Mandy. Perhaps they find your last names as odd as you find theirs. You never hated them, but you really tried to be friends.";
	wfak;
	say "Perhaps the shared experience of the final fight will help. Between you and Pete and your classmates and Randy.";
	now classmate-chosen is classmate-asked;
	move player to Leaky Ley;

chapter leaky ley scoring

a goodrhyme rule (this is the vc-grit-grins rule):
	if player is not in leaky ley, unavailable;
	if sco-grit-grins is true:
		vcal "You already grinned grittily to stand up to the twits at once. Now look at them individually.";
		already-done;
	ready;

this is the vr-grit-grins rule:
	now sco-grit-grins is true;
	say "You grin, fiercely you hope, as if to say 'I've put up with worse.' And you have, but it's the eye contact and involuntary eye-roll that really gets them.";
	declue twit twins;
	check-final-boss 0;

to optional-score (ru - a rule):
	repeat through table of verb checks:
		if check-rule entry is ru:
			if idid entry is false:
				now core entry is false;

a goodrhyme rule (this is the vc-weakie-way rule):
	if player is not in leaky ley, unavailable;
	if sco-weakie-way is true:
		vcal "Insults lose zing the second time around.";
		already-done;
	ready;

this is the vr-weakie-way rule:
	now sco-weakie-way is true;
	say "You worry slightly that putting the adjective second may deduct style points, but it turns out emphasizing it leaves them taken aback.";
	optional-score vc-creaky-cray rule;
	check-final-boss 64;

a goodrhyme rule (this is the vc-creaky-cray rule):
	if player is not in leaky ley, unavailable;
	if sco-creaky-cray is true:
		vcal "Insults lose zing the second time around.";
		already-done;
	ready;

this is the vr-creaky-cray rule:
	now sco-creaky-cray is true;
	say "You totally justifiably DARVO them, even though you aren't aware of the acronym. You exaggerate how senseless it is to ruin younger kids['] halloween, and you wonder if their lives are so empty they'll be doing this every year.";
	optional-score vc-weakie-way rule;
	check-final-boss 63;

to check-final-boss (eyenum - a number):
	if twin-score is 2:
		say "They run away, shaking their fingers at you. 'You'll be sorry! You made us get the big boss!'[paragraph break]And thus begins the final fight, a freaky fray. Reeky Ray, who holds a reeky ray that is very, very accurate. How to disrupt it, or him?";
		moot twit twins;
		moot cheeky che;
		moot cliquey clay;
		move reeky ray to leaky ley;
		move freaky fray to leaky ley;
		now eyevalue of leaky ley is 75;
	else if eyenum is not 0:
		rm-and cheeky che and eyenum;
		now eyevalue of cliquey clay is eyenum;

a goodrhyme rule (this is the vc-streaky-stray rule):
	if player is not in leaky ley, unavailable;
	if reeky ray is not touchable:
		vcp "There's nothing to make streaky or stray, yet.";
		not-yet;
	if sco-streaky-stray is true:
		vcal "You already made the reeky ray wobble a bit! Now to make Reeky Ray himself wobble.";
		already-done;
	ready;

this is the vr-streaky-stray rule:
	now sco-streaky-stray is true;
	say "Reeky Ray begins misfiring. 'What? It can't be!'";
	check-fight-end;

a goodrhyme rule (this is the vc-slick-sleet rule):
	if sco-slick-sleet is true:
		vcal "But you already created slick sleet!";
		already-done;
	if reeky ray is not touchable:
		vcp "Sleet won't help you here, yet.";
		not-yet;
	ready;

this is the vr-slick-sleet rule:
	now sco-slick-sleet is true;
	say "Reeky Ray begins tripping over himself. 'What? It can't be!'";
	declue Nick;
	check-fight-end;

to check-fight-end:
	say "[line break]";
	if ray-score is 1:
		say "But it can! Reeky Ray shakes his head, then picks himself up. Maybe one more blow will knock him out!";
	else:
		say "But it can, again! And this time, having lost control of himself and his weapon, Reeky Ray collapses, exhausted. 'Halloween is stupid! Find more practical things to do! Chocolate is bad for you!' But nobody is listening.[paragraph break]Randy has something to show you, though.";
		move player to Lair Line;

chapter Lair Line scoring

a goodrhyme rule (this is the vc-green-grid rule):
	if player is not in lair line, unavailable;
	if sco-green-grid is true:
		vcal "You already got a [kid] to find a portal back!";
		already-done;
	ready;

this is the vr-green-grid rule:
	now sco-green-grid is true;
	say "[The kid], awed with how you took down Reeky Ray, mutters there's no way they can do this. But you know there are some things some people are better suited for than others. You ask them to give it a try. A gren grid glows--and beneath it you see your neighborhood![paragraph break]But you don't want to jump through right away. You could stay out a bit too late, talking with friends. And what goes well with conversation?";
	declue kid;

a goodrhyme rule (this is the vc-fair-fine rule):
	if player is not in Lair Line, unavailable;
	if sco-fair-fine is true:
		vcal "You already divided things equitably!";
		already-done;
	ready;

this is the vr-fair-fine rule:
	now sco-fair-fine is true;
	say "You at first almost spit it out -- then you realize, everyone else deserves it, too. You can't eat ALL that.";

a goodrhyme rule (this is the vc-theyre-thine rule):
	if player is not in Lair Line, unavailable;
	if sco-theyre-thine is true:
		vcal "You decide not to overdo the role-playing.";
		already-done;
	ready;

this is the vr-theyre-thine rule:
	now sco-theyre-thine is true;
	say "With a small flourish, you hand a few candies to kids dressed in medieval costumes[if sco-fair-fine is false], but really, you still have a lot[else], making things even fairer[end if]."

a goodrhyme rule (this is the vc-dare-dine rule):
	if player is not in Lair Line, unavailable;
	if dine-score < 2:
		vcp "Claire Cline notes it's not time to have a celebratory meal, yet. Arrange for [if sco-fair-fine is false]equitable dining[end if][if dine-score is 0] and [end if][if sco-green-grid is false]a way home[end if], first.";
		not-yet;
	ready;

this is the vr-dare-dine rule:
	now sco-dare-dine is true;
	say "You know you're not supposed to start eating candy until your parents saw your haul. Of course, you don't eat all the candy at once. In fact, it lasts longer than previous years. Each bite reminds you of friends and adventures, and even the bad candy tastes good. Your parents are shocked it lasts through Christmas. They are proud of your restraint -- you are growing up! Of course, if you explained the whole adventure, they would talk about kids and THEIR IMAGINATION.";
	win-the-game;

a goodrhyme rule (this is the vc-share-shine rule):
	if player is not in lair line, unavailable;
	if sco-share-shine is true:
		vcal "That'd be overdoing the gratitude!";
		already-done;
	ready;

this is the vr-share-shine rule:
	now sco-share-shine is true;
	say "You take time, unprompted, to thank others that helped you defeat Reeky Ray. You couldn't have done it without them!";

to win-the-game:
	if cur-bonus is max-bonus:
		choose row with final response rule of show-misses rule in the Table of Final Question Options;
		blank out the whole row; [don't let the player see MISSED if they got everything]
	follow the score and thinking changes rule;
	force-status;
	end the story finally saying "'Why wait? My, mate, I ATE!'";
	follow the shutdown rules;

volume misc tables

table of noways
noway-rm	noway-txt
SickSeat	"You don't want to go wandering through your house on Halloween when you should be going OUT! Besides, you need to [if sco-ick-eat is false]eat your vegetables[else]choose the friend who'll most help with adventure[end if] first."
Strick Street	"[if house-crit-score < 2]Everywhere but [b]IN[r] to the Honer House is really too scary[else]Now you've got your bearings in Honer House, you see passages in the planar direction, but not [noun]."
HonerHouse	"The secrets in this house are verbal, not physical. You can only go back out."
Rank Ring	"It's even ranker any direction but back south."
TreeTrolled	"Any direction but back north could get you very, very lost in a very, very dangerous forest."
Hun Home	"There are no secret passages in this home. You can only go back east."
Eee Ing	"You'd get lost here. Best stay by [Randy]."
Leaky Ley	"You can't run from this conflict."
Lair Line	"There's no compass direction out. [if sco-green-grid is false]You need to find someone who can make a portal out.[else]The green grid will lead you out, but why not celebrate your adventure first?[end if]"

volume homonyms

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
bait base	--	"bays"	"No..."

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
Hidey House	--	--	--

Nick Neat Trick Treat Tables ends here.

---- DOCUMENTATION ----
