
/*

Things to Do
0.	Optimize, comment and document.
1.	Is "knockback" really a good property to mess with on weapons?  Feels stupid or maybe the ring should just have more options?
	Ring should probably just have more options lol.  Is that a bad thing?  Ask the others to see if that's a bad idea?  I think it fits
	the concept of an engineer really well.  Not to mention, it helps with testing if we have a Cannon that can literally fuck with every
	stat lmao.
2.	Create a square ring for the Engineer Cannon.

Accomplished Tasks
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



ENGINEER CANNON

- Does NOT focus on buffing damage.
- Cannon focuses on taking a weapon and modifying it to do whatever the user wishes for while managing the damage that comes from the weapons.
- A weapon will keep it's buffs and debuffs even when a weapon switch occurs.  Buffs/debuffs do NOT transfer from one weapon to another.  They are weapon unique.

Space Bar : Rotates the Cannon Ring by 90 degrees.

+ Projectile Speed
    Q : Decreases Projectile Speed
    E : Increases Projectile Speed

+ Knockback
    Q : Decreases Knockback.
    E : Increases Knockback.

+ AoE
    Q : Decreases AoE Radius.  Increases AoE Damage and Ammo Consumption.
    E : Increases AoE Radius.  Decreases AoE Damage and Ammo Consumption.

+ Fire Rate/Charge Rate/Attack Speed
    Q : Decreases Fire Rate/Charge Rate/Attack Speed.  Increases Damage and Ammo Consumption.
    E : Increases Fire Rate/Charge Rate/Attack Speed.  Decreases Damage and Ammo Consumption.

*/

anchorX = 0;
anchorY = 0;

cursorX = 0;
cursorY = 0;

anchor_to_cursor_angle = 0;
anchor_to_weapon_angle = 0;

weapon_positionX = 0;
weapon_positionY = 0;

ring_sprite = spr_Square;
ring_width_scale = 2;
ring_height_scale = 2;
ring_width = sprite_get_width(ring_sprite) * ring_width_scale;
ring_height = sprite_get_height(ring_sprite) * ring_height_scale;
ring_width_half = ring_width * 0.5;
ring_height_half = ring_height * 0.5;
ring_angle = 0;
ring_angle_base = 45;
ring_rotation_speed = 5;
