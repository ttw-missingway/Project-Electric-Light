/// @description Insert description here
// You can write your code in this editor


var m = ds_queue_head(enemyAttackOrder);

if m != undefined{
	
	if global.enemyAttackInProgress = false{
		if global.enemyActiveInSlot[m] = true{
			global.enemyAttackInProgress = true;
			enemySelectAttack(global.enemyInSlot[m], m);}}


	if global.enemyAttackPerformInSlot[m] = true {
		enemyPerformAttack(global.enemyAttackLoadedInSlot[m], global.enemyInSlot[m], m);
		global.enemyAttackPerformInSlot[m] = false;
		ds_queue_dequeue(oEnemyAI.enemyAttackOrder);}}
		
