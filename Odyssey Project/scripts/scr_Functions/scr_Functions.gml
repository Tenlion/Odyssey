// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information




//Function to get a vector from a single object.
//x1,y1 are the current position of the object in question.
//x2,y2 is where the object will be  at the next step/future position
//Will return a struct with cartesian x and y values

	function vector_get_ray(x1,y1,x2,y2){
	
		argument0 = x1;
		argument1 = y1;
		argument2 = x2;
		argument3 = y2;

		var x_value = x2 - x1;
		var y_value = y2 - y1;

		var vector = {
			x_vector : x_value,
			y_vector : y_value
		};
	return vector;

	}

//................................................................

//Function to add 2 vectors to form a single vector
//x1,y1 is object1s1 cartesian vector values
//x2,y2 is objects2 cartesian vector values
//Will return a struct with cartesian values for the new vector
function vector_add(x1,y1,x2,y2){
	
argument0 = x1;
argument1 = y1;
argument2 = x2;
argument3 = y2;

var x_value = x1 + x2;
var y_value = y1 + y2;

var vector = {
	x_vector : x_value,
	y_vector : y-x_value
	}
	
return vector;

	}
//...................................................................

function vector_cartesian_to_polar(x1 = 0,y1 = 0){
	
argument0 = x1;
argument1 = y1;

var magnitude_value = sqrt(sqr(x) + sqr(y));

var degree_value = darctan2(x1,y1);

var vector = {
	magnitude : magnitude_value,
	degree : degree_value
}
return vector;
	}

//.............................................................
function vector_polar_to_cartesian(magnitude = 0,degree = 0){
	
argument0 = magnitude;
argument1 = degree;

var x_value = magnitude * dcos(degree);
var y_value = magnitude * dsin(degree);

var vector ={
	x_vector : x_value,
	y_vector : y_value
	}
return vector;
//...................................................................
// Function that will grab the sprite and determine the largest circumscribed circle possible
// Function input "sprite" is the sprite ID, index, or sprite name
// The Value is what real value you want back with the fallowing giving what each value is
//0 circumscribed sprite radius
//1 circumscribed sprite diameter
//2 circumscribed sprite circumference
//3 circumscribed sprite area
//returned value is returned in pixles.
//NOTE: this is only to be used with base spites and not modified sprites.
function spr_circumscribed(sprite,value = 0){
	
argument0 = sprite;
argument1 = value;

var spr_x_value = sprite_get_width(sprite);
var spr_y_value = sprite_get_height(sprite);

if (spr_x_value == spr_y_value){
	circle_radi = (spr_x_value * sqrt(2))/2
}
else {
	circle_radi = sqrt( sqr(spr_x_value) * sqr(spr_y_value))/2
}

switch value{
	
	case 0: 
		return circle_radi;
	break;
	
	case 1:
		return (circle_radi * 2);
	break;
	
	case 2:
		return 2 * pi * circle_radi;
	break;
	
	case 3:
		return pi * sqr(circle_radi)
	break;
	
		}
	}

//function to convert one metric form to another ex. 1000 meter to kilo will return 1
//Function only returns the ammount in the "made up" metric system
//"metric" and "new_metric_ can only be metric prefix strings and not a variable
	function mentric_convert(value,metric,new_metric){
		
		argument0 = value;
		argument1 = metric;
		argument2 = new_metric;
		
		if (metric == new_metric){ return value}
		
	
		
			switch metric{
				
				case "deci":
				metric = 0.1;
				break;
				
				case "meter":
				metric = 1;
				break;
				
				case "deca":
				metric = 10;
				break;
				
				case "hecto":
				metric = 100;
				break;
				
				case "kilo":
				metric = 1000;
				break;
			}
			//The true value of mesurement
			var true_value = value * metric;
			
			switch new_metric{
				
				case "deci":
				return true_value/0.1;
				break;
				
				case "meter":
				return true_value/1;
				break;
				
				case "deca":
				return true_value/10;
				break;
				
				case "hecto":
				return true_value/100;
				break;
				
				case "kilo":
				return true_value/1000;
				break;
			}
		
		
		
	
	}


	function 
}