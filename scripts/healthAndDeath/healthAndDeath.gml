for (i=0; i<10; i++){
	if global.enemyInSlot[i] != empty{
		global.enemyHP[global.enemyInSlot[i]] = clamp(global.enemyHP[global.enemyInSlot[i]],0,global.enemyHPStart[global.enemyInSlot[i]]);}}
		
for (q=0; q<10; q++){	
	if global.enemyInSlot[q] != empty{
		if global.enemyHP[global.enemyInSlot[q]] = 0{
			if global.enemyDeathAttack[global.enemyInSlot[q]] != "none"{
				global.enemyAttackInProgress = true;
				enemyPerformAttack(global.enemyDeathAttack[global.enemyInSlot[q]], global.enemyInSlot[q], q);
				global.enemyDeathAttack[global.enemyInSlot[q]] = "none";}
			if global.enemyAtkSupport[global.enemyAttackLoadedInSlot[q]] = false{
				for (j=0; j<global.enemyAtkGridMaxCells[global.enemyAttackLoadedInSlot[q]]; j++){
					global.highlightTable[translateRelativeGridX(global.enemyAttackLoadedInSlot[q], global.enemyInSlot[q], j), translateRelativeGridY(global.enemyAttackLoadedInSlot[q], global.enemyInSlot[q], j)] = false;
					global.highlightTableBee[translateRelativeGridX(global.enemyAttackLoadedInSlot[q], global.enemyInSlot[q], j), translateRelativeGridY(global.enemyAttackLoadedInSlot[q], global.enemyInSlot[q], j)] = false;}}
			ds_grid_set(oGridController.newGrid, global.enemyPositionX[global.enemyInSlot[q]], global.enemyPositionY[global.enemyInSlot[q]], noAccess);
			global.enemyInSlot[q] = empty;
			global.enemyActiveInSlot[q] = false;
			global.enemyCDInSlot[q] = -1;
			global.enemyPreCDInSlot[q] = -1;
			global.enemyPositionX[global.enemyInSlot[q]] = 69;
			global.enemyPositionY[global.enemyInSlot[q]] = 69;
			global.enemyAttackInProgress = false;
			global.enemyAttackLoadedInSlot[q] = empty;}}}

for (i=0; i<3; i++){
	if global.actorInSlot[i] != empty{
		global.actorHP[global.actorInSlot[i]] = clamp(global.actorHP[global.actorInSlot[i]],0,global.actorHPStart[global.actorInSlot[i]]);
		if global.actorHP[global.actorInSlot[i]] = 0{
			global.actorState[global.enemyInSlot[i]] = "dead";}}}
