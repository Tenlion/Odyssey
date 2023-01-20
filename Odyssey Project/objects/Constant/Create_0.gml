// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Constant";



// ---------------------------- TIME ----------------------------------

// FRAMERATE TARGET : The framerate that the client is to be stabilized on.
_framerate_target = 60;

// SECOND SPEED : The speed in which a second passes.  The higher the number, the slower
// seconds pass.  The lower the number, the faster a second passes.
_second_speed = 1000000;

// DELTA TARGET : The time that the game uses.
_delta_target = 1 / _framerate_target;

// DELTA ACTUAL : The difference in time that the frame rendering is taking and the time
// it takes for a second to occur in our game.
global.DELTA_ACTUAL = delta_time / _second_speed;

// DELTA MULTIPLIER : The difference between the framerate that is currently occurring 
// and what the target framerate the game is supposed to run at.
global.DELTA_MULTIPLIER = global.DELTA_ACTUAL / _delta_target;



// -------------------------- MACROS ----------------------------------

#macro EAST 0
#macro NORTH 90
#macro WEST 180
#macro SOUTH 270

#macro NEGATIVE -1

#macro ANGLE_REVERSE 180