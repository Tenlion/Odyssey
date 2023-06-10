/// @description Menu keyboard navigation

//Keyboard arrow check
var _up = keyboard_check_pressed(vk_up);

var _down = keyboard_check_pressed(vk_down);

var _move = _up - _down;

if _move != 0 {
	audio_play_sound(snd_hover, 1, false, 1, 0, (1.1-.05*menu_index));
	//Get menu size
	var _size = array_length(_text);
	
	//Move Up
	if (_move == 1){
		menu_index -= 1;
	}
	//Move Down
	else {
		menu_index += 1;
	}
	//Clamp values
	if (menu_index >= _size){
		menu_index = 0;
	} else if (menu_index < 0){
		menu_index = _size - 1
	}
	
}

