
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();



_direction = point_direction(x, y, _destination_x, _destination_y);

x = _move_to_target_straightX(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);
y = _move_to_target_straightY(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);

_range -= _speed * global.DELTA_MULTIPLIER;
_speed += _acceleration * global.DELTA_MULTIPLIER;



if (_range <= 0) { instance_destroy(); }

else if (_speed <= 0) { instance_destroy(); }

else if (position_meeting(x, y, _attachment_foe) == true) {
		
	var foe_instance = instance_position(x, y, _attachment_foe);
	
	
	foe_instance._life -= _damage;
	
	
	var knockback = _knockback_force / foe_instance._mass;
	
	
	foe_instance._force_x += lengthdir_x(knockback, _direction);
	foe_instance._force_y += lengthdir_y(knockback, _direction);
	
	
	instance_destroy();
}
