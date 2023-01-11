
// ---------------- Pre-Processing -----------------

// Inheriting the Parent Create Event.
event_inherited();

// Defining the object's name.
_object_name = "AoE_Cluster_Flak";

//Flak unique variables
_flak_radius =0;
_flak_dmg = 0;
_flak_delay = 0; 

//setting default spawn
_AoE_spn_x = x;
_AoE_spn_y = y;

//setting attack type to Flak
_cluster_type = Flak;