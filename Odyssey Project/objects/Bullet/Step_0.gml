
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();



if (_speed <= 0) { instance_destroy(); }



else if (position_meeting(x, y, _attachment_foe) == true) {
		
	var _foe_instance = instance_position(x, y, _attachment_foe);
	
	
	_foe_instance._life -= _damage;
	
	
	_knockback_angle = _direction;
	
	
	_foe_instance._force_x += lengthdir_x((_knockback_force / _foe_instance._mass) * _knockback_speed, _knockback_angle);
	_foe_instance._force_y += lengthdir_y((_knockback_force / _foe_instance._mass) * _knockback_speed, _knockback_angle);
	
	
	instance_destroy();
}
