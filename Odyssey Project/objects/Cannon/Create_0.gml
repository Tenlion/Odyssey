
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ----------------------- General Properties ----------------------

// Angles associated with a Cannon and constant elements found within all Cannons.
_cannon_to_magnet_angle = 0;
_cannon_to_attachment_angle = 0;

// The ammo gauge that the cannon is connected to.
_ammo_gauge = 0;



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
_sprTrack_width_scale = 1;
_sprTrack_height_scale = 1;
_sprTrack_rotation = 0;

_track_width = 0;
_track_height = 0;
_track_width_halved = 0;
_track_height_halved = 0;



// ---------------------------- Magnet Properties -----------------------------

_sprMagnet = 0;
_sprMagnet_x = 0;
_sprMagnet_y = 0;
_sprMagnet_color = 0;
_sprMagnet_width_scale = 1;
_sprMagnet_height_scale = 1;

_magnet_distance_from_attachment = 50;

_magnet_to_cursor_angle_difference = 0;

_magnet_rotation_speed = 0;



// ------------------------- Active Attachment Properties ---------------------

_attachment = 0;

