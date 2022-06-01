

// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();



// --------------- Entity Properties ---------------

entity_mass = 1;
entity_acceleration = 0.05;



// --------------- Cannon Properties ---------------

cannon_brake = 0.01;
cannon_turn = 0.01;



// --------------- Chassis Properties ---------------

chassis_sprite = spr_Square;
chassis_sprite_color = c_green;



// ----------------- Ring Properties ----------------

ring_sprite = spr_Octagon;
ring_sprite_color = c_maroon;
ring_sprite_width_scale = 2;
ring_sprite_height_scale = 2;
ring_sprite_rotation = 0;
ring_sprite_rotation_target = 90;
ring_sprite_rotation_speed = 0.125;	// 0.0 - 1.0
ring_sprite_rotation_adjust = -45;	// -360 - 360

ring_width = sprite_get_width(ring_sprite) * ring_sprite_width_scale;
ring_height = sprite_get_height(ring_sprite) * ring_sprite_height_scale;
ring_width_halved = ring_width * 0.5;
ring_height_halved = ring_height * 0.5;

anchor_sprite = spr_Square;
anchor_sprite_x = 0;
anchor_sprite_y = 0;
anchor_sprite_rotation = 0;
anchor_sprite_color = c_aqua;
anchor_sprite_width_scale = 0.2;
anchor_sprite_height_scale = 0.2;

anchor_angle = 90;



// --------------- Track Properties ------------------

track_sprite = spr_Circle;
track_sprite_color = c_purple;
track_sprite_width_scale = 3;
track_sprite_height_scale = 3;

track_width = sprite_get_width(track_sprite) * track_sprite_width_scale;
track_height = sprite_get_height(track_sprite) * track_sprite_height_scale;
track_width_halved = track_width * 0.5;
track_height_halved = track_height * 0.5;

magnet_sprite = spr_Circle;
magnet_sprite_color = c_aqua;
magnet_sprite_width_scale = 0.2;
magnet_sprite_height_scale = 0.2;

magnet_rotation_speed = 1;
