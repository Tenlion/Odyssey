
function scr_Cannon() {

	// Creating Layers
	layer_create(-3, "Projectiles");
	layer_create(-2, "Invisible Things");
	layer_create(-1, "Visible Things");





	// Creating the Player Instance
	var instance_player = instance_create_layer(0, 0, "Visible Things", CSC_Gungineer);
	instance_player._attachment = instance_player._slots[0]._item_id;
	instance_player._slots[0]._item_id._active = true;
	
	
	
		
	// Creating Enemies
	var number_of_enemies = 10;
	var enemies = [number_of_enemies];
	
	for (var foe = 0; foe < number_of_enemies; foe++) {

		enemies[foe] = instance_create_layer(0, 0, "Visible Things", Enemy);
	}

}
