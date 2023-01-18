
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Flak";

_true_x = x;
_true_y = y;

// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0 || _speed <= 0 || position_meeting(x, y, _attachment_foe) == true){

		//Setting sprite to 0 so it will not be seen till the flak is done.
		_sprAttack = 0;
		x = _true_x
		y = _true_y
		
		if(_flak_delay <= _AoE_accumulator ){
			
			//This sets where the bomblets(flak) will spawn in a random location inside the radius
			_flak_round_x = round(_true_x + lengthdir_y(irandom_range(1,_AoE_radius),irandom_range(0,360)));
			_flak_round_y = round(_true_y + lengthdir_x(irandom_range(1,_AoE_radius),irandom_range(0,360)));

			//This block is to test if the flak has hit a enemy and to do damage
			var _blast_zone = ds_list_create();
			var _num = collision_circle_list(_flak_round_x,_flak_round_y,_flak_radius,Enemy,false,true,_blast_zone,false);

			if (_num > 0){
			
    			for (var Hit = 0; Hit < _num; ++Hit;){
				
        			var _blast_id = ds_list_find_value(_blast_zone,Hit)
					_blast_id._life -= _flak_dmg;
				}
			}
			//Clearing the data structure and settign all values to -1 to free memory
			ds_list_destroy(_blast_zone);
			_blast_zone = -1;	
			//Delaytimer reset and adding a 1 to varaible cluster
			_AoE_accumulator = 0;
		cluster++;
		_hit = true
		}
		//Adds time till it reaches _flak_delay value and then resets it
		_AoE_accumulator += global.DELTA_ACTUAL;
		//Once the Flak is done it deletes itself from the game.
		if( cluster >= _cluster_count){ instance_destroy()}
}		



