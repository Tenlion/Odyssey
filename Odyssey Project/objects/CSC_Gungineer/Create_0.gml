

// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();



// --------------- Entity Properties ---------------

_mass = 1;
_acceleration = 0.05;



// --------------- Cannon Properties ---------------

_brake = 0.01;
_turn = 0.01;



// --------------- Chassis Properties ---------------

_sprChassis = spr_Square;
_sprChassis_color = c_green;



// ----------------- Ring Properties ----------------

_sprRing = spr_Octagon;
_sprRing_color = c_maroon;
_sprRing_width_scale = 2;
_sprRing_height_scale = 2;
_sprRing_rotation = 0;
_sprRing_rotation_target = 90;
_sprRing_rotation_speed = 0.125;	// 0.0 - 1.0
_sprRing_rotation_adjust = -45;	// -360 - 360

_ring_width = sprite_get_width(_sprRing) * _sprRing_width_scale;
_ring_height = sprite_get_height(_sprRing) * _sprRing_height_scale;
_ring_width_halved = _ring_width * 0.5;
_ring_height_halved = _ring_height * 0.5;

_sprAnchor = spr_Square;
_sprAnchor_x = 0;
_sprAnchor_y = 0;
_sprAnchor_rotation = 0;
_sprAnchor_color = c_aqua;
_sprAnchor_width_scale = 0.2;
_sprAnchor_height_scale = 0.2;

_anchor_angle = 90;



// --------------- Track Properties ------------------

_sprTrack = spr_Circle;
_sprTrack_color = c_purple;
_sprTrack_width_scale = 3;
_sprTrack_height_scale = 3;

_track_width = sprite_get_width(_sprTrack) * _sprTrack_width_scale;
_track_height = sprite_get_height(_sprTrack) * _sprTrack_height_scale;
_track_width_halved = _track_width * 0.5;
_track_height_halved = _track_height * 0.5;

_sprMagnet = spr_Circle;
_sprMagnet_color = c_aqua;
_sprMagnet_width_scale = 0.2;
_sprMagnet_height_scale = 0.2;
