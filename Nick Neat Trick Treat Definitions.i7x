Version 1/241026 of Nick Neat Trick Treat Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py."

volume types

a plateitem is a kind of rhymable.

a thing has a number called eyevalue.

a room has a number called eyevalue.

volume game specific

to say adjtext of (ru - a rule): say "[ru]"

to decide whether (ru - a rule) is spaceable: yes;

to decide whether (di - a direction) is blocked: no;

to decide whether too-distracted: no;

to decide whether immediate-attention of (ru - a rule):
	no;

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

to decide whether (r1 - a room) and (r2 - a room) are gong-adjacent:
	if r1 is adjacent to r2, yes;
	no;

this is the disable-learner-options rule:
	do nothing;

definition: a rule (called ru) is irregular:
	no;

definition: a direction (called di) is viable:
	if room di of location of player is nowhere, no;
	yes;

this is the situational-cuing-reject rule: do nothing;

to decide whether rhyme-mechanism-known:
	yes;

to decide whether good-say-guess:
	no;

to say optional-hint-think-item: say "";

this is the narrative-checking rule: make no decision;

this is the game-specific-backdrop-check rule: [wry wall in VVFF, maybe put in the rick ride in CSDD]
	do nothing;

definition: a room (called rm) is available-from-here:
	no; [obviously fix this when we can]

this is the stuck-right-now rule: do nothing;

this is the flag bad goto to rule:
	if debug-state is true, say "TO RULE CHECK: to [noun] ([mrlp]).";
	do nothing;

this is the flag bad goto from rule:
	if debug-state is true, say "FROM RULE CHECK: [location of player] ([mrlp]).";
	do nothing;

volume trivia

book for directions in Strick Street

a direction can be stricksolved. a direction is usually not stricksolved.

definition: a direction (called di) is strickseen:
	unless di is north or di is west or di is south, no;
	if di is stricksolved, no;
	if the room di of strick street is visited, yes;
	no;

definition: a direction (called di) is strickunseen:
	unless di is north or di is west or di is south, no;
	if the room di of strick street is not visited, yes;
	no;

after printing the name of a direction (called di) when print-room-to is true:
	let rm be room di of location of player;
	say "[if rm is visited]to [rm][else]somewhere new[end if]";
	continue the action;

book definitions of point sums

to decide which number is ncp: decide on number of carried plateitems + number of moot plateitems.

to decide which number is incant-score: decide on (boolval of sco-pluraled-plea) + (boolval of sco-shove-shook) + (boolval of sco-get-ghoul);

to decide which number is twin-score:
	let temp be boolval of sco-grit-grins;
	if sco-creaky-cray is true or sco-weakie-way is true, increment temp;
	decide on temp;
	[let y be (boolval of ((whether or not sco-weakie-way is true) or (whether or not sco-creaky-cray is true)));]

to decide which number is ray-score:
	decide on (boolval of sco-slick-sleet) + (boolval of sco-streaky-stray);

to decide which number is house-score:
	decide on (boolval of sco-loner-louse) + (boolval of sco-moaner-mouse) + (boolval of sco-donor-douse);

to decide which number is house-crit-score:
	decide on (boolval of sco-loner-louse) + (boolval of sco-moaner-mouse);

book shortcut

to say once-now of (ts - a truth state):
	say "[if ts is true]now[else]once[end if]"

volume big rule

this is the verb-checker rule:
	let local-ha-half-level be 0;
	let local-post-hom be false;
	let brightness be false;
	let new-point-to-get be false;
	let global-row-check be 0;
	let hom-row be 0;
	let my-count be 0;
	let nwpc be number of words in the player's command;
	repeat through the table of verb checks:
		increment global-row-check;
		now my-count is 0;
		now vc-dont-print is true;
		process the check-rule entry;
		let rb-out be the outcome of the rulebook;
		if rb-out is the unavailable outcome, next;
		now vc-dont-print is false;
		[say "[check-rule entry].";]
		if there is a wfull entry and the player's command matches the wfull entry:
			now my-count is 4; [ 4 = topic match, 3 = mix up alt solutions, 2 = 2 word match (or DIMD). This is a magic number to get rid of a boolean, so we can have all non global variables inside one rule, because Inform only allows 15 local variables. ]
		else:
			if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
			if there is a w2 entry:
				if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
			else if my-count > 0:
				increment my-count;
			if there is a wfull entry and my-count is 2:
				increment my-count;
		if my-count >= 2:
[			if debug-state is true, say "DEBUG: processing [check-rule entry], outcome [if rb-out is unavailable outcome]UA[else if rb-out is not-yet outcome]NOT YET[else if rb-out is already-done outcome]already done[else]ready[end if].";]
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmph. That [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work! You'll figure out the how and when and where, though.";
				the rule succeeds;
			if rb-out is semi-pass outcome:
				now think-cue entry is true;
				the rule succeeds;
			if okflip entry is false:
				unless my-count is 4 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [using only w1 is for the DIM'D test case... and "my-count is 4" is a hack for FLIMFLAM]
					say "You've got it backwards! Just flip things around, and it'll be okay.";
					the rule succeeds;
			if my-count is 3:
				say "Ooh! You're close. You've probably juggled two valid solutions.";
				the rule succeeds;
			abide-nlb the situational-cuing-reject rule;
			if there is a core entry and idid entry is false:
				if core entry is true and nwpc > 2:
					say "You may have used too many words. Any necessary command just needs two words, no more, no less. I put this in to make sure you can't just spam guesses. It's a bit strict, but ... I wanted some cursory protection, as well as simple guidance to narrow down what you should guess.";
					the rule fails;
				up-which core entry;
				if core entry is false:
					increase lump-count by 1;
			now idid entry is true;
			now think-cue entry is false;
			process the run-rule entry;
			if zap-core-entry is true: [must be after "process the run-rule entry" or next LLP may not register]
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false, check-lump-progress;
			the rule succeeds;
		if shut-scan is true, next;
		if two-too is true and player has leet learner:
			if there is a posthom entry:
				now vc-dont-print is true;
				process the check-rule entry;
				let rb-out be the outcome of the rulebook;
				now vc-dont-print is false;
				if the player's command includes the posthom entry:
					if rb-out is worth-parsing or rb-out is the already-done outcome:
						now local-post-hom is true;
						now hom-row is global-row-check;
		if ha-half is true and my-count is 1 and player has leet learner:
			now vc-dont-print is true;
			process the check-rule entry;
			let rb-out be the outcome of the rulebook;
			now vc-dont-print is false;
			unless rb-out is the not-yet outcome or rb-out is the ready outcome or rb-out is semi-pass outcome, next;
			if rb-out is ready outcome or rb-out is semi-pass outcome:
				now local-ha-half-level is 2;
			else if local-ha-half-level < 2:
				now local-ha-half-level is 1;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off the HA HALF button.";
			if there is a core entry:
				now new-point-to-get is true;
				if core entry is true, now brightness is true;
			next;
	if local-post-hom is true:
		if hom-row > 0:
			choose row hom-row in table of verb checks;
			if there is a hom-txt-rule entry:
				abide by the hom-txt-rule entry;
				say "[line break]The Leet Learner vibrates back and forth rather violently. You must have been very close.";
			else:
				say "The Leet Learner shakes back and forth. Something you said sounded right, but it didn't feel right.";
		abide-nlb the two-too-help rule;
	if local-ha-half-level > 0:
		say "The [b]HA HALF[r] button on your Leet Learner lights up [if local-ha-half-level is 1]yellow[one of]--one of the words must work for a future solution[or][stopping][else]green[one of]--one of the words you thought must be right[or][stopping][end if][if new-point-to-get is false]. Oh, wait, you're just switching back to a rhyme you knew before. You must've mis-thought a word[else if brightness is false]. Very dim, though. Perhaps this is a rhyme you don't strictly need to figure to win[else if local-post-hom is true]. Its brightness suggests your rhyme must be very close, indeed[end if].";
		abide-nlb the ha-half-help rule;

Nick Neat Trick Treat Definitions ends here.

---- DOCUMENTATION ----
