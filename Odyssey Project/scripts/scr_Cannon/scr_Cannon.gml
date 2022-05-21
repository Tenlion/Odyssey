
function scr_Cannon() {
	
	// Creating 
	layer_3 = layer_create(-3, "Layer -3");
	layer_2 = layer_create(-2, "Layer -2");
	layer_1 = layer_create(-1, "Layer -1");

	// Filling Layers
	instance_create_layer(0, 0, layer_1, SC_Gungineer);

	item1 = instance_create_layer(0, 0, layer_2, Attachment);
	item2 = instance_create_layer(0, 0, layer_2, Attachment);
	item3 = instance_create_layer(0, 0, layer_2, Attachment);
	item4 = instance_create_layer(0, 0, layer_2, Attachment);

	slot1 = instance_create_layer(0, 0, layer_3, Slot);
	slot2 = instance_create_layer(0, 0, layer_3, Slot);
	slot3 = instance_create_layer(0, 0, layer_3, Slot);
	slot4 = instance_create_layer(0, 0, layer_3, Slot);

	// Item Information
	item1.attachment_sprite_color = c_blue;
	item2.attachment_sprite_color = c_yellow;
	item3.attachment_sprite_color = c_red;
	item4.attachment_sprite_color = c_green;

	// Slot Information
	Slot.activeSlot = slot1;
	
	slot1.x = room_width * 0.2;
	slot1.y = room_height * 0.8;
	slot1.slot_number = "1";
	slot1.slot_item = item1;

	slot2.x = room_width * 0.4;
	slot2.y = room_height * 0.8;
	slot2.slot_number = "2";
	slot2.slot_item = item2;

	slot3.x = room_width * 0.6;
	slot3.y = room_height * 0.8;
	slot3.slot_number = "3";
	slot3.slot_item = item3;

	slot4.x = room_width * 0.8;
	slot4.y = room_height * 0.8;
	slot4.slot_number = "4";
	slot4.slot_item = item4;
}

