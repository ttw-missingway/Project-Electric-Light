/// @description Insert description here
// You can write your code in this editor
for (i=0; i<4; i++){
	draw_text(x + 80 * i, y, "channel: " + string(global.enemyPreCDInSlot[i]));
	draw_text(x + 80 * i, y+16, global.cellKeyword[global.enemyInSlot[i]]);
	draw_text(x + 80 * i, y+32, "X: " + string(global.enemyPositionX[global.enemyInSlot[i]]));
	draw_text(x + 80 * i, y+48, "Y: " + string(global.enemyPositionY[global.enemyInSlot[i]]));
	draw_text(x + 80 * i, y+64, "facing: " + string(global.enemyFace[global.enemyInSlot[i]]));}
	
	draw_text(80, 0, "head: " + string(ds_queue_head(enemyAttackOrder)));
	draw_text(80, 16, "bugtest: " + string(ds_queue_head(enemyAttackOrder)));