
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Cannon";


// ----------------------- General Properties ----------------------

// Properties to hold the cursor's location.
_cursor_x = 0;
_cursor_y = 0;

// Angles associated with a Cannon and constant elements found within all Cannons.
_cannon_to_magnet_angle = 0;
_cannon_to_cursor_angle = 0;

// Cannon Adversary
_foe = Enemy;



// ----------------------- Movement Properties ------------------------

// Higher Brake = Shorter distance in which the Cannon slides.
// Lower Brake = Longer distance for the Cannon to slide.
_brake = 0;	// ADVISED : 0 - 1 Real

// Higher Turn = Shorter time for the Cannon to align to the desired direction.
// Lower Turn = Longer time for the Cannon to align to the desired direction.
_turn = 0;	// ADVISED : 0 - 1 Real



// ---------------------------- Track Properties -----------------------------

_sprTrack = spr_Square;
_sprTrack_color = 0;
_sprTrack_scale = 1;
_sprTrack_rotation = 0;

_track_radius = 0;



// ---------------------------- Magnet Properties -----------------------------

_sprMagnet = 0;
_sprMagnet_x = 0;
_sprMagnet_y = 0;
_sprMagnet_color = 0;
_sprMagnet_width_scale = 1;
_sprMagnet_height_scale = 1;

_attachment_distance_from_magnet = 50;

_attachment_to_cursor_angle_difference = 0;



// --------------------------- Attachment Properties ---------------------------

_attachment = 0;

// Creating Attachments and Slots
_number_of_attachments = 4;
_attachments = [_number_of_attachments];
_slots = [_number_of_attachments];

for (var attach = 0; attach < _number_of_attachments; attach++) {
	
	_attachments[attach] = instance_create_layer(0, 0, "Visible Things", Beam_Gun);
	_attachments[attach]._entity_id = id;
	_attachments[attach]._entity_foe = _foe;
	
	_slots[attach] = instance_create_layer(0, 0, "Invisible Things", Slot);
	_slots[attach]._key_value = string(attach + 1);
	_slots[attach]._item_id = _attachments[attach];
	_slots[attach]._entity_id = id;
}