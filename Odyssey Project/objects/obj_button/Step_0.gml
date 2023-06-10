/// @description Button activation check

//Keyboard and mouse button check
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);
var _click = mouse_check_button_pressed(global._primary_mb)

//Variable for button size
var _height = string_height(_this_button.text)
var _width = string_width(_this_button.text)

//Check if mouse is over button
if  
(mouse_x > (x - _width/1.5) and 
 mouse_x < (x + _width/1.5) and 
 mouse_y >  (y - _height/2)  and 
 mouse_y <  (y + _height/2)
 ){
	 //Set hovered element as active element
	 if (_this_button.index != obj_mainmenu.menu_index){
		audio_play_sound(snd_hover, 1, false, 1, 0, (1.1-.05*obj_mainmenu.menu_index))
		//audio_play_sound(snd_hover,1,0, pitch=(.90+.05*_this_button.index))
		obj_mainmenu.menu_index = _this_button.index;
	 }
	 if (_click) {
		 //audio_play_sound(snd_click_success,1,0)
		 _this_button.clicked();
	 }
}

//Check if keyboard clicked
if (_select) and (_this_button.index == obj_mainmenu.menu_index){
	//audio_play_sound(snd_click_success,1,0)
	_this_button.clicked();
}