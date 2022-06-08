
// Checking to see if the attachment is active.
if (_active == true) {
	
	
	// Checking to see if the ammo count is high enough in the connected gauge before firing the weapon.
	// If true, the weapon is allowed to fire.
	// If false, the weapon can not fire.
	if (_ammo_gauge_id._count >= _ammo_drain) {
		
		
		// Checking if the left mouse button has been released in order to reset the fireAccumulator to be at the fireTime's value.
		if (mouse_check_button_released(mb_left) == true) { _fire_accumulator = _fire_time; }
		
		// Check that looks to see if the player is trying to fire the weapon using the left mouse button.
		if (mouse_check_button(mb_left) == true) {
		
		
			// Upping the fireAccumulator while the left mouse button is held down.
			_fire_accumulator += _fire_rate;
			
			// Check that determines when the weapon fires based on the fireAccumulator going over the fireTime.
			if (_fire_accumulator >= _fire_time) {
				
				
				// Resetting the fireAccumulator to 0 to appropriate the weapon's rate of fire.
				_fire_accumulator = 0;
				
				// Accumulating kick and storing the angle of the shot.
				_kick_accumulator += (_kick_force / _entity_id._mass);
				_kick_angle = _direction - 180;
				
				// Upping the critical accumulator by the critical count.
				_crit_accumulator += _crit_count;
				
				// Reducing the count inside the ammo gauge the weapon is connected to.
				_ammo_gauge_id._count -= _ammo_drain;
				
				
				// Looping out a number of projectiles based on the shotCount of the weapon.
				for (var projectile = 0; projectile < _projectile_count; projectile += 1) {
					
					
					// Creating an attack and defining the properties inside before it moves.
					_projectiles[projectile] = instance_create_layer(x, y, "Projectiles", Bullet);
					_projectiles[projectile]._attachment_id = id;
					_projectiles[projectile]._attachment_foe = _entity_foe;
					_projectiles[projectile]._damage = _damage;
					_projectiles[projectile]._range = _range;
					_projectiles[projectile]._knockback_force = _knockback_force;
					_projectiles[projectile]._knockback_speed = _knockback_speed;
					_projectiles[projectile]._speed = _projectile_speed;
					_projectiles[projectile]._acceleration = _projectile_acceleration;
					
					
					// Calculating whether a critical hit is to occur.
					if (_crit_accumulator >= _crit_max) {
						
						_projectiles[projectile]._sprAttack_color = c_yellow;
						
						_projectiles[projectile]._damage *= _crit_multiplier;
						
						_crit_accumulator = 0;
					}
					
					
					// Assigning the position the pistol's attack should move to.
					_projectiles[projectile]._destination_x = x + lengthdir_x(_range, _direction);
					_projectiles[projectile]._destination_y = y + lengthdir_y(_range, _direction);
				}
			}
		}
	}
}


// Checking if the kick accumulator is above 0.  If true, kick the attachment's entity.
if (_kick_accumulator > 0) {
	
	_kick_step = _kick_accumulator * _kick_speed;
	
	_entity_id._force_x += lengthdir_x(_kick_step, _kick_angle);
	_entity_id._force_y += lengthdir_y(_kick_step, _kick_angle);
	
	_kick_accumulator -= _kick_step;
}
