
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
_flak_sprite = Exo;
_round = 0;
_draw_round_y = 0;
_draw_round_x = 0;

var i = 29;
repeat(30){
	_flak_x[i] = 0;
	_flak_y[i] = 0;
	i -= 1;
}
// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;
sprite_collision_mask(mask_index, false, 1, 0, 0, 0, 0, bboxkind_rectangular, 0);




