
x = _move_to_target_straightX(x, y, projectile_destination_x, projectile_destination_y, projectile_speed);
y = _move_to_target_straightY(x, y, projectile_destination_x, projectile_destination_y, projectile_speed);

attack_range -= projectile_speed;

if (attack_range <= 0) { instance_destroy(); }
