
// Checking if the current range of the projectile is lower or equal to the falloff point.
// If true, calculate the falloff value that is to be applied to the projectile's damage.
if (_range_current <= _falloff_point) {
	
	// Calculating the level of falloff in a 0 to 1 range.
	 var falloff_value = (_falloff_point - (_falloff_point - _range_current)) / _falloff_point;
	
	// Applying the falloff value and mercy to the original damage to alter the value inside _damage_current.
	_damage_current = (_damage_original * falloff_value) * _falloff_mercy;
}