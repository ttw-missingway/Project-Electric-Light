///actorAbility(actor, attack, target);
if keyboard_check_pressed(keyA){
	if global.actorActiveInSlot[global.activeSlot] = true{
		global.actorActiveInSlot[global.activeSlot]		= false;
		global.actorCDInSlot[global.activeSlot]			= global.atkDmgCD[argument1];
		global.enemyHP[argument2]			-= 
			floor(
				(global.actorStrength[argument0] * global.atkDmgMod[argument1]) - global.enemyArmor[argument2]);
		battleState = "actorSelect"}}