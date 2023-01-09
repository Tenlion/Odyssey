
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Enemy";

_life = 100;

_mass = 0.5;
_acceleration = 0.01;

_force_max = 1;
_force_min = -1;

_foe = Cannon;



_sprEnemy = spr_Square;
_sprEnemy_color = c_fuchsia;
_sprEnemy_width_scale = 1;
_sprEnemy_height_scale = 1;
_sprEnemy_rotation = 0;

mask_index = _sprEnemy;
sprite_collision_mask(mask_index, false, 0, 0, 0, 0, 0, bboxkind_rectangular, 0);

