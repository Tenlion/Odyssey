
cursorX = 0;
cursorY = 0;

instance_to_cursor_angle = 0;
instance_to_anchor_angle = 0;
anchor_to_cursor_angle_difference = 0;

sprite = spr_Circle;
sprite_color = c_purple;
sprite_width_scale = 3;
sprite_height_scale = 3;
sprite_angle = 0;

anchorX = 0;
anchorY = 0;
anchor_sprite = spr_Dot;
anchor_sprite_angle = 0;
anchor_sprite_color = c_aqua;
anchor_sprite_width_scale = 2;
anchor_sprite_height_scale = 2;
anchor_rotation_speed = 0.1;

attachment_distance_from_anchor = 40;

width = sprite_get_width(sprite) * sprite_width_scale;
height = sprite_get_height(sprite) * sprite_height_scale;
width_halved = width * 0.5;
height_halved = height * 0.5;
