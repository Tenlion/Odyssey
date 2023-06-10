// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
Scripts are global functions, they are loaded in each and every room, no need to explicitly call them
to "load" them.
*/

#region Constructors
function NewButton(_index, _text, _box_color, _text_color, _function, _sprite=spr_button_bg, _sound = snd_click_success, _enabled = true) constructor{
	index = _index;
	text = _text;
	box_color = _box_color;
	text_color = _text_color;
	button_function = _function;
	sprite = _sprite;
	enabled = _enabled;
	sound = _sound;
	clicked = function(_click_sound = sound) {
		audio_play_sound(_click_sound,1,0);
		button_function();
	};	
}
#endregion


#region Button Functions


function check_hover(_button, _mainmenu, _hover_color=c_red) {
		var _height = string_height(_button.text)
		var _width = string_width(_button.text)
		var _spr_width = sprite_get_width(_button.sprite)
		var _spr_height = sprite_get_height(_button.sprite)
		var _h_size = (_height/_spr_height)
		var _w_size = (_width/_spr_width) * 1.2
	if (_button.index == _mainmenu.menu_index){
			draw_sprite_ext(_button.sprite,0,(room_width/2) - (_width/1.65) , y-(_height/2),_w_size,_h_size , 0,_hover_color, 1)
	} else {
			draw_sprite_ext(_button.sprite,0,(room_width/2) - (_width/1.65) , y-(_height/2),_w_size,_h_size, 0,c_white, 1)
	}
}

#endregion

//The ini file lives in the Appdata local folder
#region ini Functions
function settings_load(){
	ini_open("settings.ini")
	global._primary_mb = ini_read_real("Options", "Mouse Button", mb_left)
	ini_close()
	
}

function settings_write_default(){
	ini_open("settings.ini")
	global._primary_mb = ini_write_real("Options", "Mouse Button", mb_left)
	ini_close()
	
}

#endregion
