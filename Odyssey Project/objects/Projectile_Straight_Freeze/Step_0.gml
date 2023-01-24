
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Freeze";
_true_x = x;
_true_y = y;

// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0) { instance_destroy(); }

// Checking if the _speed is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they have 0 speed.)
else if (_speed <= 0) { instance_destroy(); }

else if(_hit = true){
	
	_damage_current = 0;
	_speed = 0;
	
	if(_stop_gap == true){
	_prev_speed_x = _foe_instance._speed_x;
	_prev_speed_y = _foe_instance._speed_y;
	_foe_instance._speed_x = 0;
	_foe_instance._speed_y = 0;
	_damage_current = 0;
	
	
	_stop_gap = false;
	}
	if (_time_accumulator < _freeze_time) {
			
		_time_accumulator += global.DELTA_ACTUAL;
	}
	if (_time_accumulator > _freeze_time){
		_foe_instance._speed_x = _prev_speed_x;
		_foe_instance._speed_y = _prev_speed_y;
		instance_destroy();
		}

}