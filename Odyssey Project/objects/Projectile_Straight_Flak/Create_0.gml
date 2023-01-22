
// Inheriting the Parent Create Event.
event_inherited();

//Setting flak bullet unique stats

_AoE_radius = 0;

//Ammount of bomblets
_cluster_count = 0;
 cluster = 0;
 
//how "big" the flak is, damage, and the delay between each explosion
_flak_radius =0;
_flak_dmg = 0;
_flak_delay = 0;

//the spawn xy cords of flak bomblets
_flak_round_y = 0;
_flak_round_x = 0;

//accumulator for delay and angle
_AoE_accumulator = 0;
_entity_to_attachment_angle = 0;

// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;
_flak_sprite = spr_Octagon;


// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);




