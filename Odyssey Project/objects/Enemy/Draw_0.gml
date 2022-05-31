
draw_sprite_ext(enemy_sprite, 0, x, y, enemy_sprite_width_scale, enemy_sprite_height_scale, enemy_sprite_rotation, enemy_sprite_color, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(entity_life));
