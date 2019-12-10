/// @description Insert description here
// You can write your code in this editor

//for (i=0; i<=10; i++){

	if global.enemyActiveInSlot[0] = true{
		enemySelectAttack(myEnemy, 0);}

	if global.enemyAttackPerformInSlot[0] = true{
		enemyPerformAttack(global.enemyAttackLoadedInSlot[0], global.enemyInSlot[0], 0);
		global.enemyAttackPerformInSlot[0] = false;}
		