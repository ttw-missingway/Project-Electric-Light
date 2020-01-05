switch argument0{
	case "cave":{
		global.enemyInSlot[9] = wolf2;
		global.enemyInSlot[4] = wolf1;
		global.enemyInSlot[5] = fireBat2;
		break;}
	case "garden":{
		global.enemyInSlot[1] = madnessMoth1;
		global.enemyInSlot[2] = rainbowMoth1;
		global.enemyInSlot[5] = madnessMoth2;
		global.enemyInSlot[8] = rainbowMoth2;
		break;}
	case "seatrail":{
		global.enemyInSlot[2] = fountainFish;
		global.enemyInSlot[5] = beluga;
		global.enemyInSlot[8] = fountainFish;
		break;}}
		
for (i=0; i<10; i++){
	if global.enemyInSlot[i] != empty{
		global.enemyActiveInSlot[i] = true;}}
		
global.enemyPositionX[global.enemyInSlot[0]] = 1;
global.enemyPositionY[global.enemyInSlot[0]] = 0;
global.enemyFace[global.enemyInSlot[0]] = "bow";

global.enemyPositionX[global.enemyInSlot[1]] = 2;
global.enemyPositionY[global.enemyInSlot[1]] = 0;
global.enemyFace[global.enemyInSlot[1]] = "bow";

global.enemyPositionX[global.enemyInSlot[2]] = 3;
global.enemyPositionY[global.enemyInSlot[2]] = 0;
global.enemyFace[global.enemyInSlot[2]] = "bow";

global.enemyPositionX[global.enemyInSlot[3]] = 4;
global.enemyPositionY[global.enemyInSlot[3]] = 0;
global.enemyFace[global.enemyInSlot[3]] = "bow";

global.enemyPositionX[global.enemyInSlot[4]] = 0;
global.enemyPositionY[global.enemyInSlot[4]] = 1;
global.enemyFace[global.enemyInSlot[4]] = "port";

global.enemyPositionX[global.enemyInSlot[5]] = 0;
global.enemyPositionY[global.enemyInSlot[5]] = 2;
global.enemyFace[global.enemyInSlot[5]] = "port";

global.enemyPositionX[global.enemyInSlot[6]] = 0;
global.enemyPositionY[global.enemyInSlot[6]] = 3;
global.enemyFace[global.enemyInSlot[6]] = "port";

global.enemyPositionX[global.enemyInSlot[7]] = 5;
global.enemyPositionY[global.enemyInSlot[7]] = 1;
global.enemyFace[global.enemyInSlot[7]] = "starboard";

global.enemyPositionX[global.enemyInSlot[8]] = 5;
global.enemyPositionY[global.enemyInSlot[8]] = 2;
global.enemyFace[global.enemyInSlot[8]] = "starboard";

global.enemyPositionX[global.enemyInSlot[9]] = 5;
global.enemyPositionY[global.enemyInSlot[9]] = 3;
global.enemyFace[global.enemyInSlot[9]] = "starboard";