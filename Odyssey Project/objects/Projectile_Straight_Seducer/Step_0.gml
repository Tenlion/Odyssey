
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Seducer";

// Creating a variable to hold the instance id of the opposing entity.

if (position_meeting(x, y, _attachment_foe) == true) {
		
	// Creating a variable to hold the instance id of the opposing entity.
	var foe_instance = instance_position(x, y, _attachment_foe);
	
	// Lowering the life of the foe by _damage_current.
	foe_instance._life -= _damage_current;
	
	// Calculating knockback using knockback force and the entity's mass.
	var knockback = _knockback_force / foe_instance._mass;
	
	// Knocking back the entity in the direction the instance was traveling by the calculated knockback value above.
	foe_instance._force_x += lengthdir_x(knockback, _direction);
	foe_instance._force_y += lengthdir_y(knockback, _direction);
	
	// The instance has done it's job, so it's time for it to be erased.
	
	
	_near_foe = instance_find(Enemy,1);
	
	(_near_foe.id == foe_instance.id){
		_near_foe = instance_find(Enemy,1);
	}
	
	
	foe_instance._foe = _near_foe;
	
	
	instance_destroy();
}


// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0) { instance_destroy(); }

// Checking if the _speed is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they have 0 speed.)
else if (_speed <= 0) { instance_destroy(); }