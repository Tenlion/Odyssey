/// @description Insert description here
// You can write your code in this editor

//Super testing
_true_degree = random_range((_entity_to_attachment_angle - (_AoE_degree * 0.5)), (_entity_to_attachment_angle + (_AoE_degree * 0.5)));

_AoE  = instance_create_layer(_AoE_spn_x, _AoE_spn_y,"Instances",_AoE_attack_type);

if (_AoE_lifespan > _AoE_accumulator) { 
	_AoE_accumulator += global.DELTA_ACTUAL; 
}
else{
	instance_destroy();
}


