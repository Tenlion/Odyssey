
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ------------------ Defining Pistol Properties -------------------

// Attachment Properties
attachment_sprite = spr_Diamond;
attachment_sprite_color = c_white;
attachment_sprite_width_scale = 0.5;
attachment_sprite_height_scale = 0.5;

// Weapon Properties
weapon_damage = 10;
weapon_weakspot_multiplier = 2;
weapon_weakspot_damage = weapon_damage * weapon_weakspot_multiplier;
weapon_crit_multiplier = 2;
weapon_crit_count = 20;
weapon_crit_damage = weapon_damage * weapon_crit_multiplier;
weapon_range = 1200;
weapon_ammo_consumption = 5;

// Ranged Weapon Properties
ranged_fire_type = "Automatic";
ranged_falloff = weapon_range * 0.5;
ranged_fire_rate = 10;
ranged_accuracy = 100;
ranged_shot_count = 1;
ranged_shot_array = [ranged_shot_count];
ranged_punchthrough = 0;
ranged_kick = 100;
ranged_kick_speed = 0.1;
ranged_recoil = 0;

// Projectile Weaponry Properties
wProjectile_speed = 5;
wProjectile_acceleration = 0.1;

// Pistol Unique Properties
gun_attack = 0;
