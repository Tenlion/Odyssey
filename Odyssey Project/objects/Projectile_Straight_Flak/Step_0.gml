// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Flak";
//Setting the true stopping point when the flak projectile reaches its end or hits a foe
_true_x = x;
_true_y = y;

// Checking if the _range_current or speed is below or equal to 0.
//Askes if projectile has collided with a foe.
if (_range_current <= 0 || _speed <= 0 || position_meeting(x, y, _attachment_foe) == true){

		//Setting sprite to 0 so it will not be seen till the flak is done.
		_sprAttack = 0;
		
		//Setting the objects x,y for the flak epicenter
		x = _true_x
		y = _true_y
		
		//Askes if the delay is less than the accumulator soe the next flak round can be created
		if(_flak_delay <= _AoE_accumulator ){
			
			//This sets where the bomblets(flak) will spawn in a random location inside the radius
			_flak_round_x = round(_true_x + lengthdir_y(irandom_range(1,_AoE_radius),irandom_range(0,360)));
			_flak_round_y = round(_true_y + lengthdir_x(irandom_range(1,_AoE_radius),irandom_range(0,360)));

			//This code block is to test if the flak has hit a foe and to do damage
			
			//Createing a data structure list for foe ids
			var _blast_zone = ds_list_create();
			
			//Stores the ammount of foes hit in a variable
			var _num = collision_circle_list(_flak_round_x,_flak_round_y,_flak_radius,Enemy,false,true,_blast_zone,false);
			
			//This is to ask if any foes were hit as to not run code that is meaningless
			if (_num > 0){
				
				//Runs a for loop for the ammount of foes hit
    			for (var Hit = 0; Hit < _num; ++Hit;){
					
					//Stores the first id in the list in a temperary variable to be called
        			var _blast_id = ds_list_find_value(_blast_zone,Hit)
					
					//Dealing damage to the foe Id
					_blast_id._life -= _flak_dmg;
				}
			}
			
			//Clearing the data structure and internal values to -1 to free memory as to not crate a memory leak
			ds_list_destroy(_blast_zone);
			_blast_zone = -1;	
			
			//Delay timer reset and adding a 1 to  cluster(number of flak that has exploded) and hit for logic
			_AoE_accumulator = 0;
			cluster++;
			_hit = true
		}
		
		//Adds time till it reaches _flak_delay value and then resets it
		_AoE_accumulator += global.DELTA_ACTUAL;
		
		//Once the flak is done it deletes itself from the game.
		if( cluster >= _cluster_count){ instance_destroy()}
}		



