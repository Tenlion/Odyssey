
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Draw Event.
event_inherited();

if ((_active == true) && (_line_active == true)) {
		
	var _startx_line_1 = x - lengthdir_x(_spawn_radius + _projectile_width_halved, _direction + 90);
	var _starty_line_1 = y - lengthdir_y(_spawn_radius + _projectile_width_halved, _direction + 90);
	var _startx_line_2 = x + lengthdir_x(_spawn_radius + _projectile_width_halved, _direction + 90);
	var _starty_line_2 = y + lengthdir_y(_spawn_radius + _projectile_width_halved, _direction + 90);
				
	var _endx_line_1 = (x - lengthdir_x(_projectile_width_halved, _direction + 90)) + lengthdir_x(_line_length, _direction - _accuracy_deviation_current);
	var _endy_line_1 = (y - lengthdir_y(_projectile_width_halved, _direction + 90)) + lengthdir_y(_line_length, _direction - _accuracy_deviation_current);
	var _endx_line_2 = (x + lengthdir_x(_projectile_width_halved, _direction + 90)) + lengthdir_x(_line_length, _direction + _accuracy_deviation_current);
	var _endy_line_2 = (y + lengthdir_y(_projectile_width_halved, _direction + 90)) + lengthdir_y(_line_length, _direction + _accuracy_deviation_current);

	draw_line(_startx_line_1, _starty_line_1, _endx_line_1, _endy_line_1);
	draw_line(_startx_line_2, _starty_line_2, _endx_line_2, _endy_line_2);
}