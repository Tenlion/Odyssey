// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "Start Menu";
//Reformat this to encompass entire menu
_sprButton = spr_StartButton
_sprButtonWidth = sprite_get_width(_sprButton)
_sprButtonHeight = sprite_get_height(_sprButton)
_sprButtonx = surface_get_width(application_surface)/2
_sprButtony = surface_get_height(application_surface)/2
_sprButtonCenterx = _sprButtonx-(_sprButtonWidth/2)
_sprButtonCentery = _sprButtony-(_sprButtonHeight/2)