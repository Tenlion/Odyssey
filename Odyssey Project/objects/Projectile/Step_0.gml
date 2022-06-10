
_direction = point_direction(x, y, _destination_x, _destination_y);


x = _move_to_target_straightX(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);
y = _move_to_target_straightY(x, y, _destination_x, _destination_y, _speed * global.DELTA_MULTIPLIER);


_range -= _speed * global.DELTA_MULTIPLIER;
_speed += _acceleration * global.DELTA_MULTIPLIER;
