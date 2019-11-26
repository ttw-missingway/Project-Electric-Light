/// @description Insert description here
// You can write your code in this editor
var newLine = 16;
var newColumn = 264;

draw_text(x, y, "State: \n" + string(
	oPlayerInterface.battleState));
	
draw_text(x, y + newLine*3, "Selected Actor: \n" + string(
	global.actorKeyword[
		global.actorInSlot[
			global.activeSlot]]));
			
//Allies
for (i=0;i<=2;i++){
	
	draw_set_alpha(0.8);
	
	if global.activeSlot = i{
		draw_set_alpha(1);}
		
	draw_text(x + newColumn*(i+1), y, "Party " + string(i+1) + ":" + string(
		global.actorKeyword[
			global.actorInSlot[i]]));
		
	draw_text(x + newColumn*(i+1), y + newLine, "HP: " + string(
		global.actorHP[
			global.actorInSlot[i]]));
		
	draw_text(x + newColumn*(i+1), y + newLine*2, "CD: " + string(
		global.actorCDInSlot[i]));
		
	draw_set_alpha(1);}

//Enemies
	draw_text(x + newColumn, y + newLine*4, "Enemy " + string(1) + ":" + string(
		global.enemyKeyword[
			global.enemyInSlot[0]]));
		
	draw_text(x + newColumn, y + newLine*5, "HP: " + string(
		global.enemyHP[
			global.enemyInSlot[0]]));
		
	draw_text(x + newColumn, y + newLine*6, "CD: " + string(
		global.enemyCDInSlot[0]));