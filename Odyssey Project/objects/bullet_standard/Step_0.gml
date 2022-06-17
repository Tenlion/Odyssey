
// Inheriting the Parent Step Event.
event_inherited();



// Calculating the direction of the standard bullet before it moves.
_direction = point_direction(x, y, _destination_x, _destination_y);

// Moving the standard bullet instance toward it's destination in a straight line using _speed.
x = _move_to_target_straightX(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);
y = _move_to_target_straightY(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);

// Lowering the _range_current value by _speed before it's changed by acceleration.
_range_current -= _speed * global.DELTA_MULTIPLIER;

// Accumulating acceleration into speed.
_speed += _acceleration * global.DELTA_MULTIPLIER;



// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0) { instance_destroy(); }

// Checking if the _speed is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they have 0 speed.)
else if (_speed <= 0) { instance_destroy(); }

// Checking if the instance has encountered it's _attachment_foe.
// If true, apply _current_damage to the entity's _life and knockback the entity.
else if (position_meeting(x, y, _attachment_foe) == true) {
		
	// Creating a variable to hold the instance id of the opposing entity.
	var foe_instance = instance_position(x, y, _attachment_foe);
	
	// Lowering the life of the foe by _damage_current.
	foe_instance._life -= _damage_current;
	
	// Calculating knockback using knockback force and the entity's mass.
	var knockback = _knockback_force / foe_instance._mass;
	
	// Knocking back the entity in the direction bullet was traveling by the calculated knockback value above.
	foe_instance._force_x += lengthdir_x(knockback, _direction);
	foe_instance._force_y += lengthdir_y(knockback, _direction);
	
	// The standard bullet has done it's job, so it's time for it to be erased.
	instance_destroy();
}
