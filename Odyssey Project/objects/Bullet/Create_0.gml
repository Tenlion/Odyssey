
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ---------------- Defining Bullet Properties -----------------

// Attack Sprite Properties
attack_sprite = spr_Square;
attack_sprite_color = c_white;
attack_sprite_width_scale = 0.1;
attack_sprite_height_scale = 0.1;
attack_sprite_rotation = 0;

mask_index = attack_sprite;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
