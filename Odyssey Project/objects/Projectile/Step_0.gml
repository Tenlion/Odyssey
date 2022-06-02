
_direction = point_direction(x, y, _destination_x, _destination_y);


x = _move_to_target_straightX(x, y, _destination_x, _destination_y, _speed);
y = _move_to_target_straightY(x, y, _destination_x, _destination_y, _speed);


_range -= _speed;
_speed += _acceleration;


if (_range <= 0) { instance_destroy(); }

