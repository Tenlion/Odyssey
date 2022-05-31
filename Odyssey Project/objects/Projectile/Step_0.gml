
projectile_direction = point_direction(x, y, projectile_destination_x, projectile_destination_y);

x = _move_to_target_straightX(x, y, projectile_destination_x, projectile_destination_y, projectile_speed);
y = _move_to_target_straightY(x, y, projectile_destination_x, projectile_destination_y, projectile_speed);

attack_range -= projectile_speed;

projectile_speed += projectile_acceleration;

if (attack_range <= 0) { instance_destroy(); }





/*

inst = instance_position(x, y, Enemy);

if (inst != noone) { with (inst) { entity_life -= 10; } }



if (position_meeting(x, y, attack_adversary) == true) {
	
	enemy_id = instance_position(x, y, attack_adversary);
	
	enemy_id.entity_life -= attack_damage;
}
