if global.inputBuffer > 0{
	global.inputBuffer --;}
if global.inputBuffer = 0{
	global.inputsActive = true;
	global.inputBuffer = -1;}