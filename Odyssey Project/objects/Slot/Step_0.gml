
if ((keyboard_check_pressed(ord(_key_value)) == true) && (_entity_id._attachment != _item_id)) {
	
	_entity_id._attachment._active = false;
	
	_entity_id._attachment = _item_id;
	
	_item_id._active = true;
}
