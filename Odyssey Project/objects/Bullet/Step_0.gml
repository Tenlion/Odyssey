
// Inheriting the Parent Step Event.
event_inherited();



if (projectile_speed <= 0) { instance_destroy(); }



if (position_meeting(x, y, attack_adversary) == true) {
	
	enemy_id = instance_position(x, y, attack_adversary);
	
	enemy_id.entity_life -= attack_damage;
	
	instance_destroy();
}
