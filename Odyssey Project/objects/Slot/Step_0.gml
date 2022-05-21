
if (keyboard_check_pressed(ord(slot_number)) == true) { 
	
	slot_active.slot_item.x = room_width * 0.75;
	slot_active.slot_item.y = room_height * 0.75;
	slot_active.slot_sprite_color = slot_active.slot_inactive_color;
	
	Slot.slot_active = id;
	
	slot_item.x = Cannon.attachment_x;
	slot_item.y = Cannon.attachment_y;
	slot_sprite_color = slot_active_color;
}
