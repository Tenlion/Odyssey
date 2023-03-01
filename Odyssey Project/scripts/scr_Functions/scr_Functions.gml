// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function _vector_sum_x(_vx1,_vx2){
		_vx1 = argument0;
		_vx2 = argument1;
		
		return _vx2 + _vx1;
}

function _vector_sum_y(_vy1,_vy2){
	_vy1 = argument0;
	_vy2 = argument1;
	
	return _vy1 + _vy2;
}
		
function _vector_magnitude_x(_vx1,_vx2){
		_vx1 = argument0;
		_vx2 = argument1;
		return sqrt(sqr(_vx1) + sqr(_vx2));
}
		
function _vector_magnitude_y(_vy1,_vy2){
		_vy1 = argument0;
		_vy2 = argument1;
		return sqrt(sqr(_vy1) + sqr(_vy2));
}


function _vector_cal(x1,y1,x2,y2,ox1,oy1,ox2,oy2,type){
	x1 = argument0;
	y1 = argument1;
	x2 = argument2;
	y2 = argument3;
	ox1 = argument4;
	oy1 = argument5;
	ox2 = argument6;
	oy2 = argument7;
	type = argument8;
	
	vector_1 = [( x2 - x1),(y2 - y1)]
	vector_2 = [(ox2 - ox1),(oy2 - oy2)

	
	xmag = sqrt(sqr(vector_1) + sqr(x2));
	ymag = sqrt(sqr(y1) + sqr(y2));
	
	
	
	
}
