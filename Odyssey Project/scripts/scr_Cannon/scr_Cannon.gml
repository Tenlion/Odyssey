
function scr_Cannon() {
	
	// Creating Layers
	
	layer_create(-3, "Projectiles");
	layer_create(-2, "Invisible Things");
	layer_create(-1, "Visible Things");



	// Filling Layers
		
	var instance_ammo = instance_create_layer(0, 0, "Visible Things", Ammo);
		
	var instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);
	
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);
	instance_create_layer(0, 0, "Visible Things", Enemy);

	var attach1 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	var attach2 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	var attach3 = instance_create_layer(0, 0, "Visible Things", PW_Gun);
	var attach4 = instance_create_layer(0, 0, "Visible Things", PW_Gun);

	var slot1 = instance_create_layer(0, 0, "Invisible Things", Slot);
	var slot2 = instance_create_layer(0, 0, "Invisible Things", Slot);
	var slot3 = instance_create_layer(0, 0, "Invisible Things", Slot);
	var slot4 = instance_create_layer(0, 0, "Invisible Things", Slot);

	
	// Enemy Information
	
	Enemy.x = room_width;
	Enemy.y = room_height * 0.5;
	
	

	// Energy Information
	
	instance_ammo.x = room_width - 75;
	instance_ammo.y = room_height - 75;
	
	
	
	// Item Information
	
	attach1.attachment_sprite_color = c_blue;
	attach1.attachment_entity = instance_player;
	attach1.attachment_foe = Enemy;
	attach1.weapon_ammo_gauge = instance_ammo;
	
	attach2.attachment_sprite_color = c_yellow;
	attach2.attachment_entity = instance_player;
	attach2.attachment_foe = Enemy;
	attach2.weapon_ammo_gauge = instance_ammo;
	
	attach3.attachment_sprite_color = c_red;
	attach3.attachment_entity = instance_player;
	attach3.attachment_foe = Enemy;
	attach3.weapon_ammo_gauge = instance_ammo;
	
	attach4.attachment_sprite_color = c_green;
	attach4.attachment_entity = instance_player;
	attach4.attachment_foe = Enemy;
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
	
	instance_player.y = room_height * 0.5;
	instance_player.activeAttachment = slot1.slot_item;
	instance_player.cannon_ammo_gauge = instance_ammo;
}
