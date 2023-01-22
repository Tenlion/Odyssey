// Checking if the instance has encountered it's _attachment_foe.
// If true, apply _current_damage to the entity's _life and knockback the entity.
if (collision_line(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true)) {
	
	// Creating a data to hold the instance id of the opposing entity.
	var foe_list = ds_list_create();
	
	//Testing of any enemy is colliding with the end of the laser and stores the Id in a ds list
	var _num = collision_line_list(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true,foe_list,false);
			
			if (_num > 0){
			
    			for (var Hit = 0; Hit < _num; ++Hit;){
				
        			var foe_list_id = ds_list_find_value(foe_list,Hit);
					
					foe_list_id._life -= _damage_current;
					
					// Calculating knockback using knockback force and the entity's mass.
					var knockback = _knockback_force / foe_list_id._mass;
					
					// Knocking back the entity in the direction the laser by the calculated knockback value above.
					foe_list_id._force_x += lengthdir_x(knockback, _sprAttack_rotation);
					foe_list_id._force_y += lengthdir_y(knockback, _sprAttack_rotation);					
					
				}
			}
			
			//clears the ds list so no memory leaks are created
			if (ds_exists(foe_list,ds_type_list)){
				
				ds_list_destroy(foe_list);
				
				foe_list = -1;
			}
			
	// A variable to check if said projectile has colided with something.
	_hit = true;
}

//setting the start point of the laser according to where the attatchment is
_las_srt_1 = lengthdir_x(_laser_width,_sprAttack_rotation+90);
_las_srt_2 = lengthdir_y(_laser_width,_sprAttack_rotation+90);
	
_xStart_1 = x - _las_srt_1;
_yStart_1 = y - _las_srt_2;
	
_xStart_2 = x + _las_srt_1;
_yStart_2 = y + _las_srt_2;

//Loops the range of the laser until it reaches it's max range or it hits somthing.
for(var range = 0; range < _range; range+=20){
	
	_xEnd_1 = _xStart_1 + lengthdir_x(range,_sprAttack_rotation - _laser_spread);
	_yEnd_1 = _yStart_1 + lengthdir_y(range,_sprAttack_rotation - _laser_spread);
	
	_xEnd_2 = _xStart_2 + lengthdir_x(range,_sprAttack_rotation + _laser_spread);
	_yEnd_2 = _yStart_2 + lengthdir_y(range,_sprAttack_rotation + _laser_spread);
	
	_range_current = range;
	//This breaks the loop early if it collides with a foe.
	if (collision_line(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true)) {
		break;
	}
}

//Calculating the fall off from the givin values in the gun
if (_range_current >= _falloff_point) {
	
	// Calculating the level of falloff in a 0 to 1 range.
	 var falloff_value = 1 - ((_range_current - _falloff_point) / (_range -_falloff_point));
	
	// Applying the falloff value and mercy to the original damage to alter the value inside _damage_current.
	_damage_current = (_damage_original * falloff_value) * _falloff_mercy;
}
	
