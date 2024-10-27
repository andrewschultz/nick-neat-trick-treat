Version 1/241026 of Nick Neat Trick Treat Tables by Andrew Schultz begins here.

"This lays out the major tables for Nick Neat Trick Treat for easy indexing and searching, as well as any rules related to the tables."

table of verb checks [the order of things to solve is roughly alphabetical, so the lurking lump always gives you the best value, but this is subverted by if one rhyme pushes the game/story further than the others. So Leave Lo is first. Sassed can be anywhere for the bonus point, since the lump explicitly avoids bonus points.]
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"ick"	"eat"	--	--	false	true	true	false	sick seat	vc-ick-eat rule	vr-ick-eat rule	--	--
"pick"	"pete"	--	--	false	true	true	false	sick seat	vc-pick-pete rule	vr-pick-pete rule	--	--

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

volume misc tables

table of noways
noway-rm	noway-txt
Sick Seat	"You'll get to move once [if sco-ick-eat is false]you've eaten your vegetables[else]you choose the friend who'll most help with adventure[end if]."

volume homonyms

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
Nick	--	--	--

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
Sick Seat	--	--	--

Nick Neat Trick Treat Tables ends here.

---- DOCUMENTATION ----
