game_set_speed(60, gamespeed_fps);

// Loading Scripts
scri_Everything();

// Creating Layers
layer_2 = layer_create(-2, "Layer -2");
layer_1 = layer_create(-1, "Layer -1");
layer_0 = layer_create(0, "Layer 0");

// Filling Layers
instance_create_layer(0, 0, layer_2, Player);
instance_create_layer(0, 0, layer_0, Movement);
instance_create_layer(0, 0, layer_1, Ring);
instance_create_layer(0, 0, layer_1, Track);
instance_create_layer(0, 0, layer_2, Attachment);
