
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

/*

Things to Do
0.	Optimize, comment and document.
7.	Deliberate whether stats (maybe only certain ones) should be functioned or not?  I believe they 
	should be, but I haven't thought about it too much.  It would make things a lot easier if they 
	can be though. :)

Accomplished Tasks

+	Falloff Range
	RESULTS : Done.
	
+	Accuracy
	RESULTS : Done.

+	Create time object.
	RESULTS : Done.
	
+	Kick and Knockback
	RESULTS : Done.
	
+	Attachment Weight
	RESULTS : Done.
	
+	Shot Count Overlap Issue
	RESULTS : Done.
	
+	After the Time Object is made, optimize everything that has been made so far.  Object Inheritance, conditional statements
	+ their use efficiency, layer usage and instance implementation.
	RESULTS : Done.
	
+	Bullets need to follow the attachment angle so they know where to go.
	SOLVED : Done.
	
+	Get the active attachment sprite to draw at the same time as the other objects by placing it's draw action
	inside the Subclass Level.
	SOLVED : Did it. Woot.  Now the attachments don't need to draw their shit, instead the thing they connect to draws
	the sprites the attachment is associated with.  Might not be a good idea though seeing as how an attachment might need
	multiple sprites...
	
+	Slot items are being placed at the attachment's location upon switch, but only for the first time.
	Something to do with the sequence of the switching or?
	SOLVED : Complicated, but essentially each inactive attachment was following one another until a switch occurred and
	they would only stay at the attachment's magnet location once every attachment had at least been switched once.  It had
	to deal with the ordering of the slot switching with the combined element of the Cannon magnet positioning multiple
	attachments.  At least, that's what I can understand of the situation...?  Either way, it's fucking fixed lol.
	
+	magnet_distance_from_attachment variable needs to be relative.
	SOLVED : I don't believe it needs to be relative actually...  Maybe I'm wrong, but future me will have to deal with that.
	
+	Create the new Cannon Diagram.
	SOLVED : Yup, did it.  Woot woot.  Entity -> Player -> Cannon -> Cannon Classes -> Class Subclasses
	
+	Player visual appears to be moving before the object, or vice versa.  Get the visuals to be static with everything else.
	(This is due to how step event works.  Need to look into begin and end step events.  But they might be clunky?)
	SOLVED : Had to deal with when I was drawing the pieces into the room.  I rearranged the order and all is good.
	
+	Cannon movement speed variables are defined on a creative event.  This is problematic since the subclasses
	define the subvariables that makeup the Cannon speed...  Maybe just put the calculation in the Step Event?
	SOLVED : Decided to re-define the speed properties when inside a subclasses, rather than having calculations
	run every frame.  This isn't ideal, but it's at least a really good band-aid fix that I'm comfortable with.
	
+	Ring Anchor is not set to the top of the ring.  Gungineer's active cannon ring buffer/debuffer should be indicated by being
	below the Ring's anchor, so we want the Ring Anchor to always be at the top for this purpose.
	SOLVED : Had to redefine variables to be more accurate to their functionality and then implement a new variable that
	defined the angle the anchor was to be aligned with at all times.
	
+	Create a weapon anchor.
	SOLVED : Done.
	
+	Create weapon speed using anchor_to_weapon_angle, anchor_to_cursor_angle and the angle_difference function.
	Just as you did before with the ring_angle.
	SOLVED : Done.
	
+	Is "knockback" really a good property to mess with on weapons?  Feels stupid or maybe the ring should just have more options?
	Ring should probably just have more options lol.  Is that a bad thing?  Ask the others to see if that's a bad idea?  I think it fits
	the concept of an engineer really well.  Not to mention, it helps with testing if we have a Cannon that can literally fuck with every
	stat lmao.
	SOLVED : Added a bunch of stats + speed property changing.
	
+	Create a speed property for the weapon moving around the ring.
	SOLVED : Made property for speed.
	
+	Revise Q and E concept for Ammo Efficiency and Phasethrough.  Maybe just replace Phasethrough and Ammo Efficiency altogether.
	SOLVED : Projectile Speed, Knockback, AoE, Fire Rate/Attack Speed/Charge Rate
	
+	Have the ring rotate counterclockwise for the Q key and clockwise for the E key.
	SOLVED : Done.
	
+	Give square sprite to weapon object. (Square for now.  Just to see proper hitbox.)
	SOLVED : Done.
	
+	Get weapon to only be on the outer edge of the track.
	SOLVED : Done.  Length Direction + Point Direction baby!
	
+	dot_relation_in_sprite variables inside the Movement Object need to not have a sprite resource sent into them.
	Instead, have the value that is respective to the current sprite's scale sent in as an argument.
	Sprite Width * Width Scale
	Sprite Height * Height Scale
	SOLVED : Done.
*/
