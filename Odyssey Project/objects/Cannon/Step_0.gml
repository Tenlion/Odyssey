
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

// Obtaining the angles associated with every Cannon.
_cannon_to_magnet_angle = point_direction(x, y, _sprMagnet_x, _sprMagnet_y);
_cannon_to_attachment_angle = point_direction(x, y, _attachment.x, _attachment.y);





// --------------------------- Movement ---------------------------------

if (keyboard_check(ord("W")) == true) { _force_y -= _acceleration; }
if (keyboard_check(ord("S")) == true) { _force_y += _acceleration; }
if (keyboard_check(ord("A")) == true) { _force_x -= _acceleration; }
if (keyboard_check(ord("D")) == true) { _force_x += _acceleration; }



if	(keyboard_check(ord("W")) == false) &&
	(keyboard_check(ord("S")) == false) &&
	(keyboard_check(ord("A")) == false) &&
	(keyboard_check(ord("D")) == false) {
	
		_force_x = _value_to_zero(_force_x, _brake);
		_force_y = _value_to_zero(_force_y, _brake);
}

else if	(keyboard_check(ord("W")) == false) &&
		(keyboard_check(ord("S")) == false) {
	
		_force_y = _value_to_zero(_force_y, _turn);
}

else if	(keyboard_check(ord("A")) == false) &&
		(keyboard_check(ord("D")) == false) {
	
		_force_x = _value_to_zero(_force_x, _turn);
}



_speed_x = ((_force_x / _mass) * _speed);
_speed_y = ((_force_y / _mass) * _speed);

_position_x = x + _speed_x;
_position_y = y + _speed_y;

_direction = point_direction(x, y, _position_x, _position_y);

x = _position_x;
y = _position_y;
