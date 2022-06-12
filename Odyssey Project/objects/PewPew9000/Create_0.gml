
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ------------------ Defining PewPew9000 Properties -------------------

// Attachment Properties
_name = "PewPew9000";
_weight = 1;					// 0 - 180
_ammo_drain = 1;				// 0 - Infinite
_sprAttachment = spr_Diamond;
_sprAttachment_color = c_white;
_sprAttachment_width_scale = 0.5;
_sprAttachment_height_scale = 0.5;

// PewPew9000 Unique Properties
_damage = 10;					// -Infinite to Infinite
_range = 2000;					// 0 - Infinite

_fire_time = 0.05;				// 0 - Infinite (Fire Time is both fire delay + fire rate.)
_fire_accumulator = 0;

_projectile_count = 5;				// 1 - Infinite
_projectile_object = Bullet;
_projectiles = [_projectile_count];
_projectile_speed = 1;					// 0 - 1
_projectile_speed_min = 15;				// 0 - Infinite
_projectile_speed_max = 18;				// 0 - Infinite
_projectile_acceleration = 1;			// 0 - 1
_projectile_acceleration_min = 0.1;		// -Infinite - Infinite
_projectile_acceleration_max = 0.3;		// -Infinite - Infinite

_kick = 0;
_kick_force = 0.5;	// -Infinite - Infinite
_kick_angle = 0;

_knockback_force = 0.5;	// -Infinite - Infinite

_punchthrough = 0;
_falloff = 0;

_attack_direction = 0;
_accuracy = 95;					// 0 - 100
_recoil = 0.1;					// 0 - 50
_recovery = 0.1;				// 0 - 50
_accuracy_deviation_max = 10;	// 0 - 90
_accuracy_deviation_base = (100 - _accuracy) * 0.5;
_accuracy_deviation = _accuracy_deviation_base;

_spawn_radius = 10;		// 0 - Infinite
_spawn_deviation = 0;

_endx_line_1 = 0;
_endy_line_1 = 0;
_endx_line_2 = 0;
_endy_line_2 = 0;

_startx_line_1 = 0;
_starty_line_1 = 0;
_startx_line_2 = 0;
_starty_line_2 = 0;