/// @description Draw button and checked if hovered

//Align text
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_menu)

//Change color on current index
//draw_set_colour(_this_button.box_color);
check_hover(_this_button,obj_mainmenu);

//Draw box and text

//draw_rectangle(x - (_width/1.5), y-(_height/2), x + (_width/1.5), y+(_height/2), false)
//image_blend = c_red;
//draw_sprite_ext(spr_button_bg,0,x - (_width/1.5), y-(_height/2),_width*1.33,_height, 0,_color, 1)
//image_blend = c_white;
draw_set_colour(_this_button.text_color);
draw_text(x, y, _this_button.text)

