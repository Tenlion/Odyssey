x = _attachment_id.x
y = _attachment_id.y
_sprAttack_rotation =_attachment_id._entity_to_attachment_angle


// Checking if the instance has encountered it's _attachment_foe.
// If true, apply _current_damage to the entity's _life and knockback the entity.
if (collision_line(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true)) {
	
	// Creating a variable to hold the instance id of the opposing entity.
	var foe_list = ds_list_create();
	collision_line_list(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true,for)
	var foe_instance = instance_position(_xEnd_1, _yEnd_1, _attachment_foe);
	

	// Lowering the life of the foe by _damage_current.
	foe_instance._life -= _damage_current;
	
	// Calculating knockback using knockback force and the entity's mass.
	var knockback = _knockback_force / foe_instance._mass;
	
	// Knocking back the entity in the direction the instance was traveling by the calculated knockback value above.
	foe_instance._force_x += lengthdir_x(knockback, _direction);
	foe_instance._force_y += lengthdir_y(knockback, _direction);
	
	// A variable to check if said projectile has colided with something.
	_hit = true;
}
//............................

for(var range = 0; range < _range; range++){
	_xEnd_1 = x + lengthdir_x(range,(_beam_spread+_sprAttack_rotation));
	_yEnd_1 = y + lengthdir_y(range,(_beam_spread+_sprAttack_rotation));
	
	_xEnd_2 = x + lengthdir_x(range,(-_beam_spread +_sprAttack_rotation));
	_yEnd_2 = y + lengthdir_y(range,(-_beam_spread +_sprAttack_rotation));
	_range_current = range;
	
	
	if (collision_line(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2,_attachment_foe,false,true)) {
		break;
	}
}





//..................................

if (_range_current >= _falloff_point) {
	
	// Calculating the level of falloff in a 0 to 1 range.
	 var falloff_value = 1 - ((_range_current - _falloff_point) / (_range -_falloff_point));
	
	// Applying the falloff value and mercy to the original damage to alter the value inside _damage_current.
	_damage_current = (_damage_original * falloff_value) * _falloff_mercy;
}
	
