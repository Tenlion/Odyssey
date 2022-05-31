
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



entity_speed_x = ((entity_force_x / entity_mass) * entity_speed);
entity_speed_y = ((entity_force_y / entity_mass) * entity_speed);

cannon_position_x = x + entity_speed_x;
cannon_position_y = y + entity_speed_y;

entity_direction = point_direction(x, y, cannon_position_x, cannon_position_y);

x = cannon_position_x;
y = cannon_position_y;
