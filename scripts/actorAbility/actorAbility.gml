///actorAbility(actor, attack, target);
if keyboard_check_pressed(keyA){
	if global.actorActiveInSlot[global.activeSlot] = true{
		
		enemyTargetted = argument2
		var targetAllyOrEnemy = "enemy";
		var hitSuccess = true;
		
		
		if global.actorStatus[argument0] = "madness"{
			var listOfTargets = ds_list_create();
			for (i=0;i<3;i++){
				if global.actorInSlot[i] != empty{
					ds_list_add(listOfTargets,global.actorInSlot[i]);}}
			for (i=0;i<11;i++){
				if global.enemyInSlot[i] != empty{
					ds_list_add(listOfTargets,global.enemyInSlot[i]);}}
			randomSelection = irandom_range(1, ds_list_size(listOfTargets))-1;
			enemyTargetted = ds_list_find_value(listOfTargets, randomSelection);
			ds_list_destroy(listOfTargets);
			}
			
		if enemyTargetted < 600	then targetAllyOrEnemy = "ally";
					
		if targetAllyOrEnemy = "enemy"{
			hitSuccess = performHitChance(argument1, argument0, enemyTargetted);}
		
		if hitSuccess = true{
			
			if targetAllyOrEnemy = "enemy"{
				var baseDamage = floor(
					(global.actorStrength[argument0] * global.atkDmgMod[argument1]) - global.enemyArmor[enemyTargetted]);
		
		
				if global.enemyState[enemyTargetted] = "guard" {
					global.enemyHP[enemyTargetted]								-= max(
																			baseDamage-global.enemyGuard[enemyTargetted], 0);}
			
				else if global.enemyState[enemyTargetted] = "counter" {
					global.enemyHP[enemyTargetted]								-= baseDamage;
					enemyPerformCounter(baseDamage, enemyTargetted, argument0);}
			
				else {
					global.enemyHP[enemyTargetted]								-= baseDamage;}}
					
			if targetAllyOrEnemy = "ally"{	
				var baseDamage = floor(
					(global.actorStrength[argument0] * global.atkDmgMod[argument1]) - global.actorArmor[enemyTargetted]);
		
		
				if global.actorState[enemyTargetted] = "guard" {
					global.actorHP[enemyTargetted]								-= max(
																			baseDamage-global.actorGuard[enemyTargetted], 0);}
			
				else if global.enemyState[enemyTargetted] = "counter" {
					global.actorHP[enemyTargetted]								-= baseDamage;
					enemyPerformCounter(baseDamage, enemyTargetted, argument0);}
			
				else {
					global.actorHP[enemyTargetted]								-= baseDamage;}}}
				
			
		global.actorActiveInSlot[global.activeSlot]		= false;
		global.actorCDInSlot[global.activeSlot]			= global.atkCD[argument1];
		battleState = "actorSelect";}}