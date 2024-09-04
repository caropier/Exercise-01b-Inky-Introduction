/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east, west, and there is un upward opening.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Take the upward opening] -> upward_opening
* [Pick up the torch] -> torch_pickup
* [Dig straight down] -> minecraft_reference

== east_tunnel == 
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. You can't see much, but you hear a small sound in the distance.
* [Go Forward] -> go_forward
* {go_forward} [Go forward] -> continue_forward
+ [Go Back] -> cave_mouth
->END

== upward_opening == 
You try to get leverage by climbing up the south wall. You fall and gravely injure yourself leaving you unable to move.
+ [Go Back] -> cave_mouth
-> END

== minecraft_reference == 
You squint around and manage to find a tool. It's a shovel. Only one way to go...
* [dig straight down] -> dont_mine_at_night
+ [Go Back] -> cave_mouth

== dont_mine_at_night == 
you continue digging until there is no more ground below you... you fall through straight into a lava pit.. ouch. 
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

=== go_forward ===
You decide to explore further with your hopes at an all time low...
* [Continue] -> continue_forward
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== continue_forward ==
You don't find an exit, but instead find a mysterious creature sleeping soundly ahead. As you turn to leave, you kick a pile of rocks awakening the beast. You are no match. 
-> END

