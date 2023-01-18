
// Inheriting the Parent Create Event.
event_inherited();

//Flak sats
_AoE_radius = 0;


_cluster_count = 0;
 cluster = 0;

_flak_radius =0;
_flak_dmg = 0;
_flak_delay = 0;

_flak_round_y = 0;
_flak_round_x = 0;

_AoE_accumulator = 0;
_entity_to_attachment_angle = 0;

// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;
_flak_sprite = spr_Octagon;


// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);




