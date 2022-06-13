
if (_range <= _falloff_point) {
	
	var falloff_value = (_range - _falloff_point) / _falloff_point;
	
	_damage += (_damage * falloff_value) * _falloff_severity;
}