
targetX = Player.x;
targetY = Player.y;

if (entity_life <= 0) { instance_destroy(); }



if ((entity_force_x < entity_force_max) && (entity_force_x > entity_force_min)) {
	
	if		(targetX > x) { entity_force_x += entity_acceleration; }
	else if (targetX < x) { entity_force_x -= entity_acceleration; }
}
else { entity_force_x = _value_to_zero(entity_force_x, entity_acceleration); }

if ((entity_force_y < entity_force_max) && (entity_force_y > entity_force_min)) {
	
	if		(targetY > y) { entity_force_y += entity_acceleration; }
	else if (targetY < y) { entity_force_y -= entity_acceleration; }
}
else { entity_force_y = _value_to_zero(entity_force_y, entity_acceleration); }



entity_speed_x = ((entity_force_x / entity_mass) * entity_speed);
entity_speed_y = ((entity_force_y / entity_mass) * entity_speed);

enemy_position_x = x + entity_speed_x;
enemy_position_y = y + entity_speed_y;

entity_direction = point_direction(x, y, enemy_position_x, enemy_position_y);

x = enemy_position_x;
y = enemy_position_y;

