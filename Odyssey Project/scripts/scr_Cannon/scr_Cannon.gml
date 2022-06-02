
function scr_Cannon() {

	// Creating Layers
	layer_create(-3, "Projectiles");
	layer_create(-2, "Invisible Things");
	layer_create(-1, "Visible Things");





	// Creating the Player Instance
	var _instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);





	// Creating an Ammo Gauge
	var _instance_ammo = instance_create_layer(0, 0, "Visible Things", Ammo);
	_instance_ammo.x = room_width - 75;
	_instance_ammo.y = room_height - 75;
	
	
	
	
	
	// Creating Enemies
	var _number_of_enemies = 10;
	var _enemies = [_number_of_enemies];
	
	for (var _foe = 0; _foe < _number_of_enemies; _foe++) {

		_enemies[_foe] = instance_create_layer(0, 0, "Visible Things", Enemy);
	}
	
	Enemy.x = room_width * 0.75;
	Enemy.y = room_height * 0.5;
	
	

	
	
	// Creating Attachments and Slots
	var _number_of_attachments = 4;
	var _attachments = [_number_of_attachments];
	var _slots = [_number_of_attachments];
	
	for (var _attach = 0; _attach < _number_of_attachments; _attach++) {
	
		_attachments[_attach] = instance_create_layer(0, 0, "Visible Things", PW_Gun);
		_attachments[_attach]._entity_id = _instance_player;
		_attachments[_attach]._entity_foe = Enemy;
		_attachments[_attach]._ammo_gauge = _instance_ammo;
		
		_slots[_attach] = instance_create_layer(0, 0, "Invisible Things", Slot);
		_slots[_attach]._key_value = string(_attach + 1);
		_slots[_attach]._item_id = _attachments[_attach];
		_slots[_attach]._entity_id = _instance_player;
	}
	
	
	
	
	
	// Player Information
	_instance_player.x = room_width * 0.25;
	_instance_player.y = room_height * 0.5;
	_instance_player._ammo_gauge = _instance_ammo;
	_instance_player._attachment = _slots[0]._item_id;
	_slots[0]._item_id._active = true;
}
