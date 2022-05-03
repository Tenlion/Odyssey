
//----------------------------- PRE-PROCESSING -----------------------------

// Ever-Changing Object Properties
cursorX = device_mouse_x_to_gui(0);																		// cursorX : The mouse cursor's current X position.
cursorY = device_mouse_y_to_gui(0);																		// cursorY : The mouse cursor's current Y position.
dotMaxX = anchorX + lengthdir_x(moveMaxDistance, point_direction(anchorX, anchorY, cursorX, cursorY));	// dotMaxX : A variable that keeps the movement dot within the bounds of it's casing for the X Coordinate, all while ensuring it is pointing at the cursor if the mouse is outside the boundary.
dotMaxY = anchorY + lengthdir_y(moveMaxDistance, point_direction(anchorX, anchorY, cursorX, cursorY));	// dotMaxY : A variable that keeps the movement dot within the bounds of it's casing for the Y Coordinate, all while ensuring it is pointing at the cursor if the mouse is outside the boundary.
anchorToCursorDist = point_distance(anchorX, anchorY, cursorX, cursorY);								// anchorToCursorDist : The current distance between the anchor position and cursor position.

// CHECK : If the anchor-to-cursor distance is LESS THAN OR EQUAL TO the defined maxDistance, then the cursor
// is within the movement's casing.  Otherwise, the cursor is NOT within the casing.
if (anchorToCursorDist <= moveMaxDistance) { acceptedRange = true; } else { acceptedRange = false; }



//------------------------------- MOUSE EVENTS ---------------------------------

// CHECK : If the left mouse click is released for Device 0, then set the click to be false.
if (device_mouse_check_button_released(0, mb_left) == true) { 
	
	click = false;
}

// CHECK : If left mouse click is held down for Device 0 and the click is acceptable, then place the movement object at the cursor's location.
else if ((device_mouse_check_button(0, mb_left) == true) && (acceptedRange == true)) {
	
	click = true;
	_move_to_target_straight(Movement, cursorX, cursorY, weight);
}

// CHECK : If the range is NOT acceptable and the click is active, then set the movement object to the max distance
// of it's casing at an angle that is between the anchored position and the cursor's position.  This ensures that if
// the cursor is outside the movement's casing and a click is still being held, then the movement dot won't leave it's casing.
else if ((acceptedRange == false) && (click == true)) {
	
	_move_to_target_straight(Movement, dotMaxX, dotMaxY, weight);
}

// ELSE : Slowly reset the moveDot to the anchored position.
else {
	
	_move_to_target_straight(Movement, anchorX, anchorY, weight);
}



//-------------------------- PLAYER POSITIONING + SPEED -----------------------------

// Calculating the Player's current speed.
moveDotX_Unique += _relPosX_inSprite_real(Movement, spr_MoveContainer, anchorX);	// moveDotX_Unique : The moveDot's value from the range -1 to 1 based on it's current X position within the movement's container.
moveDotX_Unique = _angle_fix(moveDotX_Unique);
playerPositionX = (moveDotX_Unique * speedMultiplier);	// playerPosition : Calculating the current player speed by multiplying the speedMultiplier to the moveDotX_Unique.

moveDotY_Unique += _relPosY_inSprite_real(Movement, spr_MoveContainer, anchorY);
moveDotY_Unique = _angle_fix(moveDotY_Unique);
playerPositionY = (moveDotY_Unique * speedMultiplier);

// Calculating the Player's current position.
Player.x = playerPositionX;
Player.y = playerPositionY;


if (keyboard_check(ord("W")) == true) { 
	
	Movement.y -= playerSpeed; 
}

if (keyboard_check(ord("S")) == true) { 
	
	Movement.y += playerSpeed; 
}

if (keyboard_check(ord("A")) == true) { 
	
	Movement.x -= playerSpeed; 
}

if (keyboard_check(ord("D")) == true) { 
	
	Movement.x += playerSpeed;
}
