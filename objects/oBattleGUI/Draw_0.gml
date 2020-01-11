/// @description Insert description here
// You can write your code in this editor
//drawActorStats();
drawMenu();
draw_text(x, y-32, "bugTest: " + string(bugTest));
drawActorStats();
draw_text(oPlayerInterface.x, oPlayerInterface.y+48, slotSelection);
/*
	if global.enemyActiveInSlot[0] = false{
		draw_text(836,70,string(global.enemyPreCDInSlot[0]));}
		
	draw_text(836,70+16,string(global.enemyAtkKeyword[global.enemyAttackLoadedInSlot[0]]));*/