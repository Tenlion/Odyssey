
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Step Event.
event_inherited();

// Obtaining the cursor's location.
_cursor_x = device_mouse_x_to_gui(0);
_cursor_y = device_mouse_y_to_gui(0);

_player_to_cursor_angle = point_direction(x, y, _cursor_x, _cursor_y);
