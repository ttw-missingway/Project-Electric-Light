var originalFace = global.enemyFace[argument0];

randomString[0]	= "bow";
randomString[1] = "port";
randomString[2] = "starboard";
randomInteger = irandom(2);

ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument0], global.enemyPositionY[argument0], noAccess);

global.enemyFace[argument0]					= randomString[randomInteger];

switch global.enemyFace[argument0]{
	case "bow":{
		var goRandom = irandom_range(1,4);
		
		if ds_grid_get(oGridController.newGrid, goRandom, 0) = noAccess {
			global.enemyPositionX[argument0] = goRandom;
			global.enemyPositionY[argument0] = 0;}
		else{
			global.enemyFace[argument0] = originalFace;}
		break;}
	case "port":{
		var goRandom = irandom_range(1,3);
		
		if ds_grid_get(oGridController.newGrid, 0, goRandom) = noAccess {
			global.enemyPositionX[argument0] = 0;
			global.enemyPositionY[argument0] = goRandom;}
		else{
				global.enemyFace[argument0] = originalFace;}
		break;}
	case "starboard":{
		var goRandom = irandom_range(1,3);
		
		if ds_grid_get(oGridController.newGrid, 5, goRandom) = noAccess {
			global.enemyPositionX[argument0] = 5;
			global.enemyPositionY[argument0] = goRandom;}
		else{
			global.enemyFace[argument0] = originalFace;}
		break;}}



ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument0], global.enemyPositionY[argument0], argument0);
