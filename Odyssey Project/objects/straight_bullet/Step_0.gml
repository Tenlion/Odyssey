
// Inheriting the Parent Step Event.
event_inherited();



// Checking if the _range_current is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they hit their range cap.)
if (_range_current <= 0) { instance_destroy(); }

// Checking if the _speed is below or equal to 0.
// If true, destroy the instance.  (Standard Bullets are useless when they have 0 speed.)
else if (_speed <= 0) { instance_destroy(); }