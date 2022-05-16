
// Movement dot transitions by the player object's set speed in a direction corresponding to the WASD layout.
if (keyboard_check(ord("W")) == true) { dotY -= movement_speed; }
if (keyboard_check(ord("S")) == true) { dotY += movement_speed; }
if (keyboard_check(ord("A")) == true) { dotX -= movement_speed; }
if (keyboard_check(ord("D")) == true) { dotX += movement_speed; }



// Checking if no movement is active.  If true, move the dot to the center of the container using centering_speed.
// Afterwards, check if opposing directional keys are false.  If true, move the dot to the opposite axis associated 
// with both keys using alignment_speed.
if	(keyboard_check(ord("W")) == false) &&
	(keyboard_check(ord("S")) == false) &&
	(keyboard_check(ord("A")) == false) &&
	(keyboard_check(ord("D")) == false) {

		dotX = _move_to_target_straightX(dotX, dotY, containerX, containerY, centering_speed);
		dotY = _move_to_target_straightY(dotX, dotY, containerX, containerY, centering_speed);
}

else if	(keyboard_check(ord("W")) == false) &&
		(keyboard_check(ord("S")) == false) {
	
		dotY = _move_to_target_straightY(dotX, dotY, dotX, containerY, alignment_speed);
}

else if	(keyboard_check(ord("A")) == false) &&
		(keyboard_check(ord("D")) == false) {
	
		dotX = _move_to_target_straightX(dotX, dotY, containerX, dotY, alignment_speed);
}



// Obtaining the relative value associated with the position of the Movement Object inside it's container sprite.
dot_relation_in_containerX = _relPosX_inSprite_real(dotX, container_width, containerX);
dot_relation_in_containerY = _relPosY_inSprite_real(dotY, container_height, containerY);



// Checks that ensure thee movement dot stays inside it's container.
// When a check block is active, then the movement dot has reached an edge of it's container.
if		(dot_relation_in_containerX >= 1)	{ dotX = maxDistance_east; }
else if (dot_relation_in_containerX <= -1)	{ dotX = maxDistance_west; }

if		(dot_relation_in_containerY >= 1)	{ dotY = maxDistance_south; }
else if (dot_relation_in_containerY <= -1)	{ dotY = maxDistance_north; }



// Positioning the player object.
Player.x += dot_relation_in_containerX * movement_speed;
Player.y += dot_relation_in_containerY * movement_speed;
