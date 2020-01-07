if global.inputBuffer > 0{
	global.inputBuffer --;}
if global.inputBuffer = 0{
	global.inputActive = true;
	global.inputBuffer = -1;}