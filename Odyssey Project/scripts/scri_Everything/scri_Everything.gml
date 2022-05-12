//------------------------- RELATIVE POSITION IN SPRITE -----------------------------

// RELATIVE POSITION IN SPRITE FOR X (Returns REAL Number)
// Returns the relative X value of an object within a sprite.  If the object is within the sprite AND
// the spriteX represents the X position of the sprite, then a value between -1.0 to 1.0 will be returned.
function _relPosX_inSprite_real(object, spriteWidth, spriteX) {
	
	// Calculating the result.
	var result = (object.x - spriteX) / (spriteWidth / 2);
	
	// CHECK : If the result is above 1, then set the result to 1.
	if (result > 1) { result = 1; }
	
	// CHECK : If the result is below -1, then set the result to -1.
	else if	(result < -1) { result = -1; }
	
	// Throwing back the relative X value.
	return result;
}



// RELATIVE POSITION IN SPRITE FOR Y (Returns REAL Number)
// Returns the relative Y value of an object within a sprite.  If the object is within the sprite AND
// the spriteX represents the Y position of the sprite, then a value between -1.0 to 1.0 will be returned.
function _relPosY_inSprite_real(object, spriteHeight, spriteY) {
	
	// Calculating the result.
	var result = (object.y - spriteY) / (spriteHeight / 2);
	
	// CHECK : If the result is above 1, then set the result to 1.
	if (result > 1) { result = 1; }
	
	// CHECK : If the result is below -1, then set the result to -1.
	else if	(result < -1) { result = -1; }
	
	// Throwing back the relative X value.
	return result;
}



// RELATIVE POSITION IN SPRITE FOR X (Returns WHOLE Number)
// Returns the relative X value of an object within a sprite.  If the object is within the sprite AND
// the spriteX represents the X position of the sprite, then either -1, 0 or 1 will be returned.
function _relPosX_inSprite_whole(object, spriteWidth, spriteX) {
	
	// Calculating the result.
	var result = (object.x - spriteX) / (spriteWidth / 2);
	
	
	// CHECK : If the result is above 0, then set the result to 1.
	if (result > 0) { result = 1; }
	
	// CHECK : If the result is below 0, then set the result to -1.
	else if	(result < 0) { result = -1; }
	
	// ELSE : If the result is neither of the checks, then set the result to 0. 
	else { result = 0; }
	
	
	// Throwing back either -1, 0 or 1 depending on the calculation above.
	return result;
}



// RELATIVE POSITION IN SPRITE FOR Y (Returns WHOLE Number)
// Returns the relative Y value of an object within a sprite.  If the object is within the sprite AND
// the spriteX represents the Y position of the sprite, then either -1, 0 or 1 will be returned.
function _relPosY_inSprite_whole(object, spriteHeight, spriteY) {
	
	// Calculating the result.
	var result = (object.y - spriteY) / (spriteHeight / 2);
	
	
	// CHECK : If the result is above 0, then set the result to 1.
	if (result > 0) { result = 1; }
	
	// CHECK : If the result is below 0, then set the result to -1.
	else if	(result < 0) { result = -1; }
	
	// ELSE : If the result is neither of the checks, then set the result to 0. 
	else { result = 0; }
	
	
	// Throwing back either -1, 0 or 1 depending on the calculation above.
	return result;
}





//------------------------- ANGLE FIX -----------------------------

// ANGLE FIX
// Designed to fix angles that go out of the bounds of the 360 Angle Scope.
function _angle_fix(angle) {

	// CHECK : If the angle goes below or is equal to -360, then reset it's position to 0.
	// Addition to 0 is better than re-assigning because it's more smooth for frames. (Might take more processing, but it's better for gameplay.)
	if (angle <= -360) { angle += 360; }
	
	// CHECK : If the angle goes above or is equal to 360, then reset it's position to 0.
	// Subtracting to 0 is better than re-assigning because it's more smooth for frames. (Might take more processing, but it's better for gameplay.)
	else if (angle >= 360) { angle -= 360; }
	
	// RETURN : Throwing back the newly fixed angle.
	return angle;
}





//------------------------- MOVE TO TARGET -----------------------------

// MOVE TO TARGET (SEMI-GRID)
// Moving an instance to a specified target with a set speed in a semi-grid manner.
function _move_to_target_semiGrid(instToMove, targetX, targetY, instSpeed) {
	
	// Local Variables
	var distance = point_distance(instToMove.x, instToMove.y, targetX, targetY);	// distance : Distance between instToMove and the target.
	var distX = abs(targetX - instToMove.x);										// distX : Distance between the instToMove X coordinate and the target's X coordinate in a non-negative form.
	var distY = abs(targetY - instToMove.y);										// distY : Distance between the instToMove Y coordinate and the target's Y coordinate in a non-negative form. 
	
	// CHECK : If the distance between the instance and target is GREATER THAN the given speed, then proceed with movement checks.
	if (distance > instSpeed) {
		
		// CHECK : If the distX is GREATER THAN the given speed, then proceed with X movement checks.
		// This check is to prevent X coordinate bouncing.
		if (distX > instSpeed) {
			
			// CHECKS : Determining if the instToMove's X is to the right or left of the target, then commiting the instToMove to translate toward the target.
			if		(instToMove.x > targetX) {instToMove.x -= instSpeed}
			else if (instToMove.x < targetX) {instToMove.x += instSpeed}
		}
		
		// ELSE : Set the instToMove's X to the targetX.
		else { instToMove.x = targetX; }
		
		
		
		// CHECK : If the distY is GREATER THAN the given speed, then proceed with Y movement checks.
		// This check is to prevent Y coordinate bouncing.
		if (distY > instSpeed) {
		
			// CHECKS : Determining if the instToMove's Y is above or below the target, then commiting the instToMove to translate toward the target.
			if		(instToMove.y > targetY) {instToMove.y -= instSpeed}
			else if (instToMove.y < targetY) {instToMove.y += instSpeed}
		}
		
		// ELSE : Set the instToMove's Y to the targetY.
		else { instToMove.y = targetY; }
	}
	
	// ELSE : If the distance between the instance and target is LESS THAN the given speed, then
	// set the instance's position to match that of the target.  This action prevents the instance
	// that is being called to move from bouncing infinitely.
	else {
		
		instToMove.x = targetX;
		instToMove.y = targetY;
	}
}





// MOVE TO TARGET (STRAIGHT)
// Moving an instance to a specified target with a set speed in a straight-manner.
function _move_to_target_straight(instToMove, targetX, targetY, instSpeed) {
	
	// Local Variables
	var distance = point_distance(instToMove.x, instToMove.y, targetX, targetY);	// distance : Distance between instToMove and the target.
	var distX = targetX - instToMove.x;												// distX : Distance between the instToMove X coordinate and the target's X coordinate. 
	var distY = targetY - instToMove.y;												// distY : Distance between the instToMove Y coordinate and the target's Y coordinate. 
	var speedX = (instSpeed / distance) * distX;									// speedX : Calculating the X speed by finding the distance of the Speed Triangle's X Length. (Speed Triangle is a pseudo-triangle created by instSpeed.)
	var speedY = (instSpeed / distance) * distY;									// speedY : Calculating the Y speed by finding the distance of the Speed Triangle's Y Length. (Speed Triangle is a pseudo-triangle created by instSpeed.)
	
	
	
	// CHECK : If the distance between the instance and target is GREATER THAN the given speed, then move the instance.
	if (distance > instSpeed) {
		
		instToMove.x += speedX;
		instToMove.y += speedY;
	}
	
	// ELSE : If the distance between the instance and target is LESS THAN the given speed, then
	// set the instance's position to match that of the target.  This action prevents the instance
	// that is being called to bounce infinitely.
	else {
		
		instToMove.x = targetX;
		instToMove.y = targetY;
	}
}





// NUMBER TO NUMBER
// 
function _number_to_number(starting_number, target_number, rate) {
	
	var difference = abs(target_number - starting_number);
	
	if (difference < rate) { return target_number; }
	
	else if (target_number > starting_number) { return starting_number + rate; }
	
	else if (target_number < starting_number) { return starting_number - rate; }
}
