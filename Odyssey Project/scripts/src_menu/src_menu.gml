// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
Scripts are global functions, they are loaded in each and every room, no need to explicitly call them
to "load" them.
*/

#region Constructors
function NewButton(_index, _text, _box_color, _text_color, _function) constructor{
	index = _index;
	text = _text;
	box_color = _box_color;
	text_color = _text_color;
	button_function = _function;
	enabled = true;
}
#endregion

//The ini file lives in the Appdata local folder
#region ini Functions
function settings_load(){
	ini_open("settings.ini")
	global._primary_mb = ini_read_real("Options", "Mouse Button", mb_left)
	ini_close()
	
}

function settings_write(){
	ini_open("settings.ini")
	global._primary_mb = ini_write_real("Options", "Mouse Button", mb_left)
	ini_close()
	
}

#endregion
