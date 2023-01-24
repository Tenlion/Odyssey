
// Inheriting the Parent Step Event.
event_inherited();



// Checking to see if the attachment is active.
if (_active == true) {

	// Checking if the correct trigger type is actively being used in order to fire the weapon.
	_firing = _mouse_event_check(_trigger_type);
	
	// Checking if the player is trying to fire the attachment.
	// Checking if the attachment's _fire_accumulator has cultivated enough time to fire.
	// If true, the attachment is allowed to fire.
	// If false, the attachment can not fire.
	if	(_firing == true) && (_fire_accumulator >= _fire_time) {
			
			// Resetting the _fire_accumulator to 0 to appropriate the attachment's rate of fire.
			_fire_accumulator = 0;
				
			// Calculating the value and direction of the attachment's kick.
			var kick = (_kick_force / _entity_id._mass);
			var kick_angle = _entity_to_attachment_angle - ANGLE_REVERSE;
			
			// Kicking the attached entity.
			_entity_id._force_x += lengthdir_x(kick, kick_angle);
			_entity_id._force_y += lengthdir_y(kick, kick_angle);
	
			// Looping out a number of projectiles based on the _projectile_count of the attachment.
			for (var projectile = 0; projectile < _projectile_count; projectile++) {
					
				// Creating an attack and defining the properties inside before it moves.
				_projectiles[projectile] = instance_create_layer(x, y, "Projectiles", _projectile_object);
				_projectiles[projectile]._attachment_id = id;
				_projectiles[projectile]._attachment_foe = _entity_foe;
				_projectiles[projectile]._damage_original = _damage;
				_projectiles[projectile]._damage_current = _damage;
				_projectiles[projectile]._range_original = _range;
				_projectiles[projectile]._range_current = _range;
				_projectiles[projectile]._falloff_point = _falloff_point;
				_projectiles[projectile]._falloff_mercy = _falloff_mercy;
				_projectiles[projectile]._knockback_force = _knockback_force;
				_projectiles[projectile]._speed = random_range(_projectile_speed_min, _projectile_speed_max);
				_projectiles[projectile]._acceleration = random_range(_projectile_acceleration_min, _projectile_acceleration_max);
				_projectiles[projectile]._sprAttack_width_scale = _projectile_width_scale;
				_projectiles[projectile]._sprAttack_height_scale = _projectile_height_scale;
				
				_projectiles[projectile]._freeze_time = _freeze_time;
				

				// Calculating the attack's direction and setting it's sprite rotation to match the attack direction.
				var direction_for_attack = random_range(_entity_to_attachment_angle - _accuracy_deviation_current, _entity_to_attachment_angle + _accuracy_deviation_current);
				_projectiles[projectile]._sprAttack_rotation = direction_for_attack;
				
				// Calculating the spawn deviation of the attack from 0 (zero acting as a psuedo-spawnpoint).
				var spawn_deviation = random_range(_spawn_radius * NEGATIVE, _spawn_radius);
				
				// Calculating and setting the attack's spawn position.
				_projectiles[projectile].x = x + lengthdir_x(spawn_deviation, _direction_north);
				_projectiles[projectile].y = y + lengthdir_y(spawn_deviation, _direction_north);
				_projectiles[projectile]._spawn_x = _projectiles[projectile].x;
				_projectiles[projectile]._spawn_y = _projectiles[projectile].y;
				
				// Calculating and setting the attack's end destination.
				_projectiles[projectile]._destination_x = x + lengthdir_x(_range, direction_for_attack);
				_projectiles[projectile]._destination_y = y + lengthdir_y(_range, direction_for_attack);
			}
			
			// Applying recoil onto the accuracy after a shot has occurred.
			_accuracy_deviation_current =  _number_to_number(_accuracy_deviation_current, _accuracy_deviation_max, _recoil);
	}
}



// Checking if the _fire_accumulator is less than _fire_time.
// If true, accumulate time into the _fire_accumulator.
if (_fire_accumulator < _fire_time) { _fire_accumulator += global.DELTA_ACTUAL; }

// Checking if the accuracy deviation is NOT equivalent to it's base accuracy AND if the attachment is NOT actively firing.
// If true, realign the deviation using recovery.
if ((_accuracy_deviation_current != _accuracy_deviation_base) && (_firing != true)) {
	
	_accuracy_deviation_current = _number_to_number(_accuracy_deviation_current, _accuracy_deviation_base, _recovery * global.DELTA_MULTIPLIER); 
}