
if ((keyboard_check_pressed(ord(slot_number)) == true) && (slot_entity.attachment != slot_item)) {
	
	slot_entity.attachment.attachment_active = false;
	slot_entity.attachment.x = room_width * 2;
	slot_entity.attachment.y = room_height * 2;
	
	slot_entity.attachment = slot_item;
	slot_item.attachment_active = true;
}
