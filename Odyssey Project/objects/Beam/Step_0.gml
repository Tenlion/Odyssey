
// Inherit the parent event
event_inherited()

x = _attachment_id.x
y = _attachment_id.y



_sprAttack_rotation =_attachment_id._entity_to_attachment_angle;

if((_attachment_id._firing == false) || (_attachment_id._overheated== true)){
	instance_destroy();
}
