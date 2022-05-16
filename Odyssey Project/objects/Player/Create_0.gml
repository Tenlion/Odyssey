
sprite = spr_Square;
sprite_color = c_green;
sprite_width_scale = 1;
sprite_height_scale = 1;
sprite_rotation = 0;

// ----------------------- Movement Properties --------------------------

// Higher Mass = Slower Player
// Lower Mass = Faster Player

// Higher Push = Faster Player
// Lower Push = Slower Player

// Higher Pull = Shorter distance in which the player slides.
// Lower Pull = Longer distance for the player to slide.

// Higher Turn = Shorter time for the player to align to their desired direction.
// Lower Turn = Longer time for the player to align to their desired direction.

mass = 0.2;		// ADVISED : 0 - 1 Real
push = 1.0;		// ADVISED : 0 - 1 Real
pull = 0.01;	// ADVISED : 0 - 1 Real
turn = 0.01;	// ADVISED : 0 - 1 Real
