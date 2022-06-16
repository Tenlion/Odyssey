
// Accumulating time into the _fire_accumulator if the _fire_accumulator is less than _fire_time.
if (_fire_accumulator < _fire_time) { _fire_accumulator += global.DELTA_ACTUAL; }


// Checking if the deviation is NOT equivalent to it's base AND if the left mouse button is inactive.
// If true, realign the deviation using recovery.
if ((mouse_check_button(mb_left) == false) && (_accuracy_deviation_current != _accuracy_deviation_base)) { 
	
	_accuracy_deviation_current = _number_to_number(_accuracy_deviation_current, _accuracy_deviation_base, _recovery * global.DELTA_MULTIPLIER); 
}


// Checking to see if the attachment is active.
if (_active == true) {
	
	switch (_trigger_type) {
	
		case "Held" :
			if (mouse_check_button(mb_left) == true) { _firing = true; }
			else { _firing = false; }
		break;
		
		case "Tap" :
			if (mouse_check_button_pressed(mb_left) == true) { _firing = true; }
			else { _firing = false; }
		break;
		
		case "Release" :
			if (mouse_check_button_released(mb_left) == true) { _firing = true; }
			else { _firing = false; }
		break;
	
		default :
		break;
	}
	
	// Check that looks to see if the player is trying to fire the attachment using the left mouse button AND
	// if the attachment's _fire_accumulator has cultivated enough time to fire AND checking to see if the
	// ammo count is high enough in the connected gauge before firing the attachment.
	// If true, the attachment is allowed to fire.
	// If false, the attachment can not fire.
	if	(_firing == true) &&
		(_fire_accumulator >= _fire_time) &&
		(_ammo_gauge_id._count >= _ammo_drain) {
			
			// Resetting the fireAccumulator to 0 to appropriate the attachment's rate of fire.
			_fire_accumulator = 0;
				
			// Reducing the count inside the ammo gauge the attachment is connected to.
			_ammo_gauge_id._count -= _ammo_drain;
				
			// Calculating the value and direction of the kick.
			var kick = (_kick_force / _entity_id._mass);
			var kick_angle = _direction - 180;
			
			// Kicking the attached entity.
			_entity_id._force_x += lengthdir_x(kick, kick_angle);
			_entity_id._force_y += lengthdir_y(kick, kick_angle);
	
			// Looping out a number of projectiles based on the _attack_count of the attachment.
			for (var projectile = 0; projectile < _projectile_count; projectile++) {
					
				// Creating an attack and defining the properties inside before it moves.
				_projectiles[projectile] = instance_create_layer(x, y, "Projectiles", _projectile_object);
				_projectiles[projectile]._attachment_id = id;
				_projectiles[projectile]._attachment_foe = _entity_foe;
				_projectiles[projectile]._damage = _damage;
				_projectiles[projectile]._damage_original = _damage;
				_projectiles[projectile]._range = _range;
				_projectiles[projectile]._falloff_point = _falloff_point;
				_projectiles[projectile]._falloff_mercy = _falloff_mercy;
				_projectiles[projectile]._knockback_force = _knockback_force;
				_projectiles[projectile]._speed = random_range(_projectile_speed_min, _projectile_speed_max);
				_projectiles[projectile]._acceleration = random_range(_projectile_acceleration_min, _projectile_acceleration_max);
				_projectiles[projectile]._sprAttack_width_scale = _projectile_width_scale;
				_projectiles[projectile]._sprAttack_height_scale = _projectile_height_scale;
				_projectiles[projectile]._sprAttack_rotation = _direction;
					
				// Calculating the attack's direction.
				var direction_for_attack = random_range(_direction - _accuracy_deviation_current, _direction + _accuracy_deviation_current);
				
				// Calculating the spawn deviation of the attack from 0 (zero acting as a psuedo-spawnpoint).
				var spawn_deviation = random_range(_spawn_radius * -1, _spawn_radius);
					
				// Calculating the attack's spawn position.
				_projectiles[projectile].x = x + lengthdir_x(spawn_deviation, _direction + 90);
				_projectiles[projectile].y = y + lengthdir_y(spawn_deviation, _direction + 90);
				
				// Calculating the attack's end destination.
				_projectiles[projectile]._destination_x = x + lengthdir_x(_range, direction_for_attack);
				_projectiles[projectile]._destination_y = y + lengthdir_y(_range, direction_for_attack);
			}
			
			// Applying recoil onto the accuracy after a shot has occurred.
			_accuracy_deviation_current =  _number_to_number(_accuracy_deviation_current, _accuracy_deviation_max, _recoil);
	}
}