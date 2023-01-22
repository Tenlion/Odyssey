draw_sprite_ext(_sprAttack, 0, x, y, _sprAttack_width_scale, _sprAttack_height_scale, _sprAttack_rotation, _sprAttack_color, 1);

//This helps visulize the "laser". It draws the sides but does nothing else. This can be deleted once sprites are set.
draw_line(_xStart_1,_yStart_1,_xEnd_1,_yEnd_1);
draw_line(_xStart_2,_yStart_2,_xEnd_2,_yEnd_2);

//draws the visual line that the laser uses to deal stats to foes.
draw_line(_xEnd_1,_yEnd_1,_xEnd_2,_yEnd_2);