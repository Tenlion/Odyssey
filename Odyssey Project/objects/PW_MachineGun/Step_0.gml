
if (attachment_active == true) {

	if (mouse_check_button_pressed(mb_left) == true) {
		
		pistol_projectile = instance_create_layer(x, y, "Projectiles", Projectile);
		
		pistol_projectile.attack_item = id;
		pistol_projectile.attack_range = weapon_range;
		pistol_projectile.projectile_speed = weaponProjectile_speed;
		
		pistol_projectile.projectile_destination_x = x + lengthdir_x(weapon_range, attachment_angle);
		pistol_projectile.projectile_destination_y = y + lengthdir_y(weapon_range, attachment_angle);
	}
}
