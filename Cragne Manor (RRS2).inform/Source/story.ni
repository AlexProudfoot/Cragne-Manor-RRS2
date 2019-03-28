"Cragne Manor (RRS2)" by Shin

Part - Context of the Train Station Lobby

Chapter - Do Not Change Any Of This

Include Cragne Suite by Ryan Veeder.

[Don't mess with other people's rooms!]

RRS is a region.

RRS1 is a room in RRS.

RRS2 is a room in RRS. RRS2 is south of RRS1.

RRS3 is a room in RRS. The door13 is a closed scenery door. The door13 is west from RRS2 and east from RRS3.

RRS4 is a room in RRS. The door1 is a closed locked scenery door. The door1 is east from RRS2 and west from RRS4. [the key1 unlocks door1.]

RRS5 is a room in RRS. RRS5 is south of RRS2.


Chapter - Ryan's Email Updates

Key1 unlocks Door1. The key1 is in M3F2.



Part - Story of the Train Station Lobby

The printed name of RRS2 is "Train Station Lobby (Shin)".

The commentary of RRS2 is "A really short room definition started one week before the deadline. I hope this is OK."

Instead of examining the player when the location is RRS2:
	say "Even in these dim and dingy surroundings, you are as good-looking as ever."


Chapter - Arriving

Shin-arriving is a scene.
Shin-arriving begins when the location is RRS2.
Shin-arriving ends when the location is not RRS2.

[ the room ]
The description of RRS2 is "The evening light trickles through the [Shin-outside-windows] on either side of the station exit to the south, dimly illuminating your surroundings. To the north is the platform on which you arrived. To the east, [a Shin-large-mirror] decorates the wall next to [a door1]. To the west, there is [a door13]. The overall appearance is one of general neglect and decay. You regard your surroundings with a deep sense of foreboding."

[ the dirty windows ]
The Shin-outside-windows are scenery in RRS2.
Rule for printing the name of the Shin-outside-windows: say "dirty, cobweb-covered windows".
Understand "dirty/cobweb-covered/-- window/windows" as the Shin-outside-windows when the location is RRS2.

instead of examining the Shin-outside-windows:
	say "The [Shin-outside-windows] permit scant illumination within the station lobby. They appear not to have been cleaned in a long time."

[ the large mirror ]
The Shin-large-mirror is scenery in RRS2.
Rule for printing the name of the Shin-large-mirror: say "large mirror".
Understand "large/-- mirror" as the Shin-large-mirror when the location is RRS2.

instead of examining the Shin-large-mirror:
	say "You take a long look in the mirror. [run paragraph on]";
	try examining the player.

[ the green door ]
Rule for printing the name of door1 when the location is RRS2: say "[if door1 has been open]door to the station office[otherwise]green door[end if]".
Understand "green/station/office/-- door" as door1 when the location is RRS2.

Instead of examining door1 when the location is RRS2:
	say "The [door1] appears to be the entrance to the station office[if door1 is locked]. You try the handle and discover that it is locked[end if]."

[ the brown door ]
Rule for printing the name of door13 when the location is RRS2: say "[if door13 has been open]restroom door[otherwise]brown door[end if]".
Understand "brown/station/restroom/-- door" as door13 when the location is RRS2.

Instead of examining door13 when the location is RRS2:
	say "The [door13] leads to the station restroom. Thankfully, you have no need of the facilities at the moment."


Chapter - Getting though the Green Door

Shin-getting-through-door1 is a scene.
Shin-getting-through-door1 begins when Shin-arriving ends.
Shin-getting-through-door1 ends when door1 is unlocked.

Rule for printing the room-description of RRS2 when Shin-getting-through-door1 is happening and the location of key1 is not RRS2:
	say "The surroundings are as dim and dingy as ever. The platform is to the north. The [Shin-outside-windows] and the station exit are to the south. The [Shin-large-mirror] and the [door1] are to the east. The [door13] is to the west. You are unsure what you should do."

Rule for printing the room-description of RRS2 when Shin-getting-through-door1 is happening and the location of key1 is RRS2:
	say "You look again at the dim and dingy surroundings. The platform is to the north. The [Shin-outside-windows] and the station exit are to the south. The [Shin-large-mirror] and the [door1] are to the east. The [door13] is to the west. Maybe you should try unlocking the [door1]."


Chapter - Moving On

Shin-moving-on is a scene.
Shin-moving-on begins when Shin-getting-through-door1 ends.

Rule for printing the room-description of RRS2 when Shin-moving-on is happening:
	say "The dim and dingy surroundings hold no more interest for you. The platform is to the north. The [Shin-outside-windows] and the station exit are to the south. The [Shin-large-mirror] and the [door1] are to the east. The [door13] is to the west."

Every turn when Shin-moving-on is happening and the location is RRS2:
	if RRS3 is visited and RRS4 is visited and the location has been RRS2 for one turn:
		say "There is no more to be done here, time to move on."



Part - Mechanics of the Train Station Lobby

Chapter - Activity Based Room Description

[ We only need one of these for the entire game. Maybe put it in Cragne Suite? ]

Printing the room-description of something is an activity. 

Rule for printing the room-description of a room (called item):
	if the description of the item is not "":
		say "[description of item][paragraph break]";
	otherwise:
		do nothing instead. 

The activity-based room description body text rule is listed instead of the room description body text rule in the carry out looking rules.

This is the activity-based room description body text rule:
	if the visibility level count is 0:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated room descriptions and
			abbreviated form allowed is true and
			darkness witnessed is true,
			continue the action;
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity,
			say "It is pitch dark, and you can't see a thing.";
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated room descriptions and abbreviated form
			allowed is true and the location is visited, continue the action;
		carry out the printing the room-description activity with the location.



Part - Testing The Train Station Lobby

The story headline is "The Train Station Lobby".

Before going from RRS2 for the second time:
	now the player holds key1;

test all with "s / x windows / x mirror / x green door / x brown door / s, n / s, n / unlock green door / open green door / e, w / w, e  / look".
