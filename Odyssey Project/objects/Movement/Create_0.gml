
// Setting the object to the center of the room.
x = room_width * 0.5;
y = room_height * 0.5;

// Defining the movement object's dot.
dotX = x;
dotY = y;
dot_sprite = spr_Dot;
dot_sprite_color = c_purple;
dot_sprite_rotation = 0;
dot_sprite_width_scale = 1;
dot_sprite_height_scale = 1;

// Defining the movement object's container.
containerX = x;
containerY = y;
container_sprite = spr_Square;
container_sprite_color = c_grey;
container_sprite_width_scale = 2;
container_sprite_height_scale = 2;
container_sprite_rotation = 0;
container_width = sprite_get_width(container_sprite) * container_sprite_width_scale;
container_height = sprite_get_height(container_sprite) * container_sprite_height_scale;

// Defining the max distances the object is capable of going.
maxDistance = container_width * 0.5;
maxDistance_north = containerY - maxDistance;
maxDistance_south = containerY + maxDistance;
maxDistance_west = containerX - maxDistance;
maxDistance_east = containerX + maxDistance;

// Defining the speed values for how fast the movement object should translate throughout it's container under different circumstances.
movement_speed = (container_width * Player.push) / (container_width * Player.mass);
centering_speed = (container_width * 0.5) * Player.pull;
alignment_speed = (container_width * 0.5) * Player.turn;

// Variables that hold the axis data of the object's relation inside it's container.
dot_relation_in_containerX = 0;
dot_relation_in_containerY = 0;
