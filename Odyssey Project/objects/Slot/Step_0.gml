
if ((keyboard_check_pressed(ord(slot_number)) == true) && (activeSlot.slot_number != slot_number)) {
	
	activeSlot.slot_item.x = room_width * 0.75;
	activeSlot.slot_item.y = room_height * 0.75;
	activeSlot.slot_sprite_color = activeSlot.slot_inactive_color;
	
	Slot.activeSlot = id;
	
	Cannon.attachment_active = activeSlot.slot_item;
	
	slot_sprite_color = slot_active_color;
}
