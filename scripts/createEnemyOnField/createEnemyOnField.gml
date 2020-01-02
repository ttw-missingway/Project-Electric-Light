var foundEnemy = 0;

switch argument0{
	case "myEnemy":{	
		for (i=myEnemy; i<myEnemy10; i++){
			slotFreeOfEnemy[i] =0;}
		for (i=myEnemy; i<myEnemy10; i++){
			for (j=0; j<10; j++){
				if global.enemyInSlot[j] != i{
					slotFreeOfEnemy[i]++;}}
			if slotFreeOfEnemy[i] = 10{
				foundEnemy = i;
				break;}}}
	break;}
				
if foundEnemy > 0{
	var foundSlot = false;
	var foundGrid = false;

	for (i=0; i<10; i++){
		if global.enemyInSlot[i] = empty && foundSlot = false{
			global.enemyInSlot[i] = foundEnemy;
			global.enemyActiveInSlot[i] = true;
			ds_queue_enqueue(enemyAttackOrder,i);
			foundSlot = true;
			for (j=1; j<4; j++){
				if ds_grid_get(oGridController.newGrid, 0, j) = noAccess && foundGrid = false{
					ds_grid_set(oGridController.newGrid, 0, j, foundEnemy);
					createStatsEnemyOnField(foundEnemy);
					global.enemyFace[foundEnemy] = "port";
					global.enemyPositionX[foundEnemy] = 0;
					global.enemyPositionY[foundEnemy] = j;
					foundGrid = true;}}
			for (j=1; j<5; j++){
				if ds_grid_get(oGridController.newGrid, j, 0) = noAccess && foundGrid = false{
					ds_grid_set(oGridController.newGrid, j, 0, foundEnemy);
					createStatsEnemyOnField(foundEnemy);
					global.enemyFace[foundEnemy] = "bow";
					global.enemyPositionX[foundEnemy] = j;
					global.enemyPositionY[foundEnemy] = 0;
					foundGrid = true;}}
			for (j=1; j<4; j++){
				if ds_grid_get(oGridController.newGrid, 5, j) = noAccess && foundGrid = false{
					ds_grid_set(oGridController.newGrid, 5, j, foundEnemy);
					createStatsEnemyOnField(foundEnemy);
					global.enemyFace[foundEnemy] = "starboard";
					global.enemyPositionX[foundEnemy] = 5;
					global.enemyPositionY[foundEnemy] = j;
					foundGrid = true;}}}}}

global.enemyCDInSlot[argument1] = global.enemyAtkDmgCD[global.enemyAttackLoadedInSlot[argument1]] * global.enemyCDReduction[global.enemyInSlot[argument1]];
global.enemyAttackInProgress = false;
global.enemyAttackLoadedInSlot[i] = empty;
