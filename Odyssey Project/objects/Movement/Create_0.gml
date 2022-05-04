/* 

Stuff To Do
1. Create a check that looks for whether or not any of the W, A, S or D keys are pressed.  Assign "true" to [variable name] if one or multiple is pressed.
2. Get the Movement Dot to stay inside it's container.

Stuff That I Finished
+ Transition the moveContainer to the center of the room.
+ Fix negative and positive values being reversed with the MoveDot's position inside the sprite. (ISSUE : Function calculation had a subtraction expression that needed to have it's variables flipped.)

*/

x = room_width * 0.5;
y = room_height * 0.5;

anchorX = x;	// anchorX : Creating an anchor for the Movement Object's original X position.
anchorY = y;	// anchorY : Creating an anchor for the Movement Object's original Y position.
moveMaxDistance = sprite_get_width(spr_MoveContainer) * 0.5;





/*
speedMultiplier = 1;
moveDotX_Unique = 0;	// moveDotX_Unique : The moveDot's X position from the range -1 to 1 based on it's current X value within the movement's container.
moveDotY_Unique = 0;	// moveDotY_Unique : The moveDot's Y position from the range -1 to 1 based on it's current Y value within the movement's container.
playerPositionX = 0;
playerPositionY = 0;
moveMaxDistance = sprite_get_width(spr_MoveContainer) * 0.5;	// moveMaxDistance : Using half of the width of the spr_moveCircle to determine the movement's casing.
click = false;				// click : Boolean to determine whether or not there is an active click.
acceptedRange = false;		// acceptedRange : Boolean to determine whether the cursor's position is within the movement's perimeter line.
//distanceFromPlanet = planetRadius + 50;	// playerDistance : Changes the distance the player is from the edge of the Planet Sprite.
cursorX = 0;				// cursorX : Property to hold the current cursor's X position.
cursorY = 0;				// cursorY : Property to hold the current cursor's Y position.
dotMaxX = 0;				// dotMaxX : A property that keeps the movement dot from staying within the bounds of it's casing for the X Position, all while ensuring it is pointing at the cursor if the cursor is outside the boundary.
dotMaxY = 0;				// dotMaxY : A property that keeps the movement dot from staying within the bounds of it's casing for the Y Position, all while ensuring it is pointing at the cursor if the cursor is outside the boundary.
anchorToCursorDist = 0;		// anchorToCursorDist : Property to hold the current distance between the anchor position and cursor position.
