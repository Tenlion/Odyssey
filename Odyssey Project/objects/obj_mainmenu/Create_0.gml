/// @description Outline and create menu elements

#region Main Menu
// Main Menu list
_text = [
"Start",
"Loadout",
"Setting",
"Quit" 
];
/* 
The functions in the _destination list are calls to the function and not called with (),
the function's reference value is passed to each button in order. For example, "Start" 
would pair with the room_goto_next function. This function reference will be called later
in the obj_button.
*/
_destination = [
room_goto_next,
function() {room_goto(2)},
function() {audio_play_sound(snd_click_fail,1,0)},
game_end
];

//Menu and incrementation
menu_index = 0;
_i = 0;

//For-each loop through _text array
array_foreach(_text,function(_button_text) {
	
	//Button Gap
	var _text_gap = string_height(_button_text) + 40;
	
	//Create the Buttons for each element in _text
	var _button = instance_create_layer(room_width/2, room_height * .4 + (_text_gap*_i) , "Instances",obj_button)
	with (_button) {
		//Assign values to new _button, things that start with other are variables outside the scope
		_button._this_button.index = other._i
		_button._this_button.text = other._text[other._i]
		_button._this_button.button_function = other._destination[other._i]
		other._i++
	}
	
	
})
#endregion

#region Ini Load
if (file_exists("settings.ini")){
	settings_load()
} else {
	settings_write()
}
#endregion