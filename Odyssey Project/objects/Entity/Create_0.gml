// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Entity";



// -------------------- Entity Properties ------------------------

// Higher Speed = Faster
// Lower Speed = Slower

// Higher Mass = Slower and heavier.
// Lower Mass = Faster and lighter.

// Higher Force = More pushing power throwing the entity in a designated direction.
// Lower Force = Less pushing power throwing the entity in a designated direction.

_mass = 0;			// ADVISED : 0 - 1
_acceleration = 0;	// ADVISED : 0 - 1

_direction = 0;		// ADVISED : 0

_speed = 1;			// ADVISED : 0 - 1
_speed_x = 0;		// ADVISED : 0
_speed_y = 0;		// ADVISED : 0

_force_x = 0;		// ADVISED : 0
_force_y = 0;		// ADVISED : 0

_position_x = 0;
_position_y = 0;

_life = 0;
_foe = 0;