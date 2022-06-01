
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ----------------------- General Properties ----------------------

cannon_position_x = 0;
cannon_position_y = 0;

// Angles associated with a Cannon and constant elements found within all Cannons.
cannon_to_cursor_angle = 0;
cannon_to_magnet_angle = 0;

// The ammo gauge that the cannon is connected to.
cannon_ammo_gauge = 0;



// ----------------------- Movement Properties ------------------------

// Higher Brake = Shorter distance in which the Cannon slides.
// Lower Brake = Longer distance for the Cannon to slide.
cannon_brake = 0;	// ADVISED : 0 - 1 Real

// Higher Turn = Shorter time for the Cannon to align to the desired direction.
// Lower Turn = Longer time for the Cannon to align to the desired direction.
cannon_turn = 0;	// ADVISED : 0 - 1 Real



// --------------------------- Chassis Properties ---------------------------

chassis_sprite = 0;
chassis_sprite_color = 0;
chassis_sprite_width_scale = 1;
chassis_sprite_height_scale = 1;
chassis_sprite_rotation = 0;



// ---------------------------- Track Properties -----------------------------

track_sprite = spr_Square;
track_sprite_color = 0;
track_sprite_width_scale = 1;
track_sprite_height_scale = 1;
track_sprite_rotation = 0;

track_width = sprite_get_width(track_sprite) * track_sprite_width_scale;
track_height = sprite_get_height(track_sprite) * track_sprite_height_scale;
track_width_halved = track_width * 0.5;
track_height_halved = track_height * 0.5;



// ---------------------------- Magnet Properties -----------------------------

magnet_sprite = 0;
magnet_sprite_x = 0;
magnet_sprite_y = 0;
magnet_sprite_color = 0;
magnet_sprite_width_scale = 1;
magnet_sprite_height_scale = 1;

magnet_distance_from_attachment = 50;

magnet_to_cursor_angle_difference = 0;

magnet_rotation_speed = 0;



// ------------------------- Active Attachment Properties ---------------------

attachment = 0;

