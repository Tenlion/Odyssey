
// Inheriting the Parent Create Event.
event_inherited();

//Flak sats
_flak_dmg = 0;
_AoE_radius = 0;
_AoE_lifespan = 0;
_AoE_degree = 360;
_AoE_deveation = 100;
_AoE_attack_type = 0;
_AoE_spn_x = 0;
_AoE_spn_y = 0;
_cluster_type = 0;
_cluster_count = 0;
_flak_radius =0;
_flak_dmg = 0;
_flak_delay = 0; 
// Attack Sprite Properties
_sprAttack = spr_Square;
_sprAttack_color = c_white;

// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);
