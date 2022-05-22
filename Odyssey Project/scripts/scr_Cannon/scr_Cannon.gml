
function scr_Cannon() {
	
	// Creating Layers
	
	layer_invisible = layer_create(-2, "Invisible Cannon Pieces");
	layer_visible = layer_create(-1, "Visible Cannon Pieces");



	// Filling Layers
	
	instance_player = instance_create_layer(0, 0, layer_visible, CSC_Gungineer);

	attach1 = instance_create_layer(0, 0, layer_visible, Attachment);
	attach2 = instance_create_layer(0, 0, layer_visible, Attachment);
	attach3 = instance_create_layer(0, 0, layer_visible, Attachment);
	attach4 = instance_create_layer(0, 0, layer_visible, Attachment);

	slot1 = instance_create_layer(0, 0, layer_invisible, Slot);
	slot2 = instance_create_layer(0, 0, layer_invisible, Slot);
	slot3 = instance_create_layer(0, 0, layer_invisible, Slot);
	slot4 = instance_create_layer(0, 0, layer_invisible, Slot);



	// Item Information
	
	Attachment.attachment_entity = instance_player;
	
	attach1.attachment_sprite_color = c_blue;
	attach2.attachment_sprite_color = c_yellow;
	attach3.attachment_sprite_color = c_red;
	attach4.attachment_sprite_color = c_green;
	
	
	
	// Slot Information
	
	Slot.slot_entity = instance_player;
	
	slot1.slot_number = "1";
	slot1.slot_item = attach1;

	slot2.slot_number = "2";
	slot2.slot_item = attach2;

	slot3.slot_number = "3";
	slot3.slot_item = attach3;

	slot4.slot_number = "4";
	slot4.slot_item = attach4;
}

