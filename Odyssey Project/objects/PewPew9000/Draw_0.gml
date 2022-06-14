
// ----------------------- Pre-Processing --------------------------

// Inheriting the Parent Draw Event.
event_inherited();

if ((_active == true) && (_line_active == true)) {
	
	draw_line(_startx_line_1, _starty_line_1, _endx_line_1, _endy_line_1);
	draw_line(_startx_line_2, _starty_line_2, _endx_line_2, _endy_line_2);
}