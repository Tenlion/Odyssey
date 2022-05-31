
function scr_Cannon() {
	
	// Creating Layers
	
	layer_projectile = layer_create(-3, "Projectiles");
	layer_invisible = layer_create(-2, "Invisible Things");
	layer_visible = layer_create(-1, "Visible Things");

	//instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);

	//Filling Layers
		
	instance_ammo = instance_create_layer(0, 0, "Visible Things", Ammo);
		
	instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);
	
	instance_enemy1 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy2 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy3 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy4 = instance_create_layer(0, 0, "Visible Things", Enemy);

	attach1 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	attach2 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	attach3 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	attach4 = instance_create_layer(0, 0, "Visible Things", PW_Gun);

	slot1 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot2 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot3 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot4 = instance_create_layer(0, 0, "Invisible Things", Slot);



	// Energy Information
	
	instance_ammo.x = room_width - 75;
	instance_ammo.y = room_height - 75;
	
	
	
	// Enemy Information
	
	instance_enemy1.x = room_width * 0.5;
	instance_enemy1.y = room_height * 0.2;
	
	instance_enemy2.x = room_width * 0.5;
	instance_enemy2.y = room_height * 0.4;
	
	instance_enemy3.x = room_width * 0.5;
	instance_enemy3.y = room_height * 0.6;
	
	instance_enemy4.x = room_width * 0.5;
	instance_enemy4.y = room_height * 0.8;
	
	
	
	// Item Information
	
	attach1.attachment_sprite_color = c_blue;
	attach1.attachment_entity = instance_player;
	attach1.attachment_adversary = Enemy;
	attach1.weapon_ammo_gauge = instance_ammo;
	
	attach2.attachment_sprite_color = c_yellow;
	attach2.attachment_entity = instance_player;
	attach2.attachment_adversary = Enemy;
	attach2.weapon_ammo_gauge = instance_ammo;
	
	attach3.attachment_sprite_color = c_red;
	attach3.attachment_entity = instance_player;
	attach3.attachment_adversary = Enemy;
	attach3.weapon_ammo_gauge = instance_ammo;
	
	attach4.attachment_sprite_color = c_green;
	attach4.attachment_entity = instance_player;
	attach4.attachment_adversary = Enemy;
	attach4.weapon_ammo_gauge = instance_ammo;
	
	// Slot Information
	
	slot1.slot_number = "1";
	slot1.slot_item = attach1;
	slot1.slot_entity = instance_player;
	slot1.slot_item.attachment_active = true;
	
	slot2.slot_number = "2";
	slot2.slot_item = attach2;
	slot2.slot_entity = instance_player;
	
	slot3.slot_number = "3";
	slot3.slot_item = attach3;
	slot3.slot_entity = instance_player;
	
	slot4.slot_number = "4";
	slot4.slot_item = attach4;
	slot4.slot_entity = instance_player;
	
	
	
	// Player Information
	
	instance_player.activeAttachment = slot1.slot_item;
	instance_player.cannon_ammo_gauge = instance_ammo;
}
