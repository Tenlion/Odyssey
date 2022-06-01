
function scr_Cannon() {

	// Creating Layers
	layer_create(-3, "Projectiles");
	layer_create(-2, "Invisible Things");
	layer_create(-1, "Visible Things");





	// Creating the Player Instance
	var instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);





	// Creating an Ammo Gauge
	var instance_ammo = instance_create_layer(0, 0, "Visible Things", Ammo);
	instance_ammo.x = room_width - 75;
	instance_ammo.y = room_height - 75;
	
	
	
	
	
	// Creating Enemies
	var number_of_enemies = 10;
	var enemies = [number_of_enemies];
	
	for (var foe = 0; foe < number_of_enemies; foe++) {

		enemies[foe] = instance_create_layer(0, 0, "Visible Things", Enemy);
	}
	
	Enemy.x = room_width * 0.75;
	Enemy.y = room_height * 0.5;
	
	
	
	
	
	// Creating Attachments and Slots
	var number_of_attachments = 4;
	var attachments = [number_of_attachments];
	var slots = [number_of_attachments];
	
	for (var attach = 0; attach < number_of_attachments; attach++) {
	
		attachments[attach] = instance_create_layer(0, 0, "Visible Things", PW_Gun);
		attachments[attach].attachment_entity = instance_player;
		attachments[attach].attachment_foe = Enemy;
		attachments[attach].weapon_ammo_gauge = instance_ammo;
		
		slots[attach] = instance_create_layer(0, 0, "Invisible Things", Slot);
		slots[attach].slot_number = string(attach + 1);
		slots[attach].slot_item = attachments[attach];
		slots[attach].slot_entity = instance_player;
	}
	
	
	
	
	
	// Player Information
	instance_player.x = room_width * 0.25;
	instance_player.y = room_height * 0.5;
	instance_player.cannon_ammo_gauge = instance_ammo;
	instance_player.attachment = slots[0].slot_item;
	slots[0].slot_item.attachment_active = true;
}
