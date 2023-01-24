
// Inheriting the Parent Create Event.
event_inherited();

//Freeze unique
_freeze_time = 0;
_stop_gap = true;
_prev_speed_x = 0;
_prev_speed_y = 0;
_time_accumulator = 0;

// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;

// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
