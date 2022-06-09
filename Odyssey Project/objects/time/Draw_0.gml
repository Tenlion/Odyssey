
//CODE FOR TESTING

draw_sprite_ext(spr_Square, 0, x, y, 2, 2, 0, c_blue, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string_format(_my_time, 0, 7));