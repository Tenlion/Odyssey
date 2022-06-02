
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

if (keyboard_check(ord("R")) == true) { 
	
	// Checking if the reload would go over the connected ammo gauge's max value.
	// If true, set the ammo gauge's count to the max.
	// If false, up the ammo gauge's count by the max value.
	if ((_ammo_gauge._count + _ammo_gauge._max) > _ammo_gauge._max) { _ammo_gauge._count = _ammo_gauge._max; }
	
	else { _ammo_gauge._count += _ammo_gauge._max; }
}
