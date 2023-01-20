
function scr_GameStart() {

	// Creating Layers
	layer_create(-3, "Projectiles");
	layer_create(-2, "Invisible Things");
	layer_create(-1, "Visible Things");

	
	// Creating Constants
	instance_create_layer(0, 0, "Invisible Things", Constant);


	// Creating the Player Instance
	var instance_player = instance_create_layer(0, 0, "Visible Things", Cannon_Test);
	instance_player._attachment = instance_player._slots[0]._item_id;	// Assigning the Cannon's active attachment to be the attachment inside the 1st Slot.
	instance_player._slots[0]._item_id._active = true;					// Setting the _active property inside the Cannon's active attachment to be true.
	
	
	// Creating Enemies
	var number_of_enemies = 10;
	var enemies = [number_of_enemies];
	
	for (var foe = 0; foe < number_of_enemies; foe++) {

		enemies[foe] = instance_create_layer(0, 0, "Visible Things", Enemy);
	}

}
