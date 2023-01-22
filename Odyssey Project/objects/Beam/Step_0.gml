// Inherit the parent event
event_inherited()
// Sets the x,y cords so the beam stays with the attatchment
x = _attachment_id.x;
y = _attachment_id.y;


// updates the beam direction at all times
_sprAttack_rotation =_attachment_id._entity_to_attachment_angle;

//testing to see if the attachment has stoped fireing or overheated and will destroy the beam.
if((_attachment_id._firing == false) || (_attachment_id._overheated== true)){
	instance_destroy();
}