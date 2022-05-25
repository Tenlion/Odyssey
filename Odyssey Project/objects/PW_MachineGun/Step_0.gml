
// Checking to see if the attachment is active.
if (attachment_active == true) {
	
	
	
	// Check that looks to see if the player is trying to fire the weapon using the left mouse button.
	if (mouse_check_button(mb_left) == true) {
		
		
		
		// Check that determines when the weapon fires based on the fireAccumulator going over the fireTime.
		if (ranged_fireAccumulator >= ranged_fireTime) {
			
			// Creating an attack instance that corresponds to the pistol weapon.
			pistol_attack = instance_create_layer(x, y, "Visible Things", Projectile);
		
			// Defining the properties inside the pistol attack before it moves.
			pistol_attack.attack_item = id;
			pistol_attack.attack_adversary = attachment_adversary;
			pistol_attack.attack_damage = weapon_damage;
			pistol_attack.attack_range = weapon_range;
			pistol_attack.projectile_speed = wProjectile_speed;
			
			// Assigning the position the pistol's attack should move to.
			pistol_attack.projectile_destination_x = x + lengthdir_x(weapon_range, attachment_angle);
			pistol_attack.projectile_destination_y = y + lengthdir_y(weapon_range, attachment_angle);
			
			// Resetting the fireAccumulator to 0 to appropriate the weapon's rate of fire.
			ranged_fireAccumulator = 0;
		}
		
		// Upping the fireAccumulator while the left mouse button is held down.
		ranged_fireAccumulator += ranged_fireRate;
	}
	
	
	
	if (mouse_check_button_released(mb_left) == true) { ranged_fireAccumulator = ranged_fireTime; }
}
