"Nick Neat-Trick-Treat" by Andrew Schultz

volume big picture stuff

the story description is "Fall Fest Tall Test".

the story headline is "Prime Pro-Rhyme Row entry 9".

[release along with cover art.]

release along with a website.

release along with the "parchment" interpreter.

the release number is 1.

Use memory economy.

chapter general headers

include Trivial Niceties by Andrew Schultz.

include Intro Restore Skip by Andrew Schultz.

include Old School Verb Total Carnage by Andrew Schultz.

include Punctuation Stripper by Andrew Schultz.

chapter series-specfic headers

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

chapter game-specific headers

include Nick Neat Trick Treat Globals by Andrew Schultz.

include Nick Neat Trick Treat Mistakes by Andrew Schultz.

include Nick Neat Trick Treat Definitions by Andrew Schultz.

include Nick Neat Trick Treat Tables by Andrew Schultz.

section testing

include Nick Neat Trick Treat Tests by Andrew Schultz.

volume rooms

book sick seat

Sick Seat is a room. printed name is "On your sick seat". "[one of]You're on your sick seat, sick in a positive way, though right now you are sort of sick of the vegtables you have to eat before trick-or-treating[or]You're still on your seat here, not ready to move along until there's adventure[stopping]."

 [bad bid, dad did]
 [mom, more? Bomb, bore!]

check going in Sick Seat:
	if sco-ick-eat is false, say "Need to finish those vegetables first. Force yourself, with a pep talk." instead;
	if sco-pick-pete is false, say "Need to decide who to go with." instead;
	if noun is not outside, say "You don't want to go wandering through your house. It's Halloween. You want to go out!" instead;
	say "You will automatically go outside once you're prepared." instead;

chapter Nick

Nick Neat Trick Treat is a person in Sick Seat. the player is Nick Neat Trick Treat. printed name is "Nick Neat-Trick-Treat".

chapter the phone

Nick carries the phone. description is "You don't want to be gazing at it when you walk around. If there's a message, you'll get it."

chapter the note

Meet Me Pete P is a thing. "It's just the message on your phone. [if sco-treat-tree is false]There must be a common, yet secret, place to meet him[else]You figured you could meet at the Treat Tree[end if]."

book Strick Street

Strick Street is inside of Sick Seat. "[one of]Hmm. You're not sure if strick is a word, but you figure if you badgered any of the denizens about it, they'd be ... upset. So, maybe it's short for stricken? [or][stopping][if honer house is unvisited]Everything's a bit scary, but you can go [b]IN[r] to a house helpfully labeled Honer House[else]The honer house is dark now. You can visit a hun-home to the left, a rank ring to the north, or woods to the south. It's quite scary to the east[end if]."

[becomes stray street?]

after printing the locale description for Strick Street when number of carried plateitems is 3 and plate place is not moot:
	say "You place all three items in [the plate]. It shatters to reveal a [face].";
	moot plate;
	move fate face to strick street;
	continue the action;

chapter check going rules

the honer house first rule is listed first in the check going rulebook.
the push player east rule is listed after the honer house first rule in the check going rulebook.

check going in Strick Street when honer house is unvisited (this is the honer house first rule):
	if noun is not inside, say "The honer house looks like it could help you before you really get started." instead;

check going in strick street when plate place is moot (this is the push player east rule):
	if noun is not east, say "Now the way east is opened, that's where you should go." instead;

check going inside in Strick Street:
	if house-crit-score is 2, say "You built up enough confidence in Honer House." instead;

check going north in Strick Street:
	if player has jewel, say "You got the jewel. That's enough." instead;

check going south in Strick Street:
	if player has cold key, say "You got the cold key. That's enough." instead;

check going west in Strick Street:
	if player has bove book, say "You got the book from there. That's enough." instead;

check going east in Strick Street:
	if plate place is not moot, say "You don't have what you need to get by [the base]." instead;

chapter bait base plate place

the bait base plate place is a thing. [rate race / mate mace / late lace] "A bait base plate place blocks your way east. It is solid and smooth, except for three indentations.". description is "It appears the indentations can fit a key, a book, and some jewelry.".

after examining plate place:
	let ncp be number of carried plateitems;
	if ncp > 0, say "You have [the list of carried plateitems], which is [if ncp is 1]a good start[else if ncp is 2]so close[else]good enough for passage east[end if].";
	continue the action;

understand "indentations" as plate place.

the great grace fate face is a thing. "The Great Grace Fate Face affords passage east. It might be scary to walk into it, but it'd be scarier to stay here too long."

book Honer House

Honer House is inside of Strick Street. "Here in the honer house you [house-left]. You can go back out [if house-crit-score is 2]once[else]now[end if] you've gotten your bearings[if sco-donor-douse is false], though you may be able to do some sneaky trick-or-treating before[end if]."

to say house-left:
	if house-score is 3:
		say "are totally finished";
	else if house-crit-score is 2:
		say "have done what you needed";
	else if house-crit-score is 0:
		say "hear both an animal and human whine, trying to make themselves out to be tougher than they mean to be. Name them, and overcome your fears";
	else:
		say "still hear [if sco-loner-louse is false]a person[else]an animal[end if] whine, still trying to make themselves out to be tougher than they mean to be. You're halfway there"

book Rank Ring

Rank Ring is north of Strick Street. "It's too misty any way but back south."

chapter jewel

the yet youll jet jewel is a plateitem. printed name is "yet-you'll-jet jewel". description is "You're dazzled by its beauty but you know you'll have to use it to get somewhere."

book Hun Home

Hun Home is west of Strick Street. "No secret doors here. Just back east."

check going east in Hun Home when player has book:
	if sco-run-roam is false, say "[The book] seems to pull you back. Isn't it much cheerier here than outside?" instead;

chapter fun foam

the fun foam is a thing.

chapter ton tome

the ton tome is a thing.

chapter book

Love Look Bove Book is a plateitem. printed name is "Love-Look-[']Bove Book". description is "Mushy love stuff. But hey, if it makes the baddies puke more than you, BET.". [at least it isn't a biography of someone important.]

book Tree Trolled

Tree Trolled is south of Strick Street. printed name of Tree Trolled is "Tree, Trolled". "Oh no you're not going further into the forest. You make sure to keep track of a path back north." [Dee Dold would know more about this. Dee loves trees.]

after printing the locale description when player is in tree trolled and sco-be-bold is false:
	say "Ugh. You're just scared. Tough to pep yourself up.";
	continue the action;

chapter cold key

the cold key is a plateitem. description is "It warmed up quickly in your pocket. Technically it's a key, cold, but switching words like that reminds you of poetry adults tell you you should enjoy. Ugh."

book and eee ing

There is a room called and eee ing. It is east of Strick Street. printed name is "And Eee-ing". "You hear lots of noises here, of arguments and encouragement and such. Sadly, there is despair, too. A lot of eee-ing."

Randy Ring Candy King is a person in eee ing. printed name is "Randy Ring-Candy-King.". "But the focus is, well, someone imposing. [one of]A man introduces himself as Randy Ring-Candy-King. He is impressed you have gotten this far. He mentions that although you're more a chocolate person than ring candy, that variety is good. He asks for your approval.[or]Randy Ring-Candy-King waits for a sign, a phrase, that shows you will work well together.[stopping]"

book Leaky Ley

Leaky Ley is east of eee ing.

chapter Cheeky Che

Cheeky Che is a person in Leaky Ley. "[one of]'I am Cheeky Che,' someone announces. 'You stand no chance againt my taunting, but even if you did, you are no match for my leader!'[or]Cheeky Che waits for your best shot.[stopping][paragraph break]The insults would normally work, but something about the artifacts you found helps you resist.". description is "Don't look too long. You'll get drawn in. Think of strong defense, nothing rude, just ... let Che know."

chapter Streaky Stray

the Streaky Stray is a thing. "A Streaky Stray attempts to zap people with a reeky ray. It doesn't seem lethal, but it sure can ruin people's halloween."

chapter Freaky Fey

Freaky Fray is a thing in Leaky Ley. "The freaky fray rages about you.". description is "You aren't strong enough to fight, but maybe the right words are more powerful than you think."

the reeky ray is scenery in Leaky Ley. "The Streaky Stray holds and fires it. It hasn't hit you with it, yet."

check going in Freaky Fray: say "But it is the final fight!" instead;

[streaky stray / creaky cray / weakie way ] [geeky gay / meeky may / peaky pay / kiki k / seek eee say / eeky eh / beaky bay ]

book Lair Line

Lair Line is a room. [this is just to get internal automap to work] "The Spare Spine is in the background here."

chapter Spare Spine

the spare spine is scenery in Lair Line. "The spare spine is scary for real in the daytime. You don't want to get involved with it."

chapter Claire Cline

Claire Cline is a person in Lair Line.

volume unsorted

volume verb modification

check taking inventory:
	say "Other than your costume, and your phone under it (which has the Meet Me Pete P message) ...[paragraph break]";
	if jet jewel is moot:
		say "Well, not much, now you put the magic items in the face.";
	else if number of carried plateitems > 0:
		say "[The list of carried plateitems] should be useful for [the plate].";
	else:
		say "You have nothing to help you in your quest, yet.";
	the rule succeeds;

check taking:
	say "You never need to [b]TAKE[r] anything explicitly in [this-game]." instead;

volume endgame

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the points or alternate paths you [b]MISSED[r]" 	true	"missed/misses"	show-misses rule	--

this is the show-misses rule:
	say "Under construction."

volume map index

index map with Honer House mapped west of Tree Trolled.
index map with Lair Line mapped south of eee ing.
