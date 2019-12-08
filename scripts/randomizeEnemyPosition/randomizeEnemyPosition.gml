randomString[0]	= "bow";
randomString[1] = "port";
randomString[2] = "starboard";
randomInteger = irandom(2);

clamp(randomInteger,0,2);

ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument0], global.enemyPositionY[argument0], noAccess);

global.enemyFace[argument0]					= randomString[randomInteger];
switch global.enemyFace[argument0]{
	case "bow":{
		global.enemyPositionX[argument0] = irandom(4);
		global.enemyPositionY[argument0] = 0;
		break;}
	case "port":{
		global.enemyPositionX[argument0] = 0;
		global.enemyPositionY[argument0] = irandom(3);
		break;}
	case "starboard":{
		global.enemyPositionX[argument0] = 5;
		global.enemyPositionY[argument0] = irandom(3);
		break;}}

	
clamp(global.enemyPositionX[argument0],1,4);
clamp(global.enemyPositionY[argument0],1,3);

ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument0], global.enemyPositionY[argument0], argument0);
