"Nick Neat-Trick-Treat" by Andrew Schultz

volume big picture stuff

the story description is "Fall Fest Tall Test".

the story headline is "Prime Pro-Rhyme Row entry 9".

[release along with cover art.]

release along with a website.

release along with the "parchment" interpreter.

the release number is 1.

[Use memory economy.]

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

section testing - not for release

include Nick Neat Trick Treat Tests by Andrew Schultz.

volume when play begins

volume eyes

the some size em eyes are a rhymable. printed name is "some-size-[']em eyes". description is "They look like those gumballs that are disguised to fool people into thinking they're chocolate. You've been suckered more than once, especially on clearance sales. There are two of them. The left one blinks back at you four times, and the right blinks five, as if to great you, Nick Neat-Trick Treat.[paragraph break]You can [b]EYE[r] a room with them or [b]EYE[r] a thing.". eyevalue of eyes is -1.

guess-table of eyes is the table of some eyes guesses.

report examining the player when gs-eyes-found is false:
	find-the-eyes;
	continue the action;

to find-the-eyes:
	say "Wait! What's this? Some size-[']em eyes! The perfect thing to size up what weird stuff you need to do, on a weird adventure. Way better than a decoder ring.[paragraph break][i][bracket][b]NOTE[r][i]: the eyes can be used to [b]EYE[r][i] the room in general, or a thing, to tell you how long each word in the solution should  be. They don't guarantee you can do anything right now.[close bracket][r][line break]";
	now player has eyes;

report taking inventory when gs-eyes-found is false:
	find-the-eyes;
	continue the action;

to eye-blink (nm - a number):
	if nm is 0:
		say "Oh dear. I should have a clue for this, even one saying you're done.";
		continue the action;
	let left-eye be false;
	let right-eye be false;
	let cross-eyed be false;
	let eye-roll be false;
	let side-eye be false;
	if nm > 10000:
		now cross-eyed is true;
		now nm is nm - 10000;
	if nm > 5000:
		now eye-roll is true;
		now nm is nm - 5000;
	if nm > 2000:
		now side-eye is true;
		now nm is nm - 2000;
	if nm > 1000:
		now left-eye is true;
		now nm is nm - 1000;
	if nm > 100:
		now right-eye is true;
		now nm is nm - 100;
	let main be the remainder after dividing nm by 100;
	let tens be main / 10;
	let ones be the remainder after dividing nm by 10;
	say "The left eye blinks [tens in words] time[if tens > 1]s[end if], then the right eye, [ones in words].";
	if cross-eyed is true:
		say "[line break]Odd ... the eyes seem to look at each other, almost being pulled into each other.";
	else if side-eye is true:
		say "[line break]Odd ... the eyes seem to glance at you side-eye, as if to say 'Do you REALLY need to do that?'";
	else if left-eye is true:
		say "[line break]Odd ... the left eye seemed to squint at the end. So that counts as half?";
	else if right-eye is true:
		say "[line break]Odd ... the right eye seemed to squint at the end. So that counts as half?";
	else if eye-roll is true:
		say "[line break]Odd ... the eyes each make an eyeroll, as if to say 'well, I guess that COULD be a word.'";
	else if debug-state is true:
		say "[line break]Debug note: normal eye-scan.";

chapter eyerming

eyerming is an action out of world.

understand the command "eye" as something new.

understand "eye" as eyerming when player has eyes.

carry out eyerming:
	if eyevalue of location of player < 0, say "You don't need to do anything [if eyevalue of location of player is -2]else [end if]with the general location." instead;
	eye-blink eyevalue of location of player;
	the rule succeeds;

does the player mean doing something with meet me: it is unlikely.

check eyerming when player is in eee ing and sco-dandy-ding is true: say "The eyes are all over the places on this one. You may have several good options here. A few kids in your class might fit." instead;

chapter eyeing

eyeing is an action out of world applying to one thing.

understand the command "eye [thing]" as something new.

understand "eye [thing]" as eyeing when player has eyes.

carry out eyeing:
	if eyevalue of noun < 0:
		if noun is nick, say "The eyes show nothing. You cast the spell you needed to!" instead;
		say "You don't need to do anything [if eyevalue of noun is -2]else [end if]with [the noun]." instead;
	eye-blink eyevalue of noun;
	the rule succeeds;

check eyeing Nick when sco-pick-pete is true and Leaky Ley is unvisited: say "The eyes do their blinking slowly, as if to say, this is a way off...";

check eyeing eyes: say "Physically impossible and fortunately unnecessary." instead;

check eyeing base: say "Nothing from the eyes. You probably have to manipulate it with [if number of moot plateitems > 0]more [end if]other objects you acquired." instead;

check eyeing face: say "Nothing from the eyes. You can just walk through it to the east." instead;

check eyeing randy when sco-dandy-ding is true: say "The eyes are all over the places on this one. You may have several good options here. A few kids in your class might fit." instead;

volume rooms

book sick seat

SickSeat is a room. printed name is "At dinner, on your sick seat". "[if sco-ick-eat is false]You're on your sick seat, sick in a positive way, though right now you are sort of sick of the vegetables you have to eat before trick-or-treating. You usually don't mind them, but today they're tough to shovel down. Some quick self-talk to pep yourself up should do the trick.[paragraph break]If it weren't Halloween, you'd find yourself daydreaming of tater tots later (lots,) but chocolate and such is even better.[else if sco-treat-tree is false]You're still on your seat here, trying to figure which friend to choose for adventure.[else]You're on your seat here, thinking of where Pete P wants you to 'meet me.'[end if]". eyevalue of sick seat is 33.

every turn when sco-ick-eat is false:
	if a random chance of 1 in 3 succeeds, say "You look at the vegetables and think [one of]'Bad bid, Dad did.' [or]'Bomb, bore, Mom. More?!' [in random order] But of course saying that would get you grounded."

 [bad bid, dad did]
 [mom, more? Bomb, bore!]

check going outside in SickSeat:
	if sco-ick-eat is false, say "Need to finish those vegetables first. Force yourself, with a pep talk." instead;
	if sco-pick-pete is false, say "Need to decide who to go with first." instead;
	say "You will automatically go outside once you're prepared." instead;

the convert exit into go out rule is not listed in any rulebook.
the can't exit when not inside anything rule is not listed in any rulebook.

check exiting: try going outside instead;

chapter Nick

Nick Neat Trick Treat is a person in SickSeat. the player is Nick Neat Trick Treat. printed name is "Nick Neat-Trick-Treat". eyevalue of nick is 33. description of nick is "You [if sco-pick-pete is false]will be[else]are[end if] dressed as your favorite character from the Blest Blue Zest Zoo, the Guest Goo. You can hardly wait for the add-on season: Nest (New). You have friends, of course, dressed as Pressed Prue and the Best Boo."

chapter sick seat scenery

the sick seat is scenery in SickSeat. "Ergonomic and designed with characters from your favorite TV shows and such.". eyevalue of sick seat is 33.

chapter the phone

Nick carries the phone. description of phone is "You don't want to be gazing at it when you walk around. If there's a message, you'll get it.". eyevalue of phone is 54. understand "phone message" and "message" as phone.

chapter the note

Meet Me Pete P is a rhymable. "It's just the message on your phone. [if sco-treat-tree is false]There must be a common, yet secret, place to meet him[else]You figured you could meet at the Treat Tree[end if].". eyevalue of pete p is 54.

guess-table of meet me is the table of meet me guesses.

book Strick Street

Strick Street is inside of SickSeat. "[one of]Hmm. You're not sure if strick is a word, but you figure if you badgered any of the denizens about it, they'd be ... upset. So, maybe it's short for stricken? [or][stopping][if HonerHouse is unvisited]Everything's a bit scary, but you can go [b]IN[r] to a cheerily lit house[else]The honer house is dark now[strick-details][end if]." .eyevalue of strick street is -1.

to say strick-details:
	if number of stricksolved directions is 3:
		say ". Seems like it's time to go east, since you worked through the home, the ring and the forest";
		continue the action;
	now print-room-to is true;
	if number of stricksolved directions > 1:
		say ". You've already taken care of [list of stricksolved directions]";
	if number of strickseen directions > 0:
		say ". You've seen [list of strickseen directions] but have something left to do there";
	if number of strickunseen directions > 0:
		say ". You haven't explored [list of strickunseen directions] yet";
	now print-room-to is false;

[becomes stray street?]

after printing the locale description for Strick Street when number of carried plateitems is 3 and plate place is not moot:
	say "You place all three items in [the plate]. It vibrates, but nothing else happens, yet. Perhaps you need some incantations as you put them in.";

chapter helpful house (scenery)

the helpful house is scenery in strick street. "[if house-crit-score >= 2]It was nice in Honer House, but you have bigger things to do[else][one of]It looks quite welcoming, even if 'helpful' seems tricky to rthyme. You should [b]ENTER[r] it or go [b]IN[r][or][stopping][end if]."

check eyeing helpful house:
	say "Nothing from the eyes.[paragraph break]";
	if house-crit-score >= 2:
		say "You did what you needed there.";
	else:
		say "Perhaps [if honerhouse is visited]back [end if]inside, the eyes might see more.";
	 the rule fails;

understand "honer/house" and "honer house" as helpful house when HonerHouse is visited.

to say house-enter:
	if HonerHouse is unvisited:
		say "should [b]ENTER[r] it or go [b]IN[r]";
	else:
		say "can probably go back in and unlock its mysteries and get started on the real adventure"

check entering helpful house: try going inside instead.

chapter check going rules

the honer house first rule is listed first in the check going rulebook.
the push player east rule is listed after the honer house first rule in the check going rulebook.

check going in Strick Street when HonerHouse is unvisited (this is the honer house first rule):
	if noun is not inside, say "Every way except [b]IN[r] seems too dark, but the honer house looks like a place to gain your bearings." instead;

check going in strick street when plate place is moot (this is the push player east rule):
	if noun is not east, say "Now the way east is opened, that's where you should go." instead;

check going inside in Strick Street:
	if house-crit-score is 2, say "You built up enough confidence in Honer House. No need to go back." instead;

check going north in Strick Street:
	if player has jewel, say "You got the jewel. That's enough." instead;

check going south in Strick Street:
	if player has curled whee whirled key, say "You got [the key]. That's enough." instead;

check going west in Strick Street:
	if player has bove book, say "You got the book from there. That's enough." instead;

check going east in Strick Street:
	if plate place is not moot, say "You don't have what you need to get by [the base]." instead;

chapter bait base plate place

the bait base plate place is a thing. [rate race / mate mace / late lace] "A bait base plate place blocks your way east. It is solid and smooth, except for three indentations.". description is "It appears the indentations can fit a key, a book, and some jewelry.". eyevalue of place is -1.

after examining plate place:
	if ncp > 0, say "You have [the list of carried plateitems], which is [if ncp is 1]a good start[else if ncp is 2]so close[else]good enough for passage east[end if].";
	continue the action;

understand "indentations" as plate place.

the great grace fate face is a thing. "The Great Grace Fate Face affords passage east. It might be scary to walk into it, but it'd be scarier to stay here too long.". eyevalue of face is -1.

book HonerHouse

HonerHouse is inside of Strick Street. HonerHouse is privately-named. printed name of HonerHouse is "Honer House". "Here in the honer house you [house-left]. You can go back out [if house-crit-score is 2]once[else]now[end if] you've gotten your bearings[if sco-donor-douse is false], though you may be able to do some sneaky trick-or-treating before[end if].". eyevalue of honerhouse is 1055.

guess-table of HonerHouse is the table of honer house guesses.

to say house-left:
	if house-score is 3:
		say "are totally finished";
	else if house-crit-score is 2:
		say "have done what you needed";
	else if house-crit-score is 0:
		say "hear both an animal and human whine, trying to make themselves out to be tougher than they mean to be. Name them, and overcome your fears";
	else:
		say "still hear [if sco-loner-louse is false]a person[else]an animal[end if] whine, still trying to make themselves out to be tougher than they mean to be. You're halfway there"

check going outside in HonerHouse when house-crit-score is 2:
	if sco-donor-douse is false, max-down;
	say "Honer House shuts behind you. Strick Street is lit a bit better now. There's something blocking the way east, though: a bait base plate place. It looks scary and magical. Perhaps you'll find a way to get by it.";
	move plate place to strick street;

after printing the locale description when player is in HonerHouse and house-crit-score is 2 and sco-donor-douse is false:
	say "Oh gosh. You'd like to beg for candy here. It's part of you getting your bearings, right? (Of course, you may just want to move on. It's okay either way.)";
	continue the action;

book Rank Ring

Rank Ring is north of Strick Street. "It's too misty any way but back south.". eyevalue of rank ring is 55.

guess-table of rank ring is the table of rank ring guesses.

check going south in Rank Ring when sco-thank-thing is true and sco-sank-sing is false: max-down;

after printing the locale description for Rank Ring when sco-thank-thing is true and sco-sank-sing is false:
	say "You sense the thing, though you can't see it, could use a pep talk appropriate to this place. It doesn't have to be profound. But it's also not critical.";
	continue the action;

chapter jewel

the yet youll jet jewel is a plateitem. printed name is "yet-you'll-jet jewel". description is "You're dazzled by its beauty but you know you'll have to use it to get somewhere.". eyevalue of jewel is 35.

guess-table of jewel is table of jet jewel guesses.

book Hun Home

Hun Home is west of Strick Street. "No secret doors here. Just back east.". eyevalue of hun home is 34.

guess-table of hun home is the table of hun home guesses.

check going east in Hun Home when player has book:
	if sco-done-dome is true and sco-run-roam is false, say "[The book] seems to pull you back. Isn't it much cheerier here than outside? Unless you have something more fun to do?" instead;
	if sco-run-roam is true and sco-a-gnome is false, max-down;

after printing the locale description for Hun Home when sco-run-roam is true and sco-a-gnome is false:
	say "You sense you could, if you wanted, leave a caretaker for this place.";
	continue the action;

chapter fun foam

the fun foam is a thing. "Fun foam rests, providing a soft landing for any huge objects that may come crashing through.". eyevalue of fun foam is 34.

chapter ton tome

the ton tome is a thing. "The ton tome you summoned landed on the fun foam.". eyevalue of ton tome is 34.

chapter book

the Love Look Bove Book is a plateitem. printed name is "Love-Look-[']Bove Book". description is "Mushy love stuff. But hey, if it makes the baddies puke more than you, BET.". [at least it isn't a biography of someone important.] eyevalue of book is 55.

book Tree Trolled

TreeTrolled is south of Strick Street. printed name of TreeTrolled is "Tree, Trolled". "Oh no you're not going further into the forest. You make sure to keep track of a path back north.". eyevalue of TreeTrolled is 24. [Dee Dold would know more about this. Dee loves trees.]

guess-table of TreeTrolled is table of treetrolled guesses.

after printing the locale description when player is in treetrolled and sco-be-bold is false:
	say "Ugh. You're just scared. Tough to pep yourself up.";
	continue the action;

check going north in TreeTrolled when sco-see-sold is true:
	if sco-wee-wold is false, max-down;

after printing the locale description when player is in treetrolled and sco-see-sold is true and sco-wee-wold is false:
	say "The tree, trolled, still looks a little sad. Perhaps it has something to tell you of far-away exotic places, whether or not you or they have ever been there. But it knows you may be too busy, what with that new key it gave you.";
	continue the action;

chapter tree trolled

the tree trolled is a thing in TreeTrolled. printed name of Tree Trolled is "tree, trolled". "It looks sad, no longer the treat tree you and Pete P had hoped to find.". eyevalue of tree trolled is 24.

chapter curled whee whirled key

the curled whee whirled key is a plateitem. description is "It's a really odd but cool shape and design. It warmed up quickly in your pocket. Technically it's a key, cold, but switching words like that reminds you of poetry adults tell you you should enjoy. Ugh.[paragraph break]Just looking at it makes you think of words that don't exist but maybe should, the sort over-sensible adults would, and have, smacked you down verbally for saying.". printed name is "curled (whee) whirled key". eyevalue of key is 5084.

guess-table of curled key is the table of curled key guesses.

book and eee ing

There is a room called and eee ing. It is east of Strick Street. west of eee ing is nowhere. printed name is "And Eee-ing". "You hear lots of noises here, of arguments and encouragement and such. Sadly, there is despair, too. A lot of eee-ing.". eyevalue of eee ing is 54.

after printing the locale description for eee ing:
	now nowhere is mapped north of Eee ing;
	continue the action;

check going west in eee ing: say "No way back." instead;

guess-table of eee ing is the table of eee ing guesses.

Randy Ring Candy King is a person in eee ing. printed name is "Randy Ring-Candy-King". "But the focus is, well, someone imposing. [one of]A man introduces himself as Randy Ring-Candy-King. He is impressed you have gotten this far. He mentions that although you're more a chocolate person than ring candy, that variety is good. He asks for your approval.[or]Randy Ring-Candy-King waits for a sign, a phrase, that shows you will work well together.[stopping]". eyevalue of Randy is 54.

book Leaky Ley

Leaky Ley is north of eee ing. "You sense a disruption of parallel universes here.". south of Leaky Ley is nowhere. eyevalue of leaky ley is 163. [north is arbitrary, but it fits in the internal 3x3 map this way]

guess-table of leaky ley is the table of leaky ley guesses.

chapter Cheeky Che

a twit is a kind of person. description of a twit is usually "Don't look too long. You'll get drawn in. Think of strong defense, nothing rude, just ... let him know.". eyevalue of a twit is usually 163.

Cheeky Che is a twit in Leaky Ley. Cliquey Clay is a twit in Leaky Ley.

for printing a locale paragraph about a twit (called tw):
	if tw is not mentioned:
		say "[one of]Two identical, rough-looking teens stand here. They introduce themselves as Cheeky Che and Cliquey Clay, the twit twins. You stand no chance against their taunts, and it's probably best not to try. If you got by them, their leader would have to resort to worse![or]Cheeky Che and Cliquey Clay both continue to smile condescendingly at you.[stopping]";
		if twit twins are in Leaky Ley, say "[line break]Also, you sense you will have to deal with them [if twin-score is 0]individually and[else]also[end if] in their capacity as twit twins. They're sneaky that way.";
	now all twits are mentioned;

after examining a twit:
	if twin-score is 0:
		say "You need to figure a way to take the twits down, both individually and as a team.";
	else if twin-score is 1:
		say "[if sco-grit-grins is false]You hit them individually. Now you need to hit them together[else]You hit their partnership. Now focus on them individually[end if].";
	continue the action;

chapter Twit Twins

the twit twins are scenery in Leaky Ley. "You stare between the twit twins. It's hard to tell them apart. You hope not to have to.". eyevalue of twit twins is 45.

chapter Streaky Stray

Reeky Ray is a person. "Not only named Ray, Reeky Ray has a ray that shoots and hits you.". description is "No time to gawp! Look inside yourself, and find Ray's weakness, and take him down!". eyevalue of reeky ray is 75.

chapter Freaky Fray

Freaky Fray is a thing. "The freaky fray rages about you.". description is "You aren't strong enough to fight, but maybe the right words are more powerful than you think.". eyevalue of Freaky Fray is 75.

[streaky stray / creaky cray / weakie way ] [geeky gay / meeky may / peaky pay / kiki k / seek eee say / eeky eh / beaky bay ]

book Lair Line

Lair Line is a room. [this is just to get internal automap to work] "The Spare Spine is in the background here. Actually, it borders you on all sides. [if sco-green-grid is false]How can you make another way out?[else]After a celebration, the green grid should provide a way back.[end if]". eyevalue of lair line is 44.

guess-table of lair line is the table of lair line guesses.

chapter Spare Spine

the spare spine is scenery in Lair Line. "The spare spine is scary for real in the daytime. You don't want to get involved with it.". eyevalue of spare spine is 44.

chapter Claire Cline

Claire Cline is a person in Lair Line. "Claire Cline is here, with a been-bid-keen kid or two, who didn't get to share in the adventure[if sco-fair-fine is false]. They also have no candy[end if].". description is "You heard Claire gets picked on for being different, but you find her less boring than a lot of high school kids. Adults seem to love her or hate her, even though she doesn't try for that. She's baby-sat you and Pete before, but not for a couple years.". eyevalue of claire cline is 44.

chapter been bid keen kid

the been bid keen kid is a person in Lair Line. printed name of keen kid is "been-bid-keen kid". "One been-bid-keen kid in particular stands here, [if sco-green-grid is true]pleased to have been able to contribute[else]looking for something to do or maybe create[end if].". eyevalue of kid is 54.

volume meta verbs

[much of the basic stuff is defined in the universal file code]

chapter abouting

carry out abouting:
	say "[this-game] was written for EctoComp 2024. It is entry 9 in my [pprr] series and likely the last. The others are [series-names].";
	say "[line break]You may have guessed by the use of proper names in puzzles that the concept is reaching its end. But I hadn't done a classic trick-or-treating game, so here it is.";
	say "[line break]There will be a post-comp version.";
	the rule succeeds;

chapter creditsing

carry out creditsing:
	say "Thanks to all administrators past and present of EctoComp: Ruber Eaglenest, Duncan Bowsman, JJ Guest and others I've forgotten.";
	say "[line break]Thanks to Wade Clarke for testing without being given a lot of time. I owe him one for this.";
	say "[line break]Thanks to Olaf Nowacki for finding a bug quickly during the comp itself.";
	the rule succeeds;

chapter verbsing

carry out verbsing:
	say "[this-game], like others in the series, doesn't have many custom verbs that are used regularly. In fact, many standard verbs such as [b]PUSH[r] and [b]PULL[r] are disabled, and [b]CLIMB[r] or [b]ATTACK[r], for instance, have minimal implementation. Even [b]TAKE[r] should be useless--you implicitly take what useful stuff you can.[paragraph break]This is to help you focus on certain phrases you need to guess to advance.";
	say "[line break]The four cardinal directions and [b]IN[r]/[b]OUT[r] are used, as well as [b]X[r] or [b]EXAMINE[r]. [b]READ[r] may provide different output. [b]I[r] takes inventory.";
	say "[line break][b]T[r] in a future release will let you talk to people or entities, but it's just for fun.";
	say "[line break]These are the in-game verbs [b]META[r] gives general information commands and meta-verbs.";

report verbsing:
	if player has eyes:
		say "You can also [b]EYE[r] an object to see if you need to do anything to it. [b]EYE[r] alone shows the whole room.";
	else:
		say "There will be one hint item you can find with standard introductory commands.";
	continue the action;

chapter versioning

carry out versioning:
	say "Version 1 was released to EctoComp on October 31, 2024.";
	the rule succeeds;

chapter xyzzying

carry out xyzzying: say "A voice booms 'Magic? My, tragic try!'" instead;

volume unsorted

volume verb modification

the print empty inventory rule is not listed in any rulebook.
the print standard inventory rule is not listed in any rulebook.

carry out taking inventory:
	if sco-ick-eat is false, say "You're carrying nothing special. You're not in your costume yet. You need to finish dinner." instead;
	if sco-treat-tree is false, say "You've got that phone message to deal with." instead;
	say "Other than your costume, and your phone under it (which has the Meet Me Pete P message) ...[paragraph break]";
	if incant-score is 3:
		say "Well, not much, now you put the magic items in the face.";
	else if number of carried plateitems > 0 and incant-score > 0:
		say "[The list of carried plateitems] are probably meant for [the plate], like [the list of moot plateitems] you used.";
	else if number of carried plateitems > 0:
		say "You have [the list of carried plateitems] but haven't figured where to use [if number of carried plateitems > 1]them[else]it[end if] yet.";
	else:
		say "You have nothing to help you in your quest, yet.";
	the rule succeeds;

check taking:
	say "You never need to [b]TAKE[r] anything explicitly in [this-game]." instead;

check dropping:
	say "You never need to [b]DROP[r] anything explicitly in [this-game]." instead;

chapter irregular verbs

check talktoing: say "Talktoing is not implemented for the EctoComp release." instead;

volume endgame

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the points or alternate paths you [b]MISSED[r]" 	true	"missed/misses"	show-misses rule	--

this is the show-misses rule:
	say "There are seven total bonus points. One involves finding both ways to pick at Che and Clay. Here is how to get [if cur-bonus is 0]them all[else]the remaining [(max-bonus - cur-bonus) in words][end if].[paragraph break]Note that some of the bonus points require creative punctuation or emphasis to think of, which is why they are bonus points. But I liked them too much to leave out.[paragraph break]";
	if sco-donor-douse is false, say "You could have said [b]DONOR DOUSE[r] in the Honer House.";
	if sco-sank-sing is false, say "You could have said [b]SANK SING[r] to cheer up the thing in the Rank Ring.";
	if sco-a-gnome is false, say "You could have left [b]A GNOME[r] to take care of the Hun Home.";
	if sco-wee-wold is false, say "You could have reminded [the tree] of the [b]WEE WOLD[r].";
	if sco-creaky-cray is false, say "You could have labeled Che and Clay [b]CREAKY CRAY[r].";
	if sco-weakie-way is false, say "You could have mocked Che and Clay as [b]WEAKIE WAY[r].";
	if sco-theyre-thine is false, say "You could've used medieval dialect and offered candy with [b]THERE[r] / [b]THEY'RE THINE[r].";
	if sco-share-shine is false, say "You could have spread credit around with [b]SHARE SHINE[r].";

volume map index

index map with HonerHouse mapped west of TreeTrolled.
index map with Lair Line mapped south of eee ing.
