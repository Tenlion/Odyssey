
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ------------------ Defining PewPew9000 Properties -------------------

// Attachment Properties
_name = "PewPew9000";
_weight = 1;
_ammo_drain = 5;
_sprAttachment = spr_Diamond;
_sprAttachment_color = c_white;
_sprAttachment_width_scale = 0.5;
_sprAttachment_height_scale = 0.5;

// PewPew9000 Unique Properties
_damage = 10;
_range = 1200;					// 0 - Infinite

_fire_time = 0.2;				// 0 - Infinite (Fire Time is both fire delay and fire rate.)
_fire_accumulator = 0;

_multishot = 1;					// 1 - Infinite
_projectile_object = Bullet;
_projectiles = [_multishot];
_projectile_speed = 5;			// 0 - Infinite
_projectile_acceleration = 0.1;	// -Infinite - Infinite

_kick = 0;
_kick_force = 1;				// -Infinite - Infinite
_kick_angle = 0;

_knockback_force = 1;			// -Infinite - Infinite

_recoil = 0;
_punchthrough = 0;
_falloff = 0;
_accuracy = 0;