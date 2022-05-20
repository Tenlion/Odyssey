
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ----------------------- General Properties ----------------------

// Entity Attributes
entity_mass = 1;
entity_speed = 1;

// Cannon Position
cannon_x = x;
cannon_y = y;

// Angles associated with a Cannon and constant elements found within all Cannons.
cannon_to_cursor_angle = 0;
cannon_to_magnet_angle = 0;



// ----------------------- Movement Properties ------------------------

// Higher Force = More pushing power throwing the Cannon in a designated direction.
// Lower Force = Less pushing power throwing the Cannon in a designated direction.
cannon_force = 0;	// ADVISED : 0 - 1 Real

// Higher Brake = Shorter distance in which the Cannon slides.
// Lower Brake = Longer distance for the Cannon to slide.
cannon_brake = 0;	// ADVISED : 0 - 1 Real

// Higher Turn = Shorter time for the Cannon to align to the desired direction.
// Lower Turn = Longer time for the Cannon to align to the desired direction.
cannon_turn = 0;	// ADVISED : 0 - 1 Real

/* 
Speed Formulas for how fast the moveDot translates throughout the moveContainer under different circumstances.
These formulas aren't stored in their own variables to ensure that when a variable inside the formula is 
changed mid-game that the effect of the change is reflected immediately.  There may be a better way to do this,
but for now this is what we got.


Directive Speed Formula : cannon_speed_directive = ((moveContainer_width * cannon_force) / (moveContainer_width * entity_mass)) * entity_speed;
Braking Speed X Formula : cannon_speed_braking_x = ((moveContainer_width * 0.01) * cannon_brake) * entity_speed;
Braking Speed Y Formula : cannon_speed_braking_y = ((moveContainer_height * 0.01) * cannon_brake) * entity_speed;
Turning Speed X Formula : cannon_speed_turning_x = ((moveContainer_width * 0.01) * cannon_turn) * entity_speed;
Turning Speed Y Formula : cannon_speed_turning_y = ((moveContainer_height * 0.01) * cannon_turn) * entity_speed;
*/



// -------------------- Cannon Movement Container + Dot -------------

// Defining the movement object's container.
moveContainer_x = room_width * 0.5;
moveContainer_y = room_height * 0.5;
moveContainer_sprite = spr_Square;
moveContainer_sprite_color = c_grey;
moveContainer_sprite_width_scale = 2;
moveContainer_sprite_height_scale = 2;
moveContainer_sprite_rotation = 0;
moveContainer_width = sprite_get_width(moveContainer_sprite) * moveContainer_sprite_width_scale;
moveContainer_height = sprite_get_height(moveContainer_sprite) * moveContainer_sprite_height_scale;

// Defining the movement object's dot.
moveDot_x = moveContainer_x;
moveDot_y = moveContainer_y;
moveDot_sprite = spr_Dot;
moveDot_sprite_color = c_purple;
moveDot_sprite_rotation = 0;
moveDot_sprite_width_scale = 1;
moveDot_sprite_height_scale = 1;

// Defining the max distances the object is capable of going.
maxDistance = moveContainer_width * 0.5;
maxDistance_north = moveContainer_y - maxDistance;
maxDistance_south = moveContainer_y + maxDistance;
maxDistance_west = moveContainer_x - maxDistance;
maxDistance_east = moveContainer_x + maxDistance;

// Variables that hold the axis data of the object's relation inside it's container.
dot_relation_in_container_x = 0;
dot_relation_in_container_y = 0;



// --------------------------- Chassis Properties ---------------------------

chassis_sprite = 0;
chassis_sprite_color = 0;
chassis_sprite_width_scale = 1;
chassis_sprite_height_scale = 1;
chassis_sprite_rotation = 0;



// ---------------------------- Track Properties -----------------------------

track_sprite = 0;
track_sprite_color = 0;
track_sprite_width_scale = 1;
track_sprite_height_scale = 1;
track_sprite_rotation = 0;



// ---------------------------- Magnet Properties -----------------------------

magnet_sprite = 0;
magnet_sprite_x = 0;
magnet_sprite_y = 0;
magnet_sprite_color = 0;
magnet_sprite_width_scale = 1;
magnet_sprite_height_scale = 1;
magnet_sprite_rotation = 0;

magnet_distance_from_attachment = 50;
magnet_to_cursor_angle_difference = 0;
