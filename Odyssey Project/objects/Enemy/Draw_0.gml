
draw_sprite_ext(entity_sprite, 0, x, y, entity_sprite_width_scale, entity_sprite_height_scale, entity_sprite_rotation, entity_sprite_color, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(entity_life));
