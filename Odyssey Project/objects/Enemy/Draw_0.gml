
draw_sprite_ext(_sprEnemy, 0, x, y, _sprEnemy_width_scale, _sprEnemy_height_scale, _sprEnemy_rotation, _sprEnemy_color, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(_life));
