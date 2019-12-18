/// @description Insert description here
// You can write your code in this editor
	draw_text(x, y, global.enemyPreCDInSlot[0]);
	draw_text(x, y+16, global.enemyActiveInSlot[0]);
	draw_text(x, y+32, global.enemyPositionX[myEnemy]);
	draw_text(x, y+48, global.enemyPositionY[myEnemy]);
	draw_text(x, y+64, drawMe[0]);
	draw_text(x, y+80, drawMe[1]);
	draw_text(x, y+96, global.cellKeyword[ds_grid_get(oGridController.newGrid, 3, 2)]);
	