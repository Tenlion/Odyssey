
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


//------------------------- MISCELLANEOUS FUNCTIONS -----------------------------

// NUMBER TO NUMBER
// Getting a specified number to be the same value as another specified number via a specified value.
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




// MOUSE EVENT CHECK
// Checking if a mouse event is active by comparing a specified string to a switch event.
function _mouse_event_check(event_wanted) {
	
	// Prescribing a default variable.
	var value = false;
	
	// SWITCH DESCRIPTION : This switch will check if the wanted mouse event is being triggered.
	// If the wanted event is active, then the function returns "true".
	// If the wanted event is NOT active, then the function returns "false".
	switch (event_wanted) {

		case "Left Hold" :
		
			if (mouse_check_button(mb_left) == true) { value = true; }
			
		break;
		
		
		
		case "Left Tap" :
		
			if (mouse_check_button_pressed(mb_left) == true) { value = true; }
			
		break;
		
		
		
		case "Left Release" :
		
			if (mouse_check_button_released(mb_left) == true) { value = true; }
			
		break;



		case "Right Hold" :
		
			if (mouse_check_button(mb_right) == true) { value = true; }
			
		break;
		
		
		
		case "Right Tap" :
		
			if (mouse_check_button_pressed(mb_right) == true) { value = true; }
			
		break;
		
		
		
		case "Right Release" :
		
			if (mouse_check_button_released(mb_right) == true) { value = true; }
			
		break;
		
		
		
		case "Middle Hold" :
		
			if (mouse_check_button(mb_middle) == true) { value = true; }
			
		break;
		
		
		
		case "Middle Tap" :
		
			if (mouse_check_button_pressed(mb_middle) == true) { value = true; }
			
		break;
		
		
		
		case "Middle Release" :

			if (mouse_check_button_released(mb_middle) == true) { value = true; }
			
		break;
		
		
		
		default :
		break;
	}
	
	return value;
}


//_instance_nth_nearest 
//checks the nearest instance and then the 2nd,3nd,4th,and so on nearest instance
/// instance_nth_nearest(x,y,obj,n)

 function _instance_nth_nearest(pointx,pointy, object,n){
	// setting default variables
    var list,nearest;
	
	// Giving arguments to the function
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    n = argument3;
	
	//Within function "min" it  will get the max of either 1 or "n" argument incase number of objects is less than n# specified. exp n = 10 but only 5 objects exits it will return 5.
	// function "instance_number" will give the number of objects of the argument in the current room
	//min will then compare the two numbers and assign it to "n".The reason for max is incase the number of objects is less than "n" and would throw a error
    n = min(max(1,n),instance_number(object));
	
	//Creates a data structure with a priority and assigns the index id to"list"
    list = ds_priority_create();
    nearest = noone;
	
	//"with" is used to give the code block to the "object" argument to run as if the object itself was the one to run it
	//The object called then adds the to the DS"list" its id and self x,y distance to target x,y in function argument
    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
	
	//Repeat is used "n" number of times as "ds_priority_delete_min" deletes the current priority
	//exp is if you want the 3nd farthest it would delete the first closest and then the 2nd clostest and then return the 3nd furthest and asign it to variable "nearest"
    repeat (n) nearest = ds_priority_delete_min(list);
	
	//Deletes the data structure as to not create a memory leak
    ds_priority_destroy(list);
	//Returns the nth closest object to x,y argument
    return nearest;
}


