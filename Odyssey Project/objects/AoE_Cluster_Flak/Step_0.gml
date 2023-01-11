/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();


// Attack Sprite Properties
_sprAttack = spr_Circle;
_sprAttack_color = c_white;

// Defining the collision mask for the Bullet object.
mask_index = _sprAttack;


var _blast_zone = ds_list_create();
var _num = collision_circle_list(x,y,_flak_radius,Enemy,false,true,_blast_zone,false);

 if (_num > 0){
    for (var Hit = 0; Hit < _num; ++Hit;){
        	var _blast_id = ds_list_find_value(_blast_zone,Hit)
			_blast_id._life -= _flak_dmg;
		}
	}
ds_list_destroy(_blast_zone);
_blast_zone = -1;


instance_destroy();

