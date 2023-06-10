/// @description Draw button and checked if hovered

//Align text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_menu)

//Change color on current index
draw_set_colour(_this_button.box_color);
if (_this_button.index == obj_mainmenu.menu_index){
		draw_set_color(c_red)
}

//Draw box and text
var _height = string_height(_this_button.text)
var _width = string_width(_this_button.text)
draw_rectangle(x - (_width/1.5), y-(_height/2), x + (_width/1.5), y+(_height/2), false)
draw_set_colour(_this_button.text_color);
draw_text(x, y, _this_button.text)

