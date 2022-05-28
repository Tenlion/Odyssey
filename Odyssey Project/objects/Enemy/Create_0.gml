
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();

entity_life = 100;

entity_sprite = spr_Square;
entity_sprite_color = c_fuchsia;
entity_sprite_width_scale = 1;
entity_sprite_height_scale = 1;
entity_sprite_rotation = 0;

mask_index = entity_sprite;
sprite_collision_mask(mask_index, false, 0, 0, 0, 0, 0, bboxkind_rectangular, 0);

