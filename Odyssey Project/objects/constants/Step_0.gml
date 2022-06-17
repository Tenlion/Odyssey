
// Updating Delta Actual and Multiplier to the latest change in the delta_time.
global.DELTA_ACTUAL = delta_time / _second_speed;
global.DELTA_MULTIPLIER =  global.DELTA_ACTUAL / _delta_target;