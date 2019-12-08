/// @description battle States
// You can write your code in this editor


/*
enemyCountMax = 0;

for (i=0; i<9; i++){
	if global.enemyInSlot[i] != empty{
		enemyCountMax++;}}

for (i=0; i<enemyCountMax; i++){
	if global.enemyActiveInSlot[i]{
		enemySelectAttack(global.enemyInSlot[i]);}}*/
		
for (i=0; i<=5; i++){
	for (j=0; j<= 5; j++){
		global.highlightTable[i, j] = false;}}
		
enemySelectAttack(myEnemy);

clearPathExample = 0;

for (k=1; k<global.actorPositionY[global.actorInSlot[0]]; k++){
		if ds_grid_get(oGridController.newGrid, global.enemyPositionX[myEnemy], k) = "vacant"{
			clearPathExample++;}}