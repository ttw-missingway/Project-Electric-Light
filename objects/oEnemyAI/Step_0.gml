/// @description Insert description here
// You can write your code in this editor
healthAndDeath();


var m = ds_queue_head(enemyAttackOrder);

if m != undefined{
	if global.enemyInSlot[m] != empty{
	
		if global.enemyAttackInProgress = false{
			if global.enemyActiveInSlot[m] = true{
				global.enemyAttackInProgress = true;
				enemySelectAttack(global.enemyInSlot[m], m);}}


		if global.enemyAttackPerformInSlot[m] = true {
			if global.enemyAtkCreate[global.enemyAttackLoadedInSlot[m]] = "none"{
				enemyPerformAttack(global.enemyAttackLoadedInSlot[m], global.enemyInSlot[m], m);}
			else{
				createEnemyOnField(global.enemyAtkCreate[global.enemyAttackLoadedInSlot[m]], m);}
			global.enemyAttackLoadedInSlot[m] = empty;
			global.enemyAttackPerformInSlot[m] = false;
			ds_queue_dequeue(oEnemyAI.enemyAttackOrder);}}
	else{
		ds_queue_dequeue(oEnemyAI.enemyAttackOrder);}}
		
