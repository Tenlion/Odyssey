
// Inheriting the Parent Draw Event.
event_inherited();



// Checking if the attachment is active and if the attachment has lines set to be present.
// If true, draw out the accuracy lines for the attachment.
if ((_active == true) && (_line_active == true)) {
	
	// Calculating the projectile instance's sprite height half in order to be used for visually accurate accuracy lines.
	var projectile_height_halved = (sprite_get_width(_projectile_sprite) * _projectile_height_scale) * 0.5;
	
	// Defining a gap between the starting points of the lines using the attachment's spawn radius and projectile height.
	var gap_for_starting_points = _spawn_radius + projectile_height_halved;
	
	// Defining a gap between the ending points of the lines using the spawn radius, line controller and projectile height.
	var gap_for_ending_points = projectile_height_halved + (_spawn_radius - (_spawn_radius * _line_length_control));
	
	// Defining the gap + direction for the starting points.
	var gap_and_direction_for_starting_points_x = lengthdir_x(gap_for_starting_points, _direction_north);
	var gap_and_direction_for_starting_points_y = lengthdir_y(gap_for_starting_points, _direction_north);
	
	// Defining the gap + direction for the ending points.
	var gap_and_direction_for_ending_points_x = lengthdir_x(gap_for_ending_points, _direction_north);
	var gap_and_direction_for_ending_points_y = lengthdir_y(gap_for_ending_points, _direction_north);
	
	// Defining the directions the lines should point to at their end.
	var direction_for_line_1 = _entity_to_attachment_angle - _accuracy_deviation_current;
	var direction_for_line_2 = _entity_to_attachment_angle + _accuracy_deviation_current;
	
	// Defining the start points for the lines.
	var startpoint_1_x = x - gap_and_direction_for_starting_points_x;
	var startpoint_1_y = y - gap_and_direction_for_starting_points_y;
	var startpoint_2_x = x + gap_and_direction_for_starting_points_x;
	var startpoint_2_y = y + gap_and_direction_for_starting_points_y;
	
	// Defining the end points for the lines.
	var endpoint_1_x = (x - gap_and_direction_for_ending_points_x) + lengthdir_x(_line_length, direction_for_line_1);
	var endpoint_1_y = (y - gap_and_direction_for_ending_points_y) + lengthdir_y(_line_length, direction_for_line_1);
	var endpoint_2_x = (x + gap_and_direction_for_ending_points_x) + lengthdir_x(_line_length, direction_for_line_2);
	var endpoint_2_y = (y + gap_and_direction_for_ending_points_y) + lengthdir_y(_line_length, direction_for_line_2);

	// Drawing out the lines using the point locations defined above.
	draw_line(startpoint_1_x, startpoint_1_y, endpoint_1_x, endpoint_1_y);
	draw_line(startpoint_2_x, startpoint_2_y, endpoint_2_x, endpoint_2_y);
	
	
	
}



