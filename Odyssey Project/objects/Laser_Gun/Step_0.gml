
// Inheriting the Parent Step Event.
event_inherited();

_DELTA_TIME = global.DELTA_ACTUAL;

// Checking to see if the attachment is active.
if (_active == true) {

	// Checking if the correct trigger type is actively being used in order to fire the weapon.
	_firing = _mouse_event_check(_trigger_type);
	
	// Checking if the player is trying to fire the attachment.
	// Checking if the attachment's _fire_accumulator has cultivated enough time to fire.
	// If true, the attachment is allowed to fire.
	// If false, the attachment can not fire.
	if	(_firing == true) && (_fire_accumulator >= _fire_time) && (_overheated == false) && (instance_exists(_laser_id)==false) {
			
			// Resetting the _fire_accumulator to 0 to appropriate the attachment's rate of fire.
			_fire_accumulator = 0;
				
			// Calculating the value and direction of the attachment's kick.
			var kick = (_kick_force / _entity_id._mass);
			var kick_angle = _entity_to_attachment_angle - ANGLE_REVERSE;
			
			// Kicking the attached entity.
			_entity_id._force_x += lengthdir_x(kick, kick_angle);
			_entity_id._force_y += lengthdir_y(kick, kick_angle);
	
			// Looping out a number of projectiles based on the _projectile_count of the attachment.
			for (var laser = 0; laser < _laser_count; laser++) {
					
				// Creating an attack and defining the properties inside before it moves.
				_lasers[laser] = instance_create_layer(x, y, "Lasers", _laser_object);
				_lasers[laser]._attachment_id = id;
				_lasers[laser]._attachment_foe = _entity_foe;
				_lasers[laser]._damage_original = _damage;
				_lasers[laser]._damage_current = _damage;
				_lasers[laser]._range_original = _range;
				_lasers[laser]._range_current = _range;
				_lasers[laser]._range = _range;
				_lasers[laser]._falloff_point = _falloff_point;
				_lasers[laser]._falloff_mercy = _falloff_mercy;
				_lasers[laser]._knockback_force = _knockback_force;
				_lasers[laser]._laser_width = _laser_width ;
				_lasers[laser]._laser_spread = _laser_spread;
				_lasers[laser]._life_time = _life_time;
				_lasers[laser]._range_accuracy = _range_accuracy;

				// Calculating the attack's direction and setting it's sprite rotation to match the attack direction.
				var direction_for_attack = random_range(_entity_to_attachment_angle - _accuracy_deviation_current, _entity_to_attachment_angle + _accuracy_deviation_current);
				_lasers[laser]._sprAttack_rotation = direction_for_attack;
				
				// Calculating and setting the attack's spawn position.
				_lasers[laser]._spawn_x = _lasers[laser].x;
				_lasers[laser]._spawn_y = _lasers[laser].y;
				
				// Calculating and setting the attack's end destination.
				_lasers[laser]._destination_x = x + lengthdir_x(_range, direction_for_attack);
				_lasers[laser]._destination_y = y + lengthdir_y(_range, direction_for_attack);
				
				//Stores the Id to test of it is active or not.
				_laser_id = _lasers[laser].id
			}
			
			// Applying recoil onto the accuracy after a shot has occurred.
			_accuracy_deviation_current =  _number_to_number(_accuracy_deviation_current, _accuracy_deviation_max, _recoil);
	}
	
	
}



// Checking if the _fire_accumulator is less than _fire_time.
// If true, accumulate time into the _fire_accumulator.
if (_fire_accumulator < _fire_time) { _fire_accumulator += _DELTA_TIME; }

//This adds "heat" as the laser exists based on delta time
if(instance_exists(_laser_id)){
	_heat += _DELTA_TIME;
	}
	
	//This reduces the heat when the laser is not active or is cooling of from a overheat
	//This else if is to check if heal is greater than 0. Other wise it would keep ticking down and grant laser more max heat.
		else if(_heat > 0){ 
			_heat -= _DELTA_TIME;
			}
//This checks of heat has reached it max and if so  deletes the laser and can not be fired till fully cooled down.
if(_heat > _overheat_max){_overheated = true;}

//This checks to see if heat has been reduced to 0 or below and turns the overheated back to fasle so the laser can be fired again.
if(_heat <= 0){ _overheated = false;}

// Checking if the accuracy deviation is NOT equivalent to it's base accuracy AND if the attachment is NOT actively firing.
// If true, realign the deviation using recovery.
if ((_accuracy_deviation_current != _accuracy_deviation_base) && (_firing != true)) {
	
	_accuracy_deviation_current = _number_to_number(_accuracy_deviation_current, _accuracy_deviation_base, _recovery * global.DELTA_MULTIPLIER); 
}




