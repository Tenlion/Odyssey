
// ---------------------------- Pre-Processing ------------------------------

// Inheriting the Parent Step Event.
event_inherited();



// -------------------------------- Track ------------------------------------

if (_attachment._entity_to_attachment_angle != _cannon_to_cursor_angle) {

	_attachment_to_cursor_angle_difference = angle_difference(_cannon_to_cursor_angle, _attachment._entity_to_attachment_angle);

	_attachment._entity_to_attachment_angle += _number_to_number(0, _attachment_to_cursor_angle_difference, _attachment._weight * global.DELTA_MULTIPLIER);
}





// ------------------ Positioning All Elements of the Cannon ------------------

_sprMagnet_x = x + lengthdir_x(_track_radius, _attachment._entity_to_attachment_angle);
_sprMagnet_y = y + lengthdir_y(_track_radius, _attachment._entity_to_attachment_angle);

_attachment.x = x + lengthdir_x(attachment_distance_from_track, _attachment._entity_to_attachment_angle);
_attachment.y = y + lengthdir_y(attachment_distance_from_track, _attachment._entity_to_attachment_angle);

for (var attach = 0; attach < _number_of_attachments; attach++) {

	if (_attachments[attach]._active != true) {

		_attachments[attach].x = x + lengthdir_x(attachment_distance_from_track, _attachments[attach]._entity_to_attachment_angle);
		_attachments[attach].y = y + lengthdir_y(attachment_distance_from_track, _attachments[attach]._entity_to_attachment_angle);
	}
}
