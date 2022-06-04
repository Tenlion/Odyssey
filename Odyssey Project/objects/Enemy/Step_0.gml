
_target_x = Player.x;
_target_y = Player.y;

if (_life <= 0) { instance_destroy(); }



if ((_force_x < _force_max) && (_force_x > _force_min)) {
	
	if		(_target_x > x) { _force_x += _acceleration; }
	else if (_target_x < x) { _force_x -= _acceleration; }
}
else { _force_x = _value_to_desired_value(_force_x, 0, _acceleration); }

if ((_force_y < _force_max) && (_force_y > _force_min)) {
	
	if		(_target_y > y) { _force_y += _acceleration; }
	else if (_target_y < y) { _force_y -= _acceleration; }
}
else { _force_y = _value_to_desired_value(_force_y, 0, _acceleration); }



_speed_x = ((_force_x / _mass) * _speed);
_speed_y = ((_force_y / _mass) * _speed);

_position_x = x + _speed_x;
_position_y = y + _speed_y;

_direction = point_direction(x, y, _position_x, _position_y);

x = _position_x;
y = _position_y;

