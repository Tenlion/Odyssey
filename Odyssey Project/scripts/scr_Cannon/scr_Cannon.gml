
function scr_Cannon() {
	
	// Creating Layers
	
	layer_projectile = layer_create(-3, "Projectiles");
	layer_invisible = layer_create(-2, "Invisible Things");
	layer_visible = layer_create(-1, "Visible Things");



	// Filling Layers
	
	instance_enemy1 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy2 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy3 = instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_enemy4 = instance_create_layer(0, 0, "Visible Things", Enemy);
	
	instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);

	attach1 = instance_create_layer(0, 0, "Visible Things", PW_MachineGun);
	attach2 = instance_create_layer(0, 0, "Visible Things", PW_MachineGun);
	attach3 = instance_create_layer(0, 0, "Visible Things", PW_MachineGun);
	attach4 = instance_create_layer(0, 0, "Visible Things", PW_MachineGun);

	slot1 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot2 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot3 = instance_create_layer(0, 0, "Invisible Things", Slot);
	slot4 = instance_create_layer(0, 0, "Invisible Things", Slot);


	
	// Enemy Information
	
	instance_enemy1.x = room_width * 0.75;
	instance_enemy1.y = room_height * 0.2;
	
	instance_enemy2.x = room_width * 0.75;
	instance_enemy2.y = room_height * 0.4;
	
	instance_enemy3.x = room_width * 0.75;
	instance_enemy3.y = room_height * 0.6;
	
	instance_enemy4.x = room_width * 0.75;
	instance_enemy4.y = room_height * 0.8;
	
	
	
	// Item Information
	
	attach1.attachment_sprite_color = c_blue;
	attach1.attachment_entity = instance_player;
	attach1.attachment_adversary = Enemy;
	
	attach2.attachment_sprite_color = c_yellow;
	attach2.attachment_entity = instance_player;
	attach2.attachment_adversary = Enemy;
	
	attach3.attachment_sprite_color = c_red;
	attach3.attachment_entity = instance_player;
	attach3.attachment_adversary = Enemy;
	
	attach4.attachment_sprite_color = c_green;
	attach4.attachment_entity = instance_player;
	attach4.attachment_adversary = Enemy;
	
	
	// Slot Information
	
	slot1.slot_number = "1";
	slot1.slot_item = attach1;
	slot1.slot_entity = instance_player;
	
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
	slot1.slot_item.attachment_active = true;
}

