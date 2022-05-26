
draw_sprite_ext(ammo_sprite, 0, x, y, ammo_sprite_width_scale, ammo_sprite_height_scale, ammo_sprite_rotation, ammo_sprite_color, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(ammo_count));
