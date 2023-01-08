
// Inheriting the Parent Step Event.
event_inherited();



// Checking if the position of the attack is at it's spawnpoint.
// If true, destroy the instance.
if ((_position_x == _spawn_x) && (_position_y == _spawn_y)) { instance_destroy(); }

// Checking if the _range_current is greater than or equal to double the value of _range_original.
// If true, destroy the instance.  This scenario can happen when the speed of an object becomes negative.
else if (_range_current >= (_range_original * 2)) { instance_destroy(); }

// Checking if the position of the instance has reached it's destination.
// If true, change the instance's destination to be that of it's spawnpoint and
// reset the current range back to be the original value.
else if ((_position_x == _destination_x) && (_position_y == _destination_y)) {
	
	// Resetting the current range to ensure falloff calculations still matter
	// for the projectile after it's destination has been flipped.
	_range_current = _range_original;
	
	// Flipping the destination to be that of the projectile's spawn.
	_destination_x = _spawn_x;
	_destination_y = _spawn_y;
}