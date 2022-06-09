
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();

_fire_type = "";
_fire_time = 0;
_fire_accumulator = _fire_time;

_kick = 0;
_kick_force = 0;
_kick_angle = 0;

_knockback_force = 0;

_projectile_count = 1;
_projectiles = [_projectile_count];
_projectile_speed = 0;
_projectile_acceleration = 0;

_punchthrough = 0;
_recoil = 0;
