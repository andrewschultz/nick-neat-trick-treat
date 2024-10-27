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

include Prime Pro Rhyme Row Universal  by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E34 by Andrew Schultz.

chapter game-specific headers

include Nick Neat Trick Treat Globals by Andrew Schultz.

include Nick Neat Trick Treat Mistakes by Andrew Schultz.

include Nick Neat Trick Treat Definitions by Andrew Schultz.

include Nick Neat Trick Treat Tables by Andrew Schultz.

volume rooms

book sick seat

Sick Seat is a room. printed name is "On your sick seat". "[one of]You're on your sick seat, sick in a positive way, though right now you are sort of sick of the vegtables you have to eat before trick-or-treating[or]You're still on your seat here, not ready to move along until there's adventure[stopping]."

 [bad bid, dad did]
 [mom, more? Bomb, bore!]

check going in Sick Seat:
	if sco-ick-eat is false, say "Need to finish those vegetables first. Force yourself, with a pep talk." instead;
	if sco-pick-pete is false, say "Need to decide who to go with." instead;
	if noun is not outside, say "You can only go outside, to get going." instead;

chapter Nick

Nick Neat Trick Treat is a person in Sick Seat. the player is Nick Neat Trick Treat. printed name is "Nick Neat-Trick-Treat".

book Strick Street

Strick Street is inside of Sick Seat. "[if honer house is unvisited]Everything's a bit scary, but you can go [b]IN[r] to a house helpfully labeled Honer House[else]The honer house is dark now. You can visit a hun-home to the left, a rank ring to the north, or woods to the south. It's quite scary to the east[end if]."

[becomes stray street?]

the honer house first rule is listed first in the check going rulebook.

check going in Strick Street when honer house is unvisited (this is the honer house first rule):
	if noun is not inside, say "The honer house looks like it could help you before you really get started." instead;

check going inside in Strick Street when honer house is visited:
	if noun is inside, say "You built up enough confidence in Honer House." instead;

check going east in Strick Street:
	say "That way's the final boss." instead;

chapter bait base plate place

the bait base plate place is a thing. [rate race / mate mace / late lace]

the great grace fate face is a thing.

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

Rank Ring is north of Strick Street.

book Hun Home

Hun Home is west of Strick Street.

book Tree Trolled

Tree Trolled is south of Strick Street. printed name of Tree Trolled is "Tree, Trolled".

book Leaky Ley

Leaky Ley is east of Strick Street.

chapter Freaky Fey

Freaky Fey is a thing in Leaky Ley.

check going in Freaky Fey: say "But it is the final fight!" instead;

[streaky stray / creaky cray / weakie way ] [geeky gay / meeky may / peaky pay / reeky ray / kiki k / seek eee say / eeky eh / beaky bay ]

chapter Lair Line

Lair Line is south of Leaky Ley. [this is just to get internal automap to work] "The Spare Spine is in the background here."

Claire Cline is a person in Lair Line.

volume unsorted

volume endgame

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the points or alternate paths you [b]MISSED[r]" 	true	"missed/misses"	show-misses rule	--

this is the show-misses rule:
	say "Under construction."
