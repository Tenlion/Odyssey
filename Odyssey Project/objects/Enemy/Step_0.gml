
_target_x = _foe.x;
_target_y = _foe.y;

if (_life <= 0) { instance_destroy(); }



if ((_force_x < _force_max) && (_force_x > _force_min)) {
	
	if		(_target_x > x) { _force_x += _acceleration * global.DELTA_MULTIPLIER; }
	else if (_target_x < x) { _force_x -= _acceleration * global.DELTA_MULTIPLIER; }
}
else { _force_x = _number_to_number(_force_x, 0, _acceleration * global.DELTA_MULTIPLIER); }

if ((_force_y < _force_max) && (_force_y > _force_min)) {
	
	if		(_target_y > y) { _force_y += _acceleration * global.DELTA_MULTIPLIER; }
	else if (_target_y < y) { _force_y -= _acceleration * global.DELTA_MULTIPLIER; }
}
else { _force_y = _number_to_number(_force_y, 0, _acceleration * global.DELTA_MULTIPLIER); }



_speed_x = ((_force_x / _mass) * _speed) * global.DELTA_MULTIPLIER;
_speed_y = ((_force_y / _mass) * _speed) * global.DELTA_MULTIPLIER;

_position_x = x + _speed_x;
_position_y = y + _speed_y;

_direction = point_direction(x, y, _position_x, _position_y);

x = _position_x;
y = _position_y;

