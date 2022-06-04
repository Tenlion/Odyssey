
// ---------------------------- Pre-Processing ------------------------------

// Inheriting the Parent Step Event.
event_inherited();





// --------------------------------- Ring -----------------------------------

if (keyboard_check_pressed(ord(" ")) == true) {
	
	_sprRing_rotation_target = _angle_fix(_sprRing_rotation_target + _sprRing_rotation_adjust);
}



if (_sprRing_rotation != _sprRing_rotation_target) {

	var currentAngle_to_targetAngle_difference = angle_difference(_sprRing_rotation_target, _sprRing_rotation);
	
	_sprRing_rotation += currentAngle_to_targetAngle_difference * _sprRing_rotation_speed;
}





// -------------------------------- Track ------------------------------------

if (_cannon_to_attachment_angle != _player_to_cursor_angle) {

	_attachment_to_cursor_angle_difference = angle_difference(_player_to_cursor_angle, _cannon_to_attachment_angle);

	_cannon_to_attachment_angle += _attachment_to_cursor_angle_difference - _value_to_desired_value(_attachment_to_cursor_angle_difference, 0, _attachment._weight);
}





// ------------------ Positioning All Elements of the Cannon ------------------

_sprAnchor_x = x + lengthdir_x(_ring_width_halved, _anchor_angle);
_sprAnchor_y = y + lengthdir_y(_ring_height_halved, _anchor_angle);

_sprMagnet_x = x + lengthdir_x(_track_width_halved, _cannon_to_attachment_angle);
_sprMagnet_y = y + lengthdir_y(_track_height_halved, _cannon_to_attachment_angle);

_attachment.x = x + lengthdir_x(_track_width_halved + _magnet_distance_from_attachment, _cannon_to_attachment_angle);
_attachment.y = y + lengthdir_y(_track_height_halved + _magnet_distance_from_attachment, _cannon_to_attachment_angle);

_attachment._angle = _cannon_to_attachment_angle;



for (var attach = 0; attach < _number_of_attachments; attach++) {
	
	if (_attachments[attach]._active != true) {
	
		_attachments[attach].x = x + lengthdir_x(_track_width_halved + _magnet_distance_from_attachment, _attachments[attach]._angle);
		_attachments[attach].y = y + lengthdir_y(_track_height_halved + _magnet_distance_from_attachment, _attachments[attach]._angle);
	}
}
