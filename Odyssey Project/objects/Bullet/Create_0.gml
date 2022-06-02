
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();



// ---------------- Defining Bullet Properties -----------------

// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;
_sprAttack_width_scale = 0.1;
_sprAttack_height_scale = 0.1;
_sprAttack_rotation = 0;

mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
