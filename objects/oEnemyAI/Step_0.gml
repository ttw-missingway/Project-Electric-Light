/// @description Insert description here
// You can write your code in this editor


for (m=0; m<=10; m++){
	if global.enemyActiveInSlot[m] = true{
		enemySelectAttack(global.enemyInSlot[m], m);}

	if global.enemyAttackPerformInSlot[m] = true{
		enemyPerformAttack(global.enemyAttackLoadedInSlot[m], global.enemyInSlot[m], m);
		global.enemyAttackPerformInSlot[m] = false;}}
		