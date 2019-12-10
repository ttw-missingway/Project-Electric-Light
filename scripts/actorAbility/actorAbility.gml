///actorAbility(actor, attack, target);
if keyboard_check_pressed(keyA){
	if global.actorActiveInSlot[global.activeSlot] = true{
		global.actorActiveInSlot[global.activeSlot]		= false;
		global.actorCDInSlot[global.activeSlot]			= global.atkCD[argument1];
		
		var baseDamage = floor(
				(global.actorStrength[argument0] * global.atkDmgMod[argument1]) - global.enemyArmor[argument2]);
		
		
		if global.enemyState[argument2] = "guard" {
			global.enemyHP[argument2]								-= max(
																		baseDamage-global.enemyGuard[myEnemy], 
																		0);}
			
		else if global.enemyState[argument2] = "counter" {
			global.enemyHP[argument2]								-= baseDamage;
			enemyPerformCounter(baseDamage, argument2, argument0);}
			
		else {
			global.enemyHP[argument2]								-= baseDamage;}

		battleState = "actorSelect";}}