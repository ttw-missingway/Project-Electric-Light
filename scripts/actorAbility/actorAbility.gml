///actorAbility(actor, attack, target);
if keyboard_check_pressed(keyA){
	if global.actorActive[argument0] = true{
		global.actorActive[argument0]		= false;
		global.actorCD[argument0]			= global.atkDmgCD[argument1];
		global.enemyHP[argument2]			-= 
			floor(
				(global.actorAtkDmg[argument0] * global.atkDmgMod[argument1]) - global.enemyArmor[argument2]);}}