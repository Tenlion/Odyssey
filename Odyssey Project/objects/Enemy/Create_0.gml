
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();


entity_life = 100;

entity_mass = 0.5;
entity_acceleration = 0.01;

entity_force_max = 1;
entity_force_min = -1;


enemy_sprite = spr_Square;
enemy_sprite_color = c_fuchsia;
enemy_sprite_width_scale = 1;
enemy_sprite_height_scale = 1;
enemy_sprite_rotation = 0;

mask_index = enemy_sprite;
sprite_collision_mask(mask_index, false, 0, 0, 0, 0, 0, bboxkind_rectangular, 0);

