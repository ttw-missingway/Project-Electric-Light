/// @description Insert description here
// You can write your code in this editor
var xdraw = 80
var xoffset = 32

for (i=0; i<10; i++){
	draw_text(x - xoffset + xdraw * i, y, "channel: " + string(global.enemyPreCDInSlot[i]));
	draw_text(x - xoffset + xdraw * i, y+16, global.cellKeyword[global.enemyInSlot[i]]);
	draw_text(x - xoffset + xdraw * i, y+32, "X: " + string(global.enemyPositionX[global.enemyInSlot[i]]));
	draw_text(x - xoffset + xdraw * i, y+48, "Y: " + string(global.enemyPositionY[global.enemyInSlot[i]]));
	draw_text(x - xoffset + xdraw * i, y+64, "facing: " + string(global.enemyFace[global.enemyInSlot[i]]));
	draw_text(x - xoffset + xdraw * i, y+80, "HP: " + string(global.enemyHP[global.enemyInSlot[i]]));
	draw_text(x - xoffset + xdraw * i, y+96, "CD: " + string(global.enemyCDInSlot[i]));
	draw_text(x - xoffset + xdraw * i, y+112, "State: " + string(global.enemyState[global.enemyInSlot[i]]));}
	
	draw_text(xdraw, 0, "head: " + string(ds_queue_head(enemyAttackOrder)));
	draw_text(xdraw, 16, "bugtest: " + string(bugTest));