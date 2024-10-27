Version 1/241026 of Nick Neat Trick Treat Tables by Andrew Schultz begins here.

"This lays out the major tables for Nick Neat Trick Treat for easy indexing and searching, as well as any rules related to the tables."

table of verb checks [the order of things to solve is roughly alphabetical, so the lurking lump always gives you the best value, but this is subverted by if one rhyme pushes the game/story further than the others. So Leave Lo is first. Sassed can be anywhere for the bonus point, since the lump explicitly avoids bonus points.]
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"ick"	"eat"	--	--	false	true	true	false	sick seat	vc-ick-eat rule	vr-ick-eat rule	--	--
"pick"	"pete"	--	--	false	true	true	false	sick seat	vc-pick-pete rule	vr-pick-pete rule	--	--
"donor"	"douse"	--	--	false	true	false	false	honer house	vc-donor-douse rule	vr-donor-douse rule	--	--
"loner"	"louse"	--	--	false	true	true	false	honer house	vc-loner-louse rule	vr-loner-louse rule	--	--
"moaner"	"mouse"	--	--	false	true	true	false	honer house	vc-moaner-mouse rule	vr-moaner-mouse rule	--	--
"plank"	"pling"	--	--	false	true	true	false	rank ring	vc-plank-pling rule	vr-plank-pling rule	--	--
"blank"	"bling"	--	--	false	true	true	false	rank ring	vc-blank-bling rule	vr-blank-bling rule	--	--
"thank"	"thing"	--	--	false	true	true	false	rank ring	vc-thank-thing rule	vr-thank-thing rule	--	--
"sank"	"sing"	--	--	false	true	true	false	rank ring	vc-sank-sing rule	vr-sank-sing rule	--	--
"fair"	"fine"	--	--	false	true	true	false	Lair Line	vc-fair-fine rule	vr-fair-fine rule	--	--
"theyre|their"	"thine"	--	--	false	true	false	false	Lair Line	vc-theyre-thine rule	vr-theyre-thine rule	--	--
"dare"	"dine"	--	--	false	true	true	false	Lair Line	vc-dare-dine rule	vr-dare-dine rule	--	--

chapter sick seat scoring

a goodrhyme rule (this is the vc-ick-eat rule):
	if player is not in sick seat, unavailable;
	if sco-ick-eat is true:
		vcal "You've earned enough brownie points. Time to prep to go look for candy.";
		already-done;
	ready;

this is the vr-ick-eat rule:
	now sco-ick-eat is true;
	say "You mouth the phrase to yourself. You think it. It wouldn't do to say it aloud. You worry you're getting a bit too old for either saying the phrase or disliking vegetables. But a part of you hopes you always hate certain vegetables. You have to stand for SOMETHING, after all.[paragraph break]Now, whom to choose to adventure with, from your seat? You're pretty sure.";

a goodrhyme rule (this is the vc-pick-pete rule):
	if player is not in sick seat, unavailable;
	if sco-ick-eat is false:
		vcp "Pete will be fun to trick-or-treat, but first, those vegetables. Your parents aren't wasting them.";
		not-yet;
	if sco-pick-pete is true:
		vcal "You already picked Pete. Where to meet him?";
		already-done;
	ready;

this is the vr-pick-pete rule:
	now sco-pick-pete is true;
	say "You message Pete on your phone. Pete P. He has a long name nobody can quite pronounce. Well, some kids do, and they get called show-offs. He's not ashamed of his long name. He just understands. You know how to spell it and pronounce it.";
	say "[line break]The message back: 'Meet me. -- Pete P.'";
	say "[line break]But where?";

chapter honer house scoring

a goodrhyme rule (this is the vc-donor-douse rule):
	if player is not in honer house, unavailable;
	if sco-donor-douse is true:
		vcal "Don't get greedy!";
		already-done;
	ready;

this is the vr-donor-douse rule:
	now sco-donor-douse is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-loner-louse rule):
	if player is not in honer house, unavailable;
	if sco-loner-louse is true:
		vcal "Don't rub it in. Move on!";
		already-done;
	ready;

this is the vr-loner-louse rule:
	now sco-loner-louse is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-moaner-mouse rule):
	if player is not in honer house, unavailable;
	if sco-moaner-mouse is true:
		vcal "The mouse has been properly chastised.";
		already-done;
	ready;

this is the vr-moaner-mouse rule:
	now sco-moaner-mouse is true;
	say "Hooray! You figured what to do! You get a point!";

chapter rank ring scoring

a goodrhyme rule (this is the vc-plank-pling rule):
	if player is not in rank ring, unavailable;
	if sco-plank-pling is true:
		vcal "You already found the odd-sounding plank and what was behind it!";
		already-done;
	ready;

this is the vr-plank-pling rule:
	now sco-plank-pling is true;
	say "Hooray! You figured what to do! You get a point!";

a goodrhyme rule (this is the vc-blank-bling rule):
	if player is not in rank ring, unavailable;
	if sco-plank-pling is false:
		vcp "Nothing will materialise just because you want it to! Search for it first.";
		not-yet;
	if sco-blank-bling is true:
		vcal "You already did this!";
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
		vcal "You've ben taught to be polite, but that'd be overkill.";
		already-done;
	ready;

this is the vr-thank-thing rule:
	now sco-thank-thing is true;
	say "A weird wraith sighs. You feel like you have earned it";
	if sco-sank-sing is true, say "[line break]It also appreciates your 'Sank? Sing!' advice."

a goodrhyme rule (this is the vc-sank-sing rule):
	if player is not in rank ring, unavailable;
	if sco-sank-sing is true:
		vcal "More than once is too cheery!";
		already-done;
	ready;

this is the vr-sank-sing rule:
	now sco-sank-sing is true;
	say "Well, whatever works. You engage in some harmless positivity. [if sco-thank-thing is false]There's no audience yet, but when there is, you'll be ready[else]The thing seems to appreciate it[end if].";

chapter Lair Line scoring

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
	say "With a small flourish, you hand a few candies to kids dressed in medieval costumes[if sco-fair-fine is false], but really, you still have a lot[else], makihg things even fairer[end if]."

a goodrhyme rule (this is the vc-dare-dine rule):
	if player is not in Lair Line, unavailable;
	if sco-fair-fine is false:
		vcp "But the dining is not equitable yet! Claire Cline would like you to try to spread the wealth.";
		not-yet;
	if sco-dare-dine is true:
		vcal "You already did this!";
		already-done;
	ready;

this is the vr-dare-dine rule:
	now sco-dare-dine is true;
	say "Good. Let's get going.";
	end the story saying "Why wait? My, mate, I ATE!";
	follow the shutdown rules;

volume misc tables

table of noways
noway-rm	noway-txt
Sick Seat	"You'll get to move once [if sco-ick-eat is false]you've eaten your vegetables[else]you choose the friend who'll most help with adventure[end if]."

volume homonyms

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
bait base	--	"bays"	"No..."

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
Sick Seat	--	--	--

Nick Neat Trick Treat Tables ends here.

---- DOCUMENTATION ----
