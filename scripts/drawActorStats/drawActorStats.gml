var newLine = 16;
var newColumn = 124;

draw_text(x+64, y, "State: \n" + string(
	oPlayerInterface.battleState));
	
draw_text(x+64, y + newLine*3, "Selected Actor: \n" + string(
	global.actorKeyword[
		global.actorInSlot[
			global.activeSlot]]));
			
//Allies
for (i=0;i<=2;i++){
	
	draw_set_alpha(0.6);
	
	if global.activeSlot = i{
		draw_set_alpha(1);}
		
	draw_text(x + newColumn*(i+1), y, "Party " + string(i+1) + ":" + string(
		global.actorKeyword[
			global.actorInSlot[i]]));
			
	if global.actorStatus[global.actorInSlot[i]] = "burn"{
		draw_sprite(sBurnIcon, 0, x + newColumn*(i+1) + 64, y + 42);}
		
	if global.actorStatus[global.actorInSlot[i]] = "paralyze"{
		draw_sprite(sParalyzeIcon, 0, x + newColumn*(i+1) + 64, y + 42);}
		
	if global.actorStatus[global.actorInSlot[i]] = "stunned"{
		draw_sprite(sStunnedIcon, 0, x + newColumn*(i+1) + 64, y + 42);}
		
	if global.actorStatus[global.actorInSlot[i]] = "blind"{
		draw_sprite(sBlindnessIcon, 0, x + newColumn*(i+1) + 64, y + 42);}
		
	if global.actorStatus[global.actorInSlot[i]] = "madness"{
		draw_sprite(sMadnessIcon, 0, x + newColumn*(i+1) + 64, y + 42);}
		
	draw_text(x + newColumn*(i+1), y + newLine, "HP: " + string(
		global.actorHP[
			global.actorInSlot[i]]));
		
	draw_text(x + newColumn*(i+1), y + newLine*2, "CD: " + string(
		global.actorCDInSlot[i]));
		
	draw_set_alpha(0.8);
		
	draw_text(x + newColumn*(i+1), y + newLine*3, "Strength: " + string(
		global.actorStrength[global.actorInSlot[i]]));
		
	draw_text(x + newColumn*(i+1), y + newLine*4, "CDR: " + string(
		global.actorCDReduction[global.actorInSlot[i]]));		
		
	draw_text(x + newColumn*(i+1), y + newLine*5, "Evasion: " + string(
		global.actorEvasion[global.actorInSlot[i]]));	
		
	draw_text(x + newColumn*(i+1), y + newLine*6, "Armor: " + string(
		global.actorArmor[global.actorInSlot[i]]));	
		
	draw_text(x + newColumn*(i+1), y + newLine*7, "X: " + string(
		global.actorPositionX[global.actorInSlot[i]]));	
		
	draw_text(x + newColumn*(i+1), y + newLine*8, "Y: " + string(
		global.actorPositionY[global.actorInSlot[i]]));	
		
		
	draw_set_alpha(1);}
