ds_list_shuffle(global.enemyAttackList[argument0]);
	
//	validTarget		= 0;
//	isAttackUseable	= false;

topOfList = ds_list_find_value(global.enemyAttackList[argument0], 0);

if global.enemyAtkMassive[topOfList] = true {
	if global.enemyMassiveCD[topOfList] = 0{
		currentAttack = topOfList;}}
else{
	currentAttack = topOfList;}


if enemyAttackUseOrToss(currentAttack, argument0) = "use"{
	indicateAttack(currentAttack,argument0);} 