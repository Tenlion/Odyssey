/* 

Stuff To Do
1. Rename drag to something else.  Also maybe rename turn? ("Turn" might be fine to be honest.)
2. Take calculations out of container code to increase efficiency.
3. Maybe add Else Ifs?  But maybe not since the dot could hit two edges at once?
4. Think if you want to add boosting, otherwise just check if optimization is finished and then you're good to move onto the next objective.
5. Optimize it all.

Stuff That I Finished
+ Check if #3 is necessary.  The "issue" might all just be an illusion.  Needs debug variable testing to see though.
	ISSUE : It was an illusion.
+ Define the force, weight, speed and drag variables.  See if speed is even necessary.  Speed could just be replaced with weight.  Or you can do a force and weight system.
	ISSUE : Decided to use a mass, push and pull method to create what I'm calling force and drag.  Details are inside the Player Object - Create Event.
+ Get the Movement Dot to stay inside it's container. 
	ISSUE : Function calculation wasn't halving the value of the sprite's given width.)
+ Transition the moveContainer to the center of the room.
	ISSUE : Moved.
+ Fix negative and positive values being reversed with the MoveDot's position inside the sprite. 
	ISSUE : Function calculation had a subtraction expression that needed to have it's variables flipped.)

*/

x = room_width * 0.5;
y = room_height * 0.5;

anchorX = x;	// anchorX : Creating an anchor for the Movement Object's original X position.
anchorY = y;	// anchorY : Creating an anchor for the Movement Object's original Y position.
moveMaxDistance = sprite_get_width(spr_MoveContainer) * 0.5;

force = (sprite_get_width(spr_MoveContainer) * Player.push) / (sprite_get_width(spr_MoveContainer) * Player.mass);

slide = sprite_get_width(spr_MoveContainer) * Player.pull;

drag = slide * Player.turn;
