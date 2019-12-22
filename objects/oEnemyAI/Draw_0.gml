/// @description Insert description here
// You can write your code in this editor
for (i=0; i<2; i++){
	draw_text(x + 80 * i, y, "channel: " + string(global.enemyPreCDInSlot[i]));
	draw_text(x + 80 * i, y+16, global.cellKeyword[global.enemyInSlot[i]]);
	draw_text(x + 80 * i, y+32, "X: " + string(global.enemyPositionX[global.enemyInSlot[i]]));
	draw_text(x + 80 * i, y+48, "Y: " + string(global.enemyPositionY[global.enemyInSlot[i]]));
	draw_text(x + 80 * i, y+64, "facing: " + string(global.enemyFace[global.enemyInSlot[i]]));}
	
	draw_text(80, 0, "bugtest: " + string(bugTest));