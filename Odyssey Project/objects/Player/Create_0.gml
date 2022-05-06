
// Higher Mass = Slower Player
// Lower Mass = Faster Player

// Higher Push = Faster Player
// Lower Push = Slower Player

// Higher Pull = Shorter distance in which the player slides.
// Lower Pull = Longer distance for the player to slide.

mass = 20;		// 1 - 100
push = 100;		// 1 - 100
pull = 0.2;		// 0.0 - 1.0

force = push / mass;

drag = force * pull;
