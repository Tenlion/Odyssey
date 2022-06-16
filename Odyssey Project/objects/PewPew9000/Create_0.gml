
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ------------------ Defining PewPew9000 Properties -------------------

// Visuals
_sprAttachment = spr_Diamond;
_sprAttachment_color = c_white;
_sprAttachment_width_scale = 0.5;
_sprAttachment_height_scale = 0.5;


// Attachment Properties
_name = "PewPew9000";
_weight = 1;					// 0 - 180
_ammo_drain = 1;				// 0 - Infinite


// PewPew9000 Unique Properties

// STAT : Damage
// NOTE : Negative damage will heal things.
// RANGE : -Infinite - Infinite
_damage = 10;

// STAT : Range
// NOTE : The maximum range an attack will go.
// RANGE : 0 - Infinite
_range = 500;

// STAT : Fire Time + Fire Accumulator
// NOTE : Fire Time is both fire delay and fire rate.  Fire Accumulator takes in time to appropriate
// when the weapon can fire.
// RANGE : 0 - Infinite
_fire_time = 0.1;
_fire_accumulator = 0;

// STAT : Attack Type
// NOTE : The type of attack that any attachment that uses this as it's parent can take 
// in for it's Projectile Object property.
// RANGE : Object
_attack_type = Projectile;

// STAT : Projectile Object
// NOTE : The exact type of projectile a child of this object will use for it's attacks.
// RANGE : Object
_projectile_object = Bullet;

// STAT : Projectile Count + Projectiles Array
// NOTE : Projectile Count is indicative of how many attack objects are thrown out for every shot.  The array
// simply takes the Projectile Count as it's variable to declare the max number of projectiles stored inside
// of itself.
// RANGE : 1 - Infinite
_projectile_count = 1;
_projectiles = [_projectile_count];

// STAT : Projectile Speed Minimum + Maximum
// NOTE : Setting these properties as the same number will ensure the speed of the shot projectiles are the same.
// RANGE : 0 - Infinite for Minimum + Maxmium
_projectile_speed_min = 5;
_projectile_speed_max = 10;

// STAT : Projectile Acceleration Minimum + Maximum
// NOTE : Setting these properties as the same number will ensure the acceleration of the shot projectiles are the same.
// RANGE : -Infinite - Infinite for Minimum + Maxmium
_projectile_acceleration_min = 0.1;
_projectile_acceleration_max = 0.3;

// STAT : Kick
// NOTE : Negative Kick will cause the attached entity to be pulled in the direction of the shot.
// RANGE : -Infinite - Infinite
_kick_force = 0.2;

// STAT : Knockback
// NOTE : Negative Knockback will cause the entity hit to be pulled toward the projectile they are hit with.
// RANGE : -Infinite - Infinite
_knockback_force = 0.5;

// STAT : Falloff Point
// NOTE : The point in which falloff occurs for the projectiles.  
// Maxing out falloff point will cause a projectile to not have any falloff.
// RANGE : 0 - 1
_falloff_point = _range * 0.5;

// STAT : Falloff Mercy
// NOTE : The level of damage that is fallen off and/or increased from the projectiles after they reach the falloff point.
// Setting this to +2, will cause damage to begin dropping on the Falloff Point from 200% to 0%. (Yes, going above +1 will cause the projectile's damage to increase at the Falloff Point.)
// Setting this to +1, will cause damage to begin dropping on the Falloff Point from 100% to 0%. (This is the standard falloff approach.)
// Setting this to 0, will cause the projectile to do 0 damage after it hits the Falloff Point.  But it will still continue to fly to it's max range.
// Setting this to -1, will cause projectiles to heal from the Falloff Point from 100% to 0% of the damage value.
// Setting this to -2, will cause projectiles to heal from the Falloff Point from 200% to 0% of the damage value.
// Flipping the damage to be negative (healing), will flip all of the healing/damage logic above (does not effect percentage decrease).
// RANGE : -Infinite - Infinite
_falloff_mercy = 1;

// STAT : Accuracy
// NOTE : Accuracy can be messed with using recoil and recovery.
// RANGE : 0 - 100
_accuracy = 100;

// STAT : Recoil
// NOTE : Recoil increases the current accuracy deviation by it's value everytime the attachment is fired.
// RANGE : 0 - 180
_recoil = 2;

// STAT : Recovery
// NOTE : Recovery decreases the current accuracy deviation by it's value while the attachment is not being fired.
// RANGE : 0 - ?
_recovery = 0.3;

// STAT : Accuracy Deviation Max, Base and Current
// NOTE : Deviation Max sets the boundary for how far the accuracy can be deviated from it's base.  Deviation Base
// is the base accuracy of the attachment that is determined by the Accuracy Stat.  Deviation Current is the property that
// is fucked with everytime a shot is fired.
// RANGE : 0 - 180 for Deviation Max
_accuracy_deviation_max = 45;
_accuracy_deviation_base = (100 - _accuracy) * 0.5;
_accuracy_deviation_current = _accuracy_deviation_base;

// STAT : Spawn Radius
// NOTE : This stat works similarly to the barrel width of a shotgun.  Projectiles always come out of a shotgun's barrel, but
// where they originate from at the end of the barrel is limited by the barrel's width.  Spawn Radius simulates this effect.
// Most attachments will probably have a spawn radius of 0, but for attachments with larger barrels that shoot a ton of projectiles...
// Well, this stat is made for them.
// RANGE : 0 - Infinite
_spawn_radius = 30;



_trigger_type = "Held";
_firing = false;

_line_active = true;
_line_length = _range * 1;

_projectile_width_scale = 0.1;
_projectile_height_scale = 0.1;
_projectile_width_halved = (sprite_get_width(spr_Square) * _projectile_width_scale) * 0.5;