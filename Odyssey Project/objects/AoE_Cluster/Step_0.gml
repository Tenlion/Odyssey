/// @description Insert description here
// You can write your code in this editor
event_inherited();

for(var cluster = 1; cluster < _cluster_count; cluster++){
_AoE_cluster_id = instance_create_layer(lengthdir_x(random_range(0,_AoE_radius),random_range(0,_AoE_degree)),lengthdir_y(random_range(0,_AoE_radius),random_range(0,_AoE_degree)),"Instances",AoE_cluster_type);

}

