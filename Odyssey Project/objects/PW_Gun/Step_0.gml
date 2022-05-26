
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
				for (var i = 0; i < ranged_shot_count; i += 1) {
				
					// Creating an attack instance that corresponds to the gun.
					gun_attack = instance_create_layer(x, y, "Visible Things", Bullet);
				
					ranged_shot_array[i] = gun_attack;
				
					// Defining the properties inside the pistol attack before it moves.
					ranged_shot_array[i].attack_item = id;
					ranged_shot_array[i].attack_adversary = attachment_adversary;
					ranged_shot_array[i].attack_damage = weapon_damage;
					ranged_shot_array[i].attack_range = weapon_range;
					ranged_shot_array[i].projectile_speed = wProjectile_speed;
					ranged_shot_array[i].projectile_acceleration = wProjectile_acceleration;
			
					// Assigning the position the pistol's attack should move to.
					ranged_shot_array[i].projectile_destination_x = x + lengthdir_x(weapon_range, attachment_angle);
					ranged_shot_array[i].projectile_destination_y = y + lengthdir_y(weapon_range, attachment_angle);
				}
			
				// Accumulating knockback.
				ranged_knockback_accumulator += ranged_knockback;
			
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



// Checking if the knockback accumulator is above 0.  If true, knockback the attachment's entity.
if (ranged_knockback_accumulator > 0) {
	
	attachment_entity.x += lengthdir_x(ranged_knockback_accumulator * ranged_knockback_speed, attachment_angle - ranged_knockback_angle);
	attachment_entity.y += lengthdir_y(ranged_knockback_accumulator * ranged_knockback_speed, attachment_angle - ranged_knockback_angle);
	
	ranged_knockback_accumulator -= (ranged_knockback_accumulator * ranged_knockback_speed);
}
