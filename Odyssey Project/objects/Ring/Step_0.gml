
anchorX = Player.x;
anchorY = Player.y;

cursorX = device_mouse_x_to_gui(0);
cursorY = device_mouse_y_to_gui(0);

weapon_position_x = anchorX + lengthdir_x(ring_width_half, point_direction(anchorX, anchorY, cursorX, cursorY));
weapon_position_y = anchorY + lengthdir_y(ring_height_half, point_direction(anchorX, anchorY, cursorX, cursorY));

Weapon.x = weapon_position_x;
Weapon.y = weapon_position_y;

Ring.x = Player.x;
Ring.y = Player.y;

/*
//----------------------------- PRE-PROCESSING -----------------------------

moveDotX_Unique = _angle_fix(moveDotX_Unique);
moveDotY_Unique = _angle_fix(moveDotY_Unique);

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

