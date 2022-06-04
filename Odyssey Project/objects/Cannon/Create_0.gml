
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ----------------------- General Properties ----------------------

// Angles associated with a Cannon and constant elements found within all Cannons.
_cannon_to_magnet_angle = 0;
_cannon_to_attachment_angle = 0;

// The ammo gauge that the cannon is connected to.
_ammo_gauge = instance_create_layer(0, 0, "Visible Things", Ammo);



// ----------------------- Movement Properties ------------------------

// Higher Brake = Shorter distance in which the Cannon slides.
// Lower Brake = Longer distance for the Cannon to slide.
_brake = 0;	// ADVISED : 0 - 1 Real

// Higher Turn = Shorter time for the Cannon to align to the desired direction.
// Lower Turn = Longer time for the Cannon to align to the desired direction.
_turn = 0;	// ADVISED : 0 - 1 Real



// --------------------------- Chassis Properties ---------------------------

_sprChassis = 0;
_sprChassis_color = 0;
_sprChassis_width_scale = 1;
_sprChassis_height_scale = 1;
_sprChassis_rotation = 0;



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
	
	_attachments[attach] = instance_create_layer(0, 0, "Visible Things", PewPew9000);
	_attachments[attach]._entity_id = id;
	_attachments[attach]._entity_foe = _foe;
	_attachments[attach]._ammo_gauge_id = _ammo_gauge;
	
	_slots[attach] = instance_create_layer(0, 0, "Invisible Things", Slot);
	_slots[attach]._key_value = string(attach + 1);
	_slots[attach]._item_id = _attachments[attach];
	_slots[attach]._entity_id = id;
}

_attachments[0]._weight = 180;
_attachments[1]._weight = 5;
_attachments[2]._weight = 1;
_attachments[3]._weight = 0.5;
