
/* 

Things to Do

1.	Get weapon to only be on the outer edge of the track.
2.	Give square sprite to weapon object. (Square for now.  Just to see proper hitbox.)
4.  
5.	Optimize, comment and document.

Accomplished Tasks
+	dot_relation_in_sprite variables inside the Movement Object need to not have a sprite resource sent into them.
	Instead, have the value that is respective to the current sprite's scale sent in as an argument.
	Sprite Width * Width Scale
	Sprite Height * Height Scale
	SOLVED : Done.
*/

// Setting the object to the center of the room.
x = room_width * 0.75;
y = room_height * 0.5;

// Defining the anchor variables with the current position of the object.
anchorX = x;
anchorY = y;
