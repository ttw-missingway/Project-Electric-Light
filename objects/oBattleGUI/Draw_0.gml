/// @description Insert description here
// You can write your code in this editor
drawActorStats();


	if global.enemyActiveInSlot[0] = false{
		draw_text(836,70,string(global.enemyPreCDInSlot[0]));}
		
	draw_text(836,70+16,string(global.enemyAtkKeyword[global.enemyAttackLoadedInSlot[0]]));