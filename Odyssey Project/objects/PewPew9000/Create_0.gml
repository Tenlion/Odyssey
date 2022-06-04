
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ------------------ Defining PewPew9000 Properties -------------------

// PewPew9000 Unique Properties
_damage = 10;
_crit_max = 100;
_crit_count = 25;
_crit_multiplier = 2;
_crit_accumulator = 0;

// Gun Properties
_fire_type = "Automatic";
_fire_rate = 10;
_kick_force = 1;
_kick_speed = 1;
_kick_step = 0;
_knockback_force = 1;
_knockback_speed = 1;
_projectile_count = 1;
_projectiles = [_projectile_count];
_projectile_speed = 5;
_projectile_acceleration = 0.1;
_punchthrough = 0;
_recoil = 0;

// Ranged Properties
_range = 1200;
_falloff = 0;
_accuracy = 0;

// Attachment Properties
_sprAttachment = spr_Diamond;
_sprAttachment_color = c_white;
_sprAttachment_width_scale = 0.5;
_sprAttachment_height_scale = 0.5;
_ammo_drain = 5;
