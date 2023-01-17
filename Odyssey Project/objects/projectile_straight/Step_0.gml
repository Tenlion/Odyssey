
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight";



// Checking if the instance has encountered it's _attachment_foe.
// If true, apply _current_damage to the entity's _life and knockback the entity.
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
	
	_hit = true;
}



// Storing the position the instance will be at in a few lines from now.
_position_x = _move_to_target_straightX(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);
_position_y = _move_to_target_straightY(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);

// Calculating the direction of the instance before it moves.
_direction = point_direction(x, y, _position_x, _position_y);

// Moving the instance to the previously stored position.
x = _position_x;
y = _position_y;

// Lowering the _range_current value by _speed before it's changed by acceleration.
_range_current -= _speed * global.DELTA_MULTIPLIER;

// Accumulating acceleration into speed.
_speed += _acceleration * global.DELTA_MULTIPLIER;