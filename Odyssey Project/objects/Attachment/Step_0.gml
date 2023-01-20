
// Checking to see if the attachment is active.
if (_active == true) {
	
	// Update the angle that the attachment is located at.
	_entity_to_attachment_angle = point_direction(_entity_id.x, _entity_id.y, x, y);

	// Update the attachment's north direction to be accurate to the _entity_to_attachment_angle.
	_direction_north = _entity_to_attachment_angle + NORTH;
}