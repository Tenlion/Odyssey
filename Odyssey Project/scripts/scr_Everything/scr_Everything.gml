
//------------------------- RELATIVE POSITION IN SPRITE -----------------------------

// RELATIVE POSITION IN SPRITE FOR X (Returns REAL Number)
// Returns the relative X value of an object within a sprite.  If the object is within the sprite AND
// the spriteX represents the X position of the sprite, then a value between -1.0 to 1.0 will be returned.
function _relPosX_inSprite_real(itemX, spriteWidth, spriteX) {
	
	// Calculating the result.
	var result = (itemX - spriteX) / (spriteWidth / 2);
	
	// CHECK : If the result is above 1, then set the result to 1.
	if (result > 1) { result = 1; }
	
	// CHECK : If the result is below -1, then set the result to -1.
	else if	(result < -1) { result = -1; }
	
	// Throwing back the relative X value.
	return result;
}



// RELATIVE POSITION IN SPRITE FOR Y (Returns REAL Number)
// Returns the relative Y value of a item within a sprite.  If the item is within the sprite AND
// the spriteY represents the Y position of the sprite, then a value between -1.0 to 1.0 will be returned.
function _relPosY_inSprite_real(itemY, spriteHeight, spriteY) {
	
	// Calculating the result.
	var result = (itemY - spriteY) / (spriteHeight / 2);
	
	// CHECK : If the result is above 1, then set the result to 1.
	if (result > 1) { result = 1; }
	
	// CHECK : If the result is below -1, then set the result to -1.
	else if	(result < -1) { result = -1; }
	
	// Throwing back the relative X value.
	return result;
}



// RELATIVE POSITION IN SPRITE FOR X (Returns WHOLE Number)
// Returns the relative X value of an item within a sprite.  If the item is within the sprite AND
// the spriteX represents the X position of the sprite, then either -1, 0 or 1 will be returned.
function _relPosX_inSprite_whole(itemX, spriteWidth, spriteX) {
	
	// Calculating the result.
	var result = (itemX - spriteX) / (spriteWidth / 2);
	
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
function _relPosY_inSprite_whole(itemY, spriteHeight, spriteY) {
	
	// Calculating the result.
	var result = (itemY - spriteY) / (spriteHeight / 2);
	
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
	if (angle <= -360) { return (angle + 360); }
	
	// CHECK : If the angle goes above or is equal to 360, then reset it's position to 0.
	// Subtracting to 0 is better than re-assigning because it's more smooth for frames. (Might take more processing, but it's better for gameplay.)
	else if (angle >= 360) { return (angle - 360); }
	
	else { return angle; }
}





//------------------------- MOVE TO TARGET -----------------------------

// MOVE TO TARGET X (STRAIGHT)
// Moving an instance to a specified x-target with a set speed in a straight-manner.
function _move_to_target_straightX(itemToMoveX, itemToMoveY, targetX, targetY, speedToMove) {
	
	// Local Variables
	var distance = point_distance(itemToMoveX, itemToMoveY, targetX, targetY);	// distance : The distance between the item and it's target.
	var distX = targetX - itemToMoveX;											// distX : Distance between itemToMoveX and the targetX.
	var speedX = (speedToMove / distance) * distX;								// speedX : Calculating the X speed by finding the distance of the Speed Triangle's X Length. (Speed Triangle is a pseudo-triangle created by speedToMove.)
	
	// CHECK : If the distance between the item and target is GREATER THAN the given speed, then move the item.
	if (distance > speedToMove) { return itemToMoveX + speedX; }
	
	// ELSE : If the distance between the instance and target is LESS THAN the given speed, then
	// set the item's position to match that of the target.  This action prevents the item
	// that is being called to bounce infinitely.
	else { return targetX; }
}



// MOVE TO TARGET Y (STRAIGHT)
// Moving an instance to a specified y-target with a set speed in a straight-manner.
function _move_to_target_straightY(itemToMoveX, itemToMoveY, targetX, targetY, speedToMove) {
	
	// Local Variables
	var distance = point_distance(itemToMoveX, itemToMoveY, targetX, targetY);	// distance : The distance between the item and it's target.				
	var distY = targetY - itemToMoveY;											// distY : Distance between itemToMoveY and the targetY.
	var speedY = (speedToMove / distance) * distY;								// speedX : Calculating the Y speed by finding the distance of the Speed Triangle's Y Length. (Speed Triangle is a pseudo-triangle created by speedToMove.)
	
	// CHECK : If the distance between the item and target is GREATER THAN the given speed, then move the instance.
	if (distance > speedToMove) { return itemToMoveY + speedY; }
	
	// ELSE : If the distance between the instance and target is LESS THAN the given speed, then
	// set the item's position to match that of the target.  This action prevents the item
	// that is being called to bounce infinitely.
	else { return targetY; }
}



function _number_to_number(number, goal, step) {
	
	// Checking if the number is greater than goal.
	// If true, continue checking the number.
	// If false, continue to the else-if statement.
	if (number > goal) {
		
		// Checking if the result from "number + step" is greater than goal.
		// If true, return goal.  We do this because the expression would skip over goal otherwise.
		// If false, return the result of "number + step".
		if ((number - step) < goal) { return goal; }
		
		else { return number - step; }
	}
	
	// Checking if the number is less than goal.
	// If true, continue checking the number.
	// If false, continue to the else statement.
	else if (number < goal) {
		
		// Checking if the result from "number - step" is less than goal.
		// If true, return goal. We do this because the expression would skip over goal otherwise.
		// If false, return the result of "number - step".
		if ((number + step) > goal) { return goal; }
		
		else { return number + step; }
	}
	
	// If the number is neither over goal or under goal, then the number must be goal.
	else { return goal; }
}


/*
function _metric_system(value, typeOfMeter) {
	
	switch (typeOfMeter) {
		
		case "Milli" : return value / 1000;
		break;
		
		case "Centi" : return value / 100;
		break;
		
		case "Deci" : return value / 10;
		break;
		
		case "Meter" : return value;
		break;
		
		case "Deca" : return value * 10;
		break;
		
		case "Hecto" : return value * 100;
		break;
		
		case "Kilo" : return value * 1000;
		break;
		
		default : return 0;
		break;
	}
}