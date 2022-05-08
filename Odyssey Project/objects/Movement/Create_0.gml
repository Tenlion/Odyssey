/* 

Stuff That I Finished
+ Optimize it all and then document it.
	SOLVED : Done.
+ Think if you want to add boosting, otherwise just check if optimization is finished and then you're good to move onto the next objective.
	SOLVED : Hyper Light Movement (Camera zooms out, stops player(s) to charge hyperlighting and slows down all entities by a noticeable amount during the hyperlighting.  
	It acts as a super booster.  You can move a little bit during the hyperlight.)  Will do this later. :P
+ Maybe add Else Ifs?  But maybe not since the dot could hit two edges at once?
	SOLVED : Added Else Ifs to the boundary logic.  They work on North/South and West/East because it's impossible to hit those edges at once.
+ Take calculations out of container code to increase efficiency.
	SOLVED : Moved the calculations and variables that were being created in Step to the Create Event.
+ Rename drag to something else.  Also maybe rename turn? ("Turn" might be fine to be honest.)
	SOLVED : Renamed.  Did NOT change "turn" though.  Turn is a fine name.
+ Check if #3 is necessary.  The "issue" might all just be an illusion.  Needs debug variable testing to see though.
	SOLVED : It was an illusion.
+ Define the force, weight, speed and drag variables.  See if speed is even necessary.  Speed could just be replaced with weight.  Or you can do a force and weight system.
	SOLVED : Decided to use a mass, push and pull method to create what I'm calling force and drag.  Details are inside the Player Object - Create Event.
+ Get the Movement Dot to stay inside it's container.
	SOLVED : Function calculation wasn't halving the value of the sprite's given width.
+ Transition the moveContainer to the center of the room.
	SOLVED : Moved.
+ Fix negative and positive values being reversed with the MoveDot's position inside the sprite. 
	SOLVED : Function calculation had a subtraction expression that needed to have it's variables flipped.)

*/

// Setting the object to the center of the room.
x = room_width * 0.5;
y = room_height * 0.5;

// Defining the anchor variables with the current position of the movement object.
anchorX = x;
anchorY = y;



// Defining the container width with it's corresponding sprite.
var container_width = sprite_get_width(spr_MoveContainer);

// Defining the max distances the object is capable of going.
maxDistance = container_width * 0.5;
maxDistance_north = anchorY - maxDistance;
maxDistance_south = anchorY + maxDistance;
maxDistance_west = anchorX - maxDistance;
maxDistance_east = anchorX + maxDistance;

// Defining the speed values for how fast the movement object should translate throughout it's container under different circumstances.
movement_speed = (container_width * Player.push) / (container_width * Player.mass);
centering_speed = (container_width * 0.5) * Player.pull;
alignment_speed = (container_width * 0.5) * Player.turn;

// Variables that hold the axis data of the object's relation inside it's container.
dot_relation_in_containerX = 0;
dot_relation_in_containerY = 0;
