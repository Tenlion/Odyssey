
// Inheriting the Parent Draw Event.
event_inherited();



// Checking if the attachment is active and if the attachment has lines set to be present.
// If true, draw out the accuracy lines for the attachment.
if ((_active == true) && (_line_active == true)) {
	
	// Calculating the projectile instance's sprite height half in order to be used for visually accurate accuracy lines.
	var projectile_height_halved = (sprite_get_width(_projectile_sprite) * _projectile_height_scale) * 0.5;
	
	// Defining a gap between the starting points of the lines using the attachment's spawn radius and projectile height.
	var gap_for_starting_points = _spawn_radius + projectile_height_halved;
	
	// Defining a gap between the ending points of the lines using the attachment's projectile height.
	var gap_and_direction_for_ending_points_x = lengthdir_x(projectile_height_halved, _direction_north);
	var gap_and_direction_for_ending_points_y = lengthdir_y(projectile_height_halved, _direction_north);
	
	// Defining the directions the lines should point to at their end.
	var end_direction_for_line_1 = _entity_to_attachment_angle - _accuracy_deviation_current;
	var end_direction_for_line_2 = _entity_to_attachment_angle + _accuracy_deviation_current;
	
	// Defining the start points for the lines.
	var startx_line_1 = x - lengthdir_x(gap_for_starting_points, _direction_north);
	var starty_line_1 = y - lengthdir_y(gap_for_starting_points, _direction_north);
	var startx_line_2 = x + lengthdir_x(gap_for_starting_points, _direction_north);
	var starty_line_2 = y + lengthdir_y(gap_for_starting_points, _direction_north);
	
	// Defining the end points for the lines.
	var endx_line_1 = (x - gap_and_direction_for_ending_points_x) + lengthdir_x(_line_length, end_direction_for_line_1);
	var endy_line_1 = (y - gap_and_direction_for_ending_points_y) + lengthdir_y(_line_length, end_direction_for_line_1);
	var endx_line_2 = (x + gap_and_direction_for_ending_points_x) + lengthdir_x(_line_length, end_direction_for_line_2);
	var endy_line_2 = (y + gap_and_direction_for_ending_points_y) + lengthdir_y(_line_length, end_direction_for_line_2);

	// Drawing out the lines using the point locations defined above.
	draw_line(startx_line_1, starty_line_1, endx_line_1, endy_line_1);
	draw_line(startx_line_2, starty_line_2, endx_line_2, endy_line_2);
}