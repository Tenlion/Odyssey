mousex = device_mouse_x_to_gui(0)
mousey = device_mouse_y_to_gui(0)
if (point_in_rectangle(mousex, mousey, _sprButtonCenterx, _sprButtonCentery, _sprButtonCenterx + _sprButtonWidth, _sprButtonCentery + _sprButtonHeight)) {
    // Check for mouse input
    _button_color = c_red
	_button_transparency = 1
	if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        room_goto_next()
		
    }
}
else {
	_button_color = -1
	_button_transparency = 0.75
}