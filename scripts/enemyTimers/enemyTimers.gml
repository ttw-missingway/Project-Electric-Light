

if !global.attackInProgress && !global.gameplayFreeze{
	
//Enemy Has Selected Attack And Is Now Waiting To Perform It
	
	for (i=0; i<=9; i++){
		if global.enemyPreCDInSlot[i] > 0 {
			global.enemyPreCDInSlot[i]--;}
		if global.enemyPreCDInSlot[i] = 0{
			global.enemyPreCDInSlot[i] = -1;
			for (j=0; j<=5; j++){
				for (k=0; k<=4 ; k++){
					global.highlightTable[j, k] = false;
					global.highlightTableBee[j, k] = false;}}
			global.enemyAttackPerformInSlot[i] = true;
			}}

//Enemy Has Performed Attack And Is Now Waiting To Act Again

	for (i=0; i<=9; i++){
		if global.enemyCDInSlot[i] > 0 {
			global.enemyCDInSlot[i]--;
			bugTest = true;}
		if global.enemyCDInSlot[i] = 0{
			global.enemyActiveInSlot[i] = true;
			global.enemyCDInSlot[i] = -1;
			ds_queue_enqueue(oEnemyAI.enemyAttackOrder, i);
			if global.enemyState[global.enemyInSlot[i]] != "none" { 
				global.enemyState[global.enemyInSlot[i]] = "none"; }}}}