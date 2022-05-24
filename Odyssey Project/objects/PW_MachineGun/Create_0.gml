
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
weapon_range = 400;
weapon_ammoConsumption = 10;

// Ranged Weapon Properties
ranged_fireType = "Automatic";
ranged_falloff = 0;
ranged_fireRate = 5;
ranged_accuracy = 100;
ranged_multishot = 0;
ranged_punchthrough = 0;
ranged_recoil = 50;
ranged_knockback = 0;

// Projectile Weaponry Properties
weaponProjectile_speed = 10;

// Pistol Unique Properties

