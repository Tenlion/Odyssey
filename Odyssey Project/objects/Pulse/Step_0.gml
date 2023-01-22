// Inherit the parent event
event_inherited();
//Once _life_accum is greater than the lifetime the pulse destorys itself
_life_accum += global.DELTA_ACTUAL;
if (_life_accum > _life_time ) { instance_destroy() }
