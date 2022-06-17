
// Inheriting the Parent Create Event.
event_inherited();



// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;
_sprAttack_width_scale = 1;
_sprAttack_height_scale = 1;
_sprAttack_rotation = 0;

// Defining the collision mask for the Bullet_Standard object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
