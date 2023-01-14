
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Flak";

_true_x = x;
_true_y = y;

// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0 || _speed <= 0 || _hit == true ){
	
	
	
	for(var cluster = 1; cluster < _cluster_count; cluster++){
		
		 _flak_round_x = _true_x + lengthdir_y(irandom_range(1,_AoE_radius),irandom_range(0,360));
		 _flak_round_y = _true_y + lengthdir_x(irandom_range(1,_AoE_radius),irandom_range(0,360));
	


		//draw_sprite_stretched_ext(spr_Circle,0,_flak_round_x + (_flak_radius/2),_flak_round_y + (_flak_radius/2),_flak_radius,_flak_radius,c_white,1);
		instance_create_layer(_flak_round_x,_flak_round_y,"Instances",Explo);
		
		
		var _blast_zone = ds_list_create();
		var _num = collision_circle_list(_flak_round_x,_flak_round_y,_flak_radius,Enemy,false,true,_blast_zone,false);

		if (_num > 0){
			
    		for (var Hit = 0; Hit < _num; ++Hit;){
				
        		var _blast_id = ds_list_find_value(_blast_zone,Hit)
				_blast_id._life -= _flak_dmg;
			}
		}
		ds_list_destroy(_blast_zone);
		_blast_zone = -1;		
	}
instance_destroy();
}		



