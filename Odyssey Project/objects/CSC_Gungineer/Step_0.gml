
// ---------------------------- Pre-Processing ------------------------------

// Inheriting the Parent Step Event.
event_inherited();





// --------------------------------- Ring -----------------------------------

if (keyboard_check_pressed(ord(" ")) == true) {
	
	ring_sprite_rotation_target = _angle_fix(ring_sprite_rotation_target + ring_sprite_rotation_adjust);
}

if (ring_sprite_rotation != ring_sprite_rotation_target) {

	var currentAngle_to_targetAngle_difference = angle_difference(ring_sprite_rotation_target, ring_sprite_rotation);
	
	ring_sprite_rotation += currentAngle_to_targetAngle_difference * ring_sprite_rotation_speed;
}





// -------------------------------- Track ------------------------------------

if (cannon_to_magnet_angle != cannon_to_cursor_angle) {

	magnet_to_cursor_angle_difference = angle_difference(cannon_to_cursor_angle, cannon_to_magnet_angle);
	
	cannon_to_magnet_angle += magnet_to_cursor_angle_difference * magnet_rotation_speed;
}





// ------------------ Positioning All Elements of the Cannon ----------------------

anchor_sprite_x = cannon_x + lengthdir_x(ring_width_halved, anchor_angle);
anchor_sprite_y = cannon_y + lengthdir_y(ring_height_halved, anchor_angle);

magnet_sprite_x = cannon_x + lengthdir_x(track_width_halved, cannon_to_magnet_angle);
magnet_sprite_y = cannon_y + lengthdir_y(track_height_halved, cannon_to_magnet_angle);

activeAttachment.id.x = cannon_x + lengthdir_x(track_width_halved + magnet_distance_from_attachment, cannon_to_magnet_angle);
activeAttachment.id.y = cannon_y + lengthdir_y(track_height_halved + magnet_distance_from_attachment, cannon_to_magnet_angle);

activeAttachment.attachment_angle = cannon_to_magnet_angle;
