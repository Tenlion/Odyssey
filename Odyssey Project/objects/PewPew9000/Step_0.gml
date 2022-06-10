
// Accumulating time into the _fire_accumulator if it is less than the value inside _fire_time.
if (_fire_accumulator < _fire_time) { _fire_accumulator += global.DELTA_ACTUAL; }


// Checking to see if the attachment is active.
if (_active == true) {
	
	
	// Checking to see if the ammo count is high enough in the connected gauge before firing the weapon.
	// If true, the weapon is allowed to fire.
	// If false, the weapon can not fire.
	if (_ammo_gauge_id._count >= _ammo_drain) {
		
		
		// Check that looks to see if the player is trying to fire the weapon using the left mouse button.
		if (mouse_check_button(mb_left) == true) {
		
		
			// Check that determines when the weapon fires based on the fireAccumulator going over the fireTime.
			if (_fire_accumulator >= _fire_time) {
				
				
				// Resetting the fireAccumulator to 0 to appropriate the weapon's rate of fire.
				_fire_accumulator = 0;
				
				// Reducing the count inside the ammo gauge the weapon is connected to.
				_ammo_gauge_id._count -= _ammo_drain;
				
				// Kicking the attached entity.
				_kick = (_kick_force / _entity_id._mass);
				_kick_angle = _direction - 180;
				_entity_id._force_x += lengthdir_x(_kick, _kick_angle);
				_entity_id._force_y += lengthdir_y(_kick, _kick_angle);	
				
				
				// Looping out a number of projectiles based on the shotCount of the weapon.
				for (var projectile = 0; projectile < _multishot; projectile++) {
					
					// Creating an attack and defining the properties inside before it moves.
					_projectiles[projectile] = instance_create_layer(x, y, "Projectiles", _projectile_object);
					_projectiles[projectile]._attachment_id = id;
					_projectiles[projectile]._attachment_foe = _entity_foe;
					_projectiles[projectile]._damage = _damage;
					_projectiles[projectile]._range = _range;
					_projectiles[projectile]._knockback_force = _knockback_force;
					_projectiles[projectile]._speed = _projectile_speed;
					_projectiles[projectile]._acceleration = _projectile_acceleration;
					
					// Assigning the position the pistol's attack should move to.
					_projectiles[projectile]._destination_x = x + lengthdir_x(_range, _direction);
					_projectiles[projectile]._destination_y = y + lengthdir_y(_range, _direction);
				}
			}
		}
	}
}