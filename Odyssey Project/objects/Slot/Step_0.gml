
if ((keyboard_check_pressed(ord(slot_number)) == true) && (slot_entity.activeAttachment != slot_item)) {
	
	slot_entity.activeAttachment.attachment_active = false;
	slot_entity.activeAttachment.x = room_width * 2;
	slot_entity.activeAttachment.y = room_height * 2;
	
	slot_entity.activeAttachment = slot_item;
	slot_item.attachment_active = true;
}
