game_set_speed(60, gamespeed_fps);

// Loading Scripts
scri_Everything();

// Creating Layers
layer_2 = layer_create(-2, "Layer -2");
layer_1 = layer_create(-1, "Layer -1");

// Filling Layers
instance_player = instance_create_layer(0, 0, layer_1, SC_Gungineer);
instance_create_layer(0, 0, layer_2, Attachment);
