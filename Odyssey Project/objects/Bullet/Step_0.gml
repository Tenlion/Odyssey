
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();



if (projectile_speed <= 0) { instance_destroy(); }



if (position_meeting(x, y, attack_adversary) == true) {
		
	enemy_id = instance_position(x, y, attack_adversary);
	
	enemy_id.entity_life -= attack_damage;
	
	
	
	attack_knockback_angle = projectile_direction;
	
	enemy_id.entity_force_x += lengthdir_x((attack_knockback_force / enemy_id.entity_mass) * attack_knockback_speed, attack_knockback_angle);
	enemy_id.entity_force_y += lengthdir_y((attack_knockback_force / enemy_id.entity_mass) * attack_knockback_speed, attack_knockback_angle);
	
	
	
	instance_destroy();
}
