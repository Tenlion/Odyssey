
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Pulse_Gun";



// ------------------ Defining Gun Properties -------------------

// Visuals
_sprAttachment = spr_Diamond;
_sprAttachment_color = c_white;
_sprAttachment_width_scale = 0.5;
_sprAttachment_height_scale = 0.5;

// Attachment Properties
_name = "Pulse_Gun";
_weight = 180;					// 0 - 180

// STAT : Damage
// NOTE : Negative damage will heal things.
// RANGE : -Infinite - Infinite
_damage = 30;

// STAT : Range
// NOTE : The maximum range an attack will go.
// RANGE : 0 - Infinite
_range = 2000;

// STAT : Trigger Type
// NOTE : This property holds the mouse event that the attachment uses to fire the weapon.
// RANGE : "Left Hold", "Left Tap", "Left Release", "Right Hold", "Right Tap" or "Right Release".
_trigger_type = "Left Hold";

// STAT : Fire Time + Fire Accumulator + Firing
// NOTE : Fire Time is both fire delay and fire rate.  Fire Accumulator takes in time to appropriate
// when the weapon can fire.  This accumulator is always defaulted to the Fire Time on creation in order
// to prevent the Step Event from accumulating time into the variable right from the get-go.  Firing is a
// property that is used to tell checks inside the step event whether or not the attachment is actively
// engaged in fire or not.  It is set to false on purpose, do not change it lol.
// RANGE : 0 - Infinite for Fire Time
_fire_time = 0.5;
_fire_accumulator = _fire_time;
_firing = false;

//STAT : Overheating
//NOTE : Overheat max is how long the laser can be fired continuesly before it overheat and must cooldown
//Works well with beam lasers and depending on how long pulse lasers last.

_overheat_max = 5;
_heat = 0;
_overheated = false;

// STAT : Attack Type
// NOTE : The type of attack that any attachment that uses this as it's parent can take 
// in for it's Projectile Object property.
// RANGE : Object
_attack_type = Projectile;

// STAT : Laser Object
// NOTE : The exact type of Laser a child of this object will use for it's attacks.
// RANGE : Object
_laser_object = Pulse;

// STAT : Laser Sprite
// NOTE : This is used to store the attachment's current Laser sprite for the Draw Event to use.  This property is created in case
// the developers wish to switch out the type of Laser that'll be thrown out of any attachment created by this template mid-game.
// RANGE : Sprite
var temporary_projectile = instance_create_layer(x, y, 0, _laser_object);
_laser_sprite = _laser_object._sprAttack;
instance_destroy(temporary_projectile);



// STAT : Laser Count + Projectiles Array
// NOTE : Laser Count is indicative of how many attack objects are thrown out for every shot.  The array
// simply takes the Laser Count as it's variable to declare the max number of projectiles stored inside
// of itself.  Laser Count does NOT effect ammo consumption.
// RANGE : 1 - Infinite for Laser Count
_laser_count = 1;
_lasers = [_laser_count];


// STAT : Kick
// NOTE : Negative Kick will cause the attached entity to be pulled in the direction of the shot.
// RANGE : -Infinite - Infinite
_kick_force = 0.3;

// STAT : Knockback
// NOTE : Negative Knockback will cause the entity hit to be pulled toward the Laser they are hit with.
// RANGE : -Infinite - Infinite
_knockback_force = 0;

// STAT : Falloff Point
// NOTE : The point in which falloff occurs for the Laser.  
// Maxing out falloff point will cause a Laser to not have any falloff.
// RANGE : 0 - 1
_falloff_point = _range * 1;

// STAT : Falloff Mercy
// NOTE : The level of damage that is fallen off and/or increased from the Laser after they reach the falloff point.
// Setting this to +2, will cause damage to begin dropping on the Falloff Point from 200% to 0%. (Yes, going above +1 will cause the projectile's damage to increase at the Falloff Point.)
// Setting this to +1, will cause damage to begin dropping on the Falloff Point from 100% to 0%. (This is the standard falloff approach.)
// Setting this to 0, will cause the Laser to do 0 damage after it hits the Falloff Point.  But it will still continue to fly to it's max range.
// Setting this to -1, will cause Laser to heal from the Falloff Point from 100% to 0% of the damage value.
// Setting this to -2, will cause Laser to heal from the Falloff Point from 200% to 0% of the damage value.
// Flipping the damage to be negative (healing), will flip all of the healing/damage logic above (does not effect percentage decrease).
// RANGE : -Infinite - Infinite
_falloff_mercy = 1;

// STAT : Accuracy
// NOTE : Accuracy can be messed with using recoil and recovery.
// RANGE : 0 - 100
//Only works with Pulse Lasers
_accuracy = 90;

// STAT : Accuracy Deviation Max, Base and Current
// NOTE : Deviation Max sets the boundary for how far the accuracy can be deviated from it's base.  Deviation Base
// is the base accuracy of the attachment that is determined by the Accuracy Stat.  Deviation Current is the property that
// is fucked with everytime a shot is fired.
// RANGE : 0 - 180 for Deviation Max
_accuracy_deviation_max = 10;
_accuracy_deviation_base = (100 - _accuracy) * 0.5;
_accuracy_deviation_current = _accuracy_deviation_base;

// STAT : Recoil
// NOTE : Recoil increases the current accuracy deviation by it's value everytime the attachment is fired.
// RANGE : 0 - 180
_recoil = 1;

// STAT : Recovery
// NOTE : Recovery decreases the current accuracy deviation by it's value while the attachment is not being fired.
// RANGE : 0 - 1 is advised, but it does have the capability to go up to 180.  However, it would be very rare for an attachment
// to EVER have the need to go past 1.
_recovery = 0.1;

// STAT : Line Active
// NOTE : Determines whether or not accuracy lines are enabled for the attachment.
// RANGE : True or False
_line_active = false;

// STAT : Line Length Control + Line Length
// NOTE : Control determines how long the accuracy lines are.  Up to a max of the attachment's range stat.
// Line Length is the exact value of accuracy lines length based on the controller and _range.
// RANGE : 0 - 1 for Line Length Control
_line_length_control = 0.5;
_line_length = _range * _line_length_control;

// STAT : Spawn Radius
// NOTE : This stat works similarly to the barrel width of a shotgun.  Laser always come out of a shotgun's barrel, but
// where they originate from at the end of the barrel is limited by the barrel's width.  Spawn Radius simulates this effect.
// Most attachments will probably have a spawn radius of 0, but for attachments with larger barrels that shoot a ton of projectiles...
// Well, this stat is made for them.
// RANGE : 0 - Infinite
_spawn_radius = 1;

//STAT : How wide the laser will be
_laser_width = 50;

//STAT : How wide the endpoint of the laser willl be in degrees. Acts like a flashlight
//Range 0 - 180. Advised not to go past 90
_laser_spread = 0;