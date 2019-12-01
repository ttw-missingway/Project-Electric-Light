ds_list_shuffle(global.enemyAttackList[argument0]);
	
	validTarget		= 0;
	isAttackUseable	= false;

if global.enemyAtkMassive[argument0] = true {
	if global.enemyMassiveCD[argument0] = 0{
		var currentAttack = ds_list_find_value(global.enemyAttackList[argument0], 0);}}
else{
	var currentAttack = ds_list_find_value(global.enemyAttackList[argument0], 0);}


if global.enemyAtkTargetType[currentAttack] = "unique"{
	if isPlayerTargettable(argument0, currentAttack) = true{
		enemyPerformAttack(currentAttack);}}
else{
	enemyPerformAttack(currentAttack);}
			
								
			