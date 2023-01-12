
// Inheriting the Parent Step Event.
event_inherited();

// Defining the object's name.
_object_name = "Projectile_Straight_Bullet";



// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0) { instance_destroy(); }

// Checking if the _speed is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they have 0 speed.)
else if (_speed <= 0) { instance_destroy(); }

var _flak_round = instance_create_layer(x, y, "Projectiles", AoE_Cluster_Flak);
	with(_flak_round){
		 _sprAttack_width_scale = other._flak_radius;
		 _sprAttack_height_scale = other._flak_radius;
		_AoE_radius = other._AoE_radius;
		_AoE_lifespan = other._AoE_lifespan;
		_AoE_degree = other._AoE_degree;
		_AoE_deveation = other._AoE_deveation;
		_AoE_attack_type = other._AoE_attack_type;
		_AoE_spn_x = other._AoE_spn_x;
		_AoE_spn_y = other._AoE_spn_y;
		_cluster_type = other._cluster_type;
		_cluster_count = other._cluster_count;
		_flak_radius = other._flak_radius;
		_flak_dmg = other._flak_dmg;
		_flak_delay = other._flak_delay;
			
	}