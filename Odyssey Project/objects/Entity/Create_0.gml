
// -------------------- Entity Properties ------------------------

// Higher Speed = Faster
// Lower Speed = Slower

// Higher Mass = Slower and heavier.
// Lower Mass = Faster and lighter.

// Higher Force = More pushing power throwing the entity in a designated direction.
// Lower Force = Less pushing power throwing the entity in a designated direction.

entity_mass = 0;			// ADVISED : 0 - 1
entity_acceleration = 0;	// ADVISED : 0 - 1

entity_direction = 0;		// ADVISED : 0
entity_future_x = 0;		// ADVISED : 0
entity_future_y = 0;		// ADVISED : 0

entity_speed = 1;			// ADVISED : 0 - 1
entity_speed_x = 0;			// ADVISED : 0
entity_speed_y = 0;			// ADVISED : 0

entity_force_x = 0;			// ADVISED : 0
entity_force_y = 0;			// ADVISED : 0

entity_life = 0;

entity_sprite = 0;
entity_sprite_color = 0;
entity_sprite_width_scale = 1;
entity_sprite_height_scale = 1;
entity_sprite_rotation = 0;

/*

Things to Do
0.	Optimize, comment and document.
1.	Create time object.
2.	Kick and Knockback
3.	Attachment Weight
4.	Shot Count Overlap Issue
5.	Falloff Range
6.	Accuracy  
7.	Deliberate whether stats should be functioned or not?  I believe they should be, but I haven't
	thought about it too much.  It would make things a lot easier if they can be though. :)
8.	After the Time Object is made, optimize everything that has been made so far.  Object Inheritance, conditional statements
	+ their use efficiency, layer usage and instance implementation.

Accomplished Tasks
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



GUNGINEER CANNON

- Does not focus on buffing damage without thinking about the weapon that's currently being used.
- Cannon focuses on taking a weapon and modifying it to do whatever the user wishes for while managing the damage that comes from the weapons.
- A weapon will keep it's buffs and debuffs even when a weapon switch occurs.  Buffs/debuffs do NOT transfer from one weapon to another.  They are weapon unique.

Space Bar : Rotates the Cannon Ring by 45 degrees.

+ Projectile Speed
    Q : Decreases Projectile Speed
    E : Increases Projectile Speed

+ Recoil
    Q : Decreases Recoil.
    E : Increases Recoil.

+ Multishot
    Q : Decreases Multishot by 1.  Increases Damage and Ammo Consumption.
    E : Increases Multishot by 1.  Decreases Damage and Ammo Consumption.

+ Fire Rate/Charge Rate
    Q : Decreases Fire Rate/Charge Rate.  Increases Damage and Ammo Consumption.
    E : Increases Fire Rate/Charge Rate.  Decreases Damage and Ammo Consumption.
	
+ Accuracy
	Q : Decreases Accuracy.  Decreases Ammo Consumption.
	E : Increases Accuracy.  Increases Ammo Consumption.

+ Range
	Q : Decreases Range.  Increases Falloff Range.
	E : Increases Range.  Decreases Falloff Range.
	
+ Punchthrough
	Q : Decreases Punchthrough by 1.
	E : Increases Punchthrough by 1.
		3.0 Punchthrough : 10% to 1st Target, 20% to 2nd Target, 30% to 3rd Target, 40% to 4th Target
		2.0 Punchthrough : 15% to 1st Target, 25% to 2nd Target, 60% to 3rd Target
		1.0 Punchthrough : 20% to 1st Target, 80% to 2nd Target
		0.0 Punchthrough : 100% to 1st Target

+ Boost Speed
	Q : Increases Player Force.  Decreases Player Boost.  Player Force can't exceed it's base value.
	E : Decreases Player Force.  Increases Player Boost.  Player Boost has a cap.
	
*/
