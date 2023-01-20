
// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Boomerang";



// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_yellow;

// Defining the collision mask for the Boomerang object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
