// Loading Scripts
scri_Everything();

// Creating Layers
layer_Entities = layer_create(-2, "Entity Object Layer");
layer_Invisible = layer_create(-1, "Invisible Object Layer");

// Filling Layers
instance_create_layer(0, 0, layer_Invisible, Data);
instance_create_layer(0, 0, layer_Entities, Player);
instance_create_layer(0, 0, layer_Invisible, Movement);
instance_create_layer(0, 0, layer_Invisible, Camera);
