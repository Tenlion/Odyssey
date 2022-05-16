
cursorX = device_mouse_x_to_gui(0);
cursorY = device_mouse_y_to_gui(0);



instance_to_cursor_angle = point_direction(x, y, cursorX, cursorY);



if (instance_to_anchor_angle != instance_to_cursor_angle) {

	anchor_to_cursor_angle_difference = angle_difference(instance_to_cursor_angle, instance_to_anchor_angle);
	instance_to_anchor_angle += anchor_to_cursor_angle_difference * anchor_rotation_speed;
}



// Positioning the Track Anchor Visual, the Attachment Object and the Track Object.
x = Player.x;
y = Player.y;

anchorX = x + lengthdir_x(width_halved, instance_to_anchor_angle);
anchorY = y + lengthdir_y(height_halved, instance_to_anchor_angle);

Attachment.x = x + lengthdir_x(width_halved + anchor_distance_from_attachment, instance_to_anchor_angle);
Attachment.y = y + lengthdir_y(height_halved + anchor_distance_from_attachment, instance_to_anchor_angle);
