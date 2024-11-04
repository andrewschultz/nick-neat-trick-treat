Version 1/241027 of Nick Neat Trick Treat Tests by Andrew Schultz begins here.

"This lays out basic IDE tests for Nick Neat Trick Treat, along with general commands that help to gauge game states. The biggest example across games is MISSED, to see how a post-game what-the-player-missed would look."

volume IDE tests

test wf with "test w1/test w2/donor douse/out/test w3/sank sing/s/test w4/wee wold/n/test w5/a gnome/e/test w6/weakie way/test w7/there thine/share shine/test w8".
test wm with "test w1/test w2/out/test w3/s/test w4/n/test w5/e/test w6/test w7/test w8".

test w1 with "ick eat/pick pete/treat tree".

test w2 with "in/loner louse/moaner mouse".

test w3 with "n/plank pling/blank bling/thank thing".

test w4 with "s/be bold/rerolled/me mold/see sold".

test w5 with "w/fun foam/ton tome/pun poem/done dome/run roam".

test w6 with "pluraled plea/shove shook/get ghoul/e/dandy ding/andy ng".

test w7 with "creaky cray/grit grins/slick sleet/streaky stray".

test w8 with "fair fine/green grid/dare dine".

volume room defs

chapter tabing

tabing is an action out of world.

understand the command "tab" as something new.

understand "tab" as tabing.

carry out tabing:
	repeat with x running through rooms:
		say "[x] [guess-table of x].";
	repeat with x running through things:
		if x is not a rhymable:
			say "<[x]>[line break]";
			next;
		say "[x] [guess-table of x].";
	the rule succeeds;

chapter riing

riing is an action out of world.

understand the command "ri" as something new.

understand "ri" as riing.

carry out riing:
	repeat with x running through plateitems:
		say "[x] [location of x].";
	the rule succeeds;

volume eye test

when play begins:
	moot leet learner;
	moot naff button;

to et-it (ts - a truth state):
	say "ROOMS.";
	repeat with RM running through rooms:
		if rm is hidey house or rm is gazy gap, next;
		if ts is false and eyevalue of RM is not 0, next;
		say "[RM] [eyevalue of RM].";
	say "THINGS.";
	repeat with TH running through things:
		if th is moot, next;
		if th is lurking lump, next;
		if ts is false and eyevalue of TH is not 0, next;
		say "[TH] [eyevalue of TH].";

chapter eting

eting is an action out of world.

understand the command "et" as something new.

understand "et" as eting.

carry out eting:
	et-it false;
	the rule succeeds;

chapter etaing

etaing is an action out of world.

understand the command "eta" as something new.

understand "eta" as eting.

carry out etaing:
	et-it true;
	the rule succeeds;

Nick Neat Trick Treat Tests ends here.

---- DOCUMENTATION ----
