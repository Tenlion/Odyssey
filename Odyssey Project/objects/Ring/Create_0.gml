
/*

Things to Do
1.	Create a speed property for the weapon moving around the ring.
2.	Have the ring rotate counterclockwise for the Q key and clockwise for the E key.
3.	Create another type of ring.  One that is very different from the circular one.  Grid type.  Only 4 points where the weapon can be.
	Probably do this after finishing COMPLETELY on the basic circle ring first lolz.
4.	Create a square ring for the Scavenger Cannon
5.	Optimize, comment and document.

Accomplished Tasks
+	Give square sprite to weapon object. (Square for now.  Just to see proper hitbox.)
	SOLVED : Done.
+	Get weapon to only be on the outer edge of the track.
	SOLVED : Done.  Length Direction + Point Direction baby!
+	dot_relation_in_sprite variables inside the Movement Object need to not have a sprite resource sent into them.
	Instead, have the value that is respective to the current sprite's scale sent in as an argument.
	Sprite Width * Width Scale
	Sprite Height * Height Scale
	SOLVED : Done.

Scavenger Cannon

- Does NOT focus on buffing damage.
- Cannon focuses on utilizing the damage a person has to it's fullest potential.

+ Projectile Speed
+ Phasethrough (Acts like Punchthrough, but doesn't hit the first target and only hits the second.)
+ Ammo Efficiency 33%
+ Accuracy and Falloff Range Increase

*/

anchorX = 0;
anchorY = 0;

cursorX = 0;
cursorY = 0;

weapon_speed = 0;
weapon_angle = 0;
weapon_position_x = 0;
weapon_position_y = 0;

ring_sprite = spr_Circle;
ring_width_scale = 1;
ring_height_scale = 1;
ring_width = sprite_get_width(ring_sprite) * ring_width_scale;
ring_height = sprite_get_height(ring_sprite) * ring_height_scale;
ring_width_half = ring_width * 0.5;
ring_height_half = ring_height * 0.5;
ring_rotation_angle = 0;
ring_rotation_speed = 5;
