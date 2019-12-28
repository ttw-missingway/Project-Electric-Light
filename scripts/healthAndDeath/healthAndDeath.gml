for (i=0; i<10; i++){
	if global.enemyInSlot[i] != empty{
		global.enemyHP[global.enemyInSlot[i]] = clamp(global.enemyHP[global.enemyInSlot[i]],0,global.enemyHPStart[global.enemyInSlot[i]]);
		if global.enemyHP[global.enemyInSlot[i]] = 0{
			global.highlightTable[global.enemyAtkGridX[global.enemyAttackLoadedInSlot[i], 0], global.enemyAtkGridY[global.enemyAttackLoadedInSlot[i], 0]] = false;
			for (j=0; j<global.enemyAtkGridMaxCells[global.enemyAttackLoadedInSlot[i]]; j++){
					global.highlightTable[translateRelativeGridX(global.enemyAttackLoadedInSlot[i], global.enemyInSlot[i], j), translateRelativeGridY(global.enemyAttackLoadedInSlot[i], global.enemyInSlot[i], j)] = false;
					global.highlightTableBee[translateRelativeGridX(global.enemyAttackLoadedInSlot[i], global.enemyInSlot[i], j), translateRelativeGridY(global.enemyAttackLoadedInSlot[i], global.enemyInSlot[i], j)] = false;}
			ds_grid_set(oGridController.newGrid, global.enemyPositionX[global.enemyInSlot[i]], global.enemyPositionY[global.enemyInSlot[i]], noAccess);
			global.enemyInSlot[i] = empty;
			global.enemyActiveInSlot[i] = false;
			global.enemyCDInSlot[i] = -1;
			global.enemyPreCDInSlot[i] = -1;
			global.enemyPositionX[global.enemyInSlot[i]] = 69;
			global.enemyPositionY[global.enemyInSlot[i]] = 69;
			global.enemyAttackInProgress = false;
			global.enemyAttackLoadedInSlot[i] = empty;}}}
		
for (i=0; i<3; i++){
	if global.actorInSlot[i] != empty{
		global.actorHP[global.actorInSlot[i]] = clamp(global.actorHP[global.actorInSlot[i]],0,global.actorHPStart[global.actorInSlot[i]]);
		if global.actorHP[global.actorInSlot[i]] = 0{
			global.actorState[global.enemyInSlot[i]] = "dead";}}}


