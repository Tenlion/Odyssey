

// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Cannon_Test";

// --------------- Entity Properties ---------------

_mass = 1;
_acceleration = 0.05;



// --------------- Cannon Properties ---------------

_brake = 0.01;
_turn = 0.01;



// --------------- Track Properties ------------------

_sprTrack = spr_Circle;
_sprTrack_color = c_purple;
_sprTrack_scale = 3;

_track_radius = (sprite_get_width(_sprTrack) * _sprTrack_scale) * 0.5;

_sprMagnet = spr_Circle;
_sprMagnet_color = c_aqua;
_sprMagnet_width_scale = 0.2;
_sprMagnet_height_scale = 0.2;

attachment_distance_from_track = _track_radius + _attachment_distance_from_magnet;
