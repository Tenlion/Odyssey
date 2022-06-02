
draw_sprite_ext(_sprAmmo, 0, x, y, _sprAmmo_width_scale, _sprAmmo_height_scale, _sprAmmo_rotation, _sprAmmo_color, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(_count));
