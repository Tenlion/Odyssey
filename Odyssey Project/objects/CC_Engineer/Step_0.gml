
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

if (keyboard_check(ord("R")) == true) { 
	
	// Checking if the reload would go over the connected ammo gauge's max value.
	// If true, set the ammo gauge's count to the max.
	// If false, up the ammo gauge's count by the max value.
	if ((cannon_ammo_gauge.ammo_count + cannon_ammo_gauge.ammo_max) > cannon_ammo_gauge.ammo_max) {
		
		cannon_ammo_gauge.ammo_count = cannon_ammo_gauge.ammo_max;
	}
	
	else { cannon_ammo_gauge.ammo_count += cannon_ammo_gauge.ammo_max; }
}
