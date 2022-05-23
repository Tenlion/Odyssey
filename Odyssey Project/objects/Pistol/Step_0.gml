
if (attachment_active == true) {

	if (mouse_check_button_pressed(mb_left) == true) {
		
		instance_create_layer(attachment_entity.x, attachment_entity.y, "Projectiles", Projectile);
	}
}
