
// Checking to see if the attachment is active.
if (attachment_active == true) {
	
	// Checking to see if the ammo count is high enough in the connected gauge before firing the weapon.
	// If true, the weapon is allowed to fire.
	// If false, the weapon can not fire.
	if (weapon_ammo_gauge.ammo_count >= weapon_ammo_consumption) {
	
		// Check that looks to see if the player is trying to fire the weapon using the left mouse button.
		if (mouse_check_button(mb_left) == true) {
		
			// Check that determines when the weapon fires based on the fireAccumulator going over the fireTime.
			if (ranged_fire_accumulator >= ranged_fire_time) {
			
				// Looping out a number of projectiles based on the shotCount of the weapon.
				for (var shot = 0; shot < ranged_shot_count; shot += 1) {
				
					// Creating an attack instance that corresponds to the gun.
					gun_attack = instance_create_layer(x, y, "Projectiles", Bullet);
				
					ranged_shot_array[shot] = gun_attack;
					
					// Defining the properties inside the pistol attack before it moves.
					ranged_shot_array[shot].attack_item = id;
					ranged_shot_array[shot].attack_adversary = attachment_adversary;
					ranged_shot_array[shot].attack_range = weapon_range;
					ranged_shot_array[shot].projectile_speed = wProjectile_speed;
					ranged_shot_array[shot].projectile_acceleration = wProjectile_acceleration;
			
					// Calculating the attack's damage.
					if (weapon_crit_accumulator >= weapon_crit_max) {
						
						ranged_shot_array[shot].attack_sprite_color = c_yellow;
						
						ranged_shot_array[shot].attack_damage = weapon_damage * weapon_crit_multiplier;
						
						weapon_crit_accumulator = 0;
					}
					
					else {
						
						ranged_shot_array[shot].attack_damage = weapon_damage;
						
						weapon_crit_accumulator += weapon_crit_count;
					}
					
					
					// Assigning the position the pistol's attack should move to.
					ranged_shot_array[shot].projectile_destination_x = x + lengthdir_x(weapon_range, attachment_angle);
					ranged_shot_array[shot].projectile_destination_y = y + lengthdir_y(weapon_range, attachment_angle);
				}
			
				// Accumulating kick and storing the angle of the shot.
				ranged_kick_accumulator += ranged_kick;
				ranged_kick_storedAngle = attachment_angle - ranged_kick_counterAngle;
				
				attachment_entity.entity_force_x = _value_to_zero(attachment_entity.entity_force_x, ranged_kick);
				attachment_entity.entity_force_y = _value_to_zero(attachment_entity.entity_force_y, ranged_kick);
			
				// Reducing the count inside the ammo gauge the weapon is connected to.
				weapon_ammo_gauge.ammo_count -= weapon_ammo_consumption;
			
				// Resetting the fireAccumulator to 0 to appropriate the weapon's rate of fire.
				ranged_fire_accumulator = 0;
			}
		
			// Upping the fireAccumulator while the left mouse button is held down.
			ranged_fire_accumulator += ranged_fire_rate;
		}
	
		// Checking if the left mouse button has been released in order to reset the fireAccumulator to be at the fireTime's value.
		if (mouse_check_button_released(mb_left) == true) { ranged_fire_accumulator = ranged_fire_time; }
	}
}

// Checking if the kick accumulator is above 0.  If true, kick the attachment's entity.
if (ranged_kick_accumulator > 0) {
	
	attachment_entity.x += lengthdir_x(ranged_kick_accumulator * ranged_kick_speed, ranged_kick_storedAngle);
	attachment_entity.y += lengthdir_y(ranged_kick_accumulator * ranged_kick_speed, ranged_kick_storedAngle);
	
	ranged_kick_accumulator -= (ranged_kick_accumulator * ranged_kick_speed);
}

/*
// Checking if the kick accumulator is above 0.  If true, kick the attachment's entity.
if (ranged_kick_accumulator > 0) {
	
	attachment_entity.x += lengthdir_x(ranged_kick_accumulator * ranged_kick_speed, ranged_kick_storedAngle);
	attachment_entity.y += lengthdir_y(ranged_kick_accumulator * ranged_kick_speed, ranged_kick_storedAngle);
	
	ranged_kick_accumulator -= (ranged_kick_accumulator * ranged_kick_speed);
}
