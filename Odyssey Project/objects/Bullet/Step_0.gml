
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();



if (projectile_speed <= 0) { instance_destroy(); }



if (position_meeting(x, y, attack_foe) == true) {
		
	foe = instance_position(x, y, attack_foe);
	
	foe.entity_life -= attack_damage;
	
	
	
	attack_knockback_angle = projectile_direction;
	
	foe.entity_force_x += lengthdir_x((attack_knockback_force / foe.entity_mass) * attack_knockback_speed, attack_knockback_angle);
	foe.entity_force_y += lengthdir_y((attack_knockback_force / foe.entity_mass) * attack_knockback_speed, attack_knockback_angle);
	
	
	
	instance_destroy();
}
