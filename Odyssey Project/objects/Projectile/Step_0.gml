
if (_range <= _falloff_point) {
	
	var falloff_value =  (_falloff_point - (_falloff_point - _range)) / _falloff_point;
	
	_damage = (_damage_original * falloff_value) * _falloff_mercy;
}