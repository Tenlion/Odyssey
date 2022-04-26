if (keyboard_check(ord("W")) == true) {
	
	y -= playerSpeed;
}

if (keyboard_check(ord("S")) == true) {
	
	y += playerSpeed;
}

if (keyboard_check(ord("A")) == true) {
	
	x -= playerSpeed;
}

if (keyboard_check(ord("D")) == true) {
	
	x += playerSpeed;
}
