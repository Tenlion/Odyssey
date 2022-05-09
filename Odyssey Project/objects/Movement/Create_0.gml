
// Setting the object to the center of the room.
Movement.x = room_width * 0.5;
Movement.y = room_height * 0.5;

// Defining the anchor variables with the current position of the object.
anchorX = Movement.x;
anchorY = Movement.y;



// Defining the variable that holds the sprite to be used for the container.
// Plus, the container scale and width/height variables.
container_sprite = spr_Square;
container_width_scale = 2;
container_height_scale = 2;
container_width = sprite_get_width(container_sprite) * container_width_scale;
container_height = sprite_get_width(container_sprite) * container_width_scale;

// Defining the max distances the object is capable of going.
maxDistance = container_width * 0.5;
maxDistance_north = anchorY - maxDistance;
maxDistance_south = anchorY + maxDistance;
maxDistance_west = anchorX - maxDistance;
maxDistance_east = anchorX + maxDistance;

// Defining the speed values for how fast the movement object should translate throughout it's container under different circumstances.
movement_speed = (container_width * Player.push) / (container_width * Player.mass);
centering_speed = (container_width * 0.5) * Player.pull;
alignment_speed = (container_width * 0.5) * Player.turn;

// Variables that hold the axis data of the object's relation inside it's container.
dot_relation_in_containerX = 0;
dot_relation_in_containerY = 0;
