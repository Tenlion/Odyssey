
global.DELTA_ACTUAL = delta_time / _second_speed;
global.DELTA_MULTIPLIER =  global.DELTA_ACTUAL / _delta_target;



//CODE FOR TESTING

if ((_my_time - global.DELTA_ACTUAL) > 0) { _my_time -= global.DELTA_ACTUAL; }

else { _my_time = 5; }