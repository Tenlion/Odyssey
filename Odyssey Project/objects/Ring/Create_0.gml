
/*

Things to Do
0.	Optimize, comment and document.
1.	Player visual appears to be moving before the object, or vice versa.  Get the visuals to be static with everything else.
2.	Ring Anchor is not set to the top of the ring.  Gungineer's active cannon ring buffer/debuffer should be indicated by being
	below the Ring's anchor, so we want the Ring Anchor to always be at the top for this purpose.
4.  Create the new Cannon Diagram.

Accomplished Tasks
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

+ Knockback
    Q : Decreases Knockback.
    E : Increases Knockback.

+ AoE
    Q : Decreases AoE Radius.  Increases AoE Damage and Ammo Consumption.
    E : Increases AoE Radius.  Decreases AoE Damage and Ammo Consumption.

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

sprite = spr_Circle;
sprite_color = c_maroon;
sprite_width_scale = 2;
sprite_height_scale = 2;
sprite_angle = 0;
sprite_angle_target = 90;
sprite_rotation_speed = 0.125;	// 0.0 - 1.0
sprite_rotation_adjust = -45;		// 0 - 360

anchorX = 0;
anchorY = 0;
anchor_sprite = spr_Dot;
anchor_sprite_angle = 0;
anchor_sprite_color = c_aqua;
anchor_sprite_width_scale = 2;
anchor_sprite_height_scale = 2;

width = sprite_get_width(sprite) * sprite_width_scale;
height = sprite_get_height(sprite) * sprite_height_scale;
width_halved = width * 0.5;
height_halved = height * 0.5;

currentAngle_to_targetAngle_difference = 0;
