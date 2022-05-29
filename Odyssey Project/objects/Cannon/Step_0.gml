
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

// Obtaining the angles associated with every Cannon.
cannon_to_cursor_angle = point_direction(x, y, cursor_x, cursor_y);
cannon_to_magnet_angle = point_direction(x, y, magnet_sprite_x, magnet_sprite_y);





// --------------------------- Movement ---------------------------------

if (keyboard_check(ord("W")) == true) { entity_force_y -= entity_acceleration; }
if (keyboard_check(ord("S")) == true) { entity_force_y += entity_acceleration; }
if (keyboard_check(ord("A")) == true) { entity_force_x -= entity_acceleration; }
if (keyboard_check(ord("D")) == true) { entity_force_x += entity_acceleration; }



if	(keyboard_check(ord("W")) == false) &&
	(keyboard_check(ord("S")) == false) &&
	(keyboard_check(ord("A")) == false) &&
	(keyboard_check(ord("D")) == false) {
	
		entity_force_x = _value_to_zero(entity_force_x, cannon_brake);
		entity_force_y = _value_to_zero(entity_force_y, cannon_brake);
}

else if	(keyboard_check(ord("W")) == false) &&
		(keyboard_check(ord("S")) == false) {
	
		entity_force_y = _value_to_zero(entity_force_y, cannon_turn);
}

else if	(keyboard_check(ord("A")) == false) &&
		(keyboard_check(ord("D")) == false) {
	
		entity_force_x = _value_to_zero(entity_force_x, cannon_turn);
}



cannon_speed_x = ((entity_force_x / entity_mass) * entity_speed);
cannon_speed_y = ((entity_force_y / entity_mass) * entity_speed);

cannon_position_x = x + cannon_speed_x;
cannon_position_y = y + cannon_speed_y;

entity_direction = point_direction(x, y, cannon_position_x, cannon_position_y);

x = cannon_position_x;
y = cannon_position_y;


/*
/ ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

// Storing the Cannon's current location into designated properties.
cannon_x = x;
cannon_y = y;

// Obtaining the angles associated with every Cannon.
cannon_to_cursor_angle = point_direction(cannon_x, cannon_y, cursor_x, cursor_y);
cannon_to_magnet_angle = point_direction(cannon_x, cannon_y, magnet_sprite_x, magnet_sprite_y);



// --------------------------- Movement ---------------------------------

// Movement dot transitions by the player object's set speed in a direction corresponding to the WASD layout.
if (keyboard_check(ord("W")) == true) { moveDot_y -= (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed); }
if (keyboard_check(ord("S")) == true) { moveDot_y += (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed); }
if (keyboard_check(ord("A")) == true) { moveDot_x -= (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed); }
if (keyboard_check(ord("D")) == true) { moveDot_x += (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed); }



// Checking if no movement is active.  If true, move the dot to the center of the container using centering_speed.
// Afterwards, check if the opposing directional keys are false.  If true, move the dot to the opposite axis associated 
// with both keys using the appropriate alignment_speed.
if	(keyboard_check(ord("W")) == false) &&
	(keyboard_check(ord("S")) == false) &&
	(keyboard_check(ord("A")) == false) &&
	(keyboard_check(ord("D")) == false) {

		moveDot_x = _move_to_target_straightX(moveDot_x, moveDot_y, moveContainer_x, moveContainer_y, ((moveContainer_width * 0.01) * cannon_brake) * entity_speed);
		moveDot_y = _move_to_target_straightY(moveDot_x, moveDot_y, moveContainer_x, moveContainer_y, ((moveContainer_height * 0.01) * cannon_brake) * entity_speed);
}

else if	(keyboard_check(ord("W")) == false) &&
		(keyboard_check(ord("S")) == false) {
	
		moveDot_y = _move_to_target_straightY(moveDot_x, moveDot_y, moveDot_x, moveContainer_y, ((moveContainer_height * 0.01) * cannon_turn) * entity_speed);
}

else if	(keyboard_check(ord("A")) == false) &&
		(keyboard_check(ord("D")) == false) {
	
		moveDot_x = _move_to_target_straightX(moveDot_x, moveDot_y, moveContainer_x, moveDot_y, ((moveContainer_width * 0.01) * cannon_turn) * entity_speed);
}



// Obtaining the relative value associated with the position of the Movement Object inside it's container sprite.
dot_relation_in_container_x = _relPosX_inSprite_real(moveDot_x, moveContainer_width, moveContainer_x);
dot_relation_in_container_y = _relPosY_inSprite_real(moveDot_y, moveContainer_height, moveContainer_y);



// Checks that ensure thee movement dot stays inside it's container.
// When a check block is active, then the movement dot has reached an edge of it's container.
if		(dot_relation_in_container_x >= 1)	{ moveDot_x = maxDistance_east; }
else if (dot_relation_in_container_x <= -1)	{ moveDot_x = maxDistance_west; }

if		(dot_relation_in_container_y >= 1)	{ moveDot_y = maxDistance_south; }
else if (dot_relation_in_container_y <= -1)	{ moveDot_y = maxDistance_north; }



// X and Y values for any item that uses this form of movement.
x += dot_relation_in_container_x * (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed);
y += dot_relation_in_container_y * (((moveContainer_width * entity_force) / (moveContainer_width * entity_mass)) * entity_speed);
