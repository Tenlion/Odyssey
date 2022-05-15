
// Movement dot transitions by the player object's set speed in a direction corresponding to the WASD layout.
if (keyboard_check(ord("W")) == true) { y -= movement_speed; }
if (keyboard_check(ord("S")) == true) { y += movement_speed; }
if (keyboard_check(ord("A")) == true) { x -= movement_speed; }
if (keyboard_check(ord("D")) == true) { x += movement_speed; }



// Checking if no movement is active.  If true, move the dot to the center of the container using centering_speed.
if	(keyboard_check(ord("W")) == false) &&
	(keyboard_check(ord("S")) == false) &&
	(keyboard_check(ord("A")) == false) &&
	(keyboard_check(ord("D")) == false) {

		_move_to_target_straight(Movement, containerX, containerY, centering_speed);
	}



// Checking if opposing directional keys are false.  If true, move the dot to the opposite axis associated with both keys using alignment_speed.
else if	(keyboard_check(ord("W")) == false) &&
		(keyboard_check(ord("S")) == false) {
	
		_move_to_target_straight(Movement, x, containerY, alignment_speed);
	}

else if	(keyboard_check(ord("A")) == false) &&
		(keyboard_check(ord("D")) == false) {
	
		_move_to_target_straight(Movement, containerX, y, alignment_speed);
	}



// Obtaining the relative value associated with the position of the Movement Object inside it's container sprite.
dot_relation_in_containerX = _relPosX_inSprite_real(Movement, container_width, containerX);
dot_relation_in_containerY = _relPosY_inSprite_real(Movement, container_height, containerY);



// Checks that ensure thee movement dot stays inside it's container.  
// When a check block is active, then the movement dot has reached an edge of it's container.
if		(dot_relation_in_containerX >= 1)	{ x = maxDistance_east; }
else if (dot_relation_in_containerX <= -1)	{ x = maxDistance_west; }

if		(dot_relation_in_containerY >= 1)	{ y = maxDistance_south; }
else if (dot_relation_in_containerY <= -1)	{ y = maxDistance_north; }



// Positioning the player object.
Player.x += dot_relation_in_containerX * movement_speed;
Player.y += dot_relation_in_containerY * movement_speed;
