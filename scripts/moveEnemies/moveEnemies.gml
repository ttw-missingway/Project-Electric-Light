ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1], noAccess);

switch global.enemyAtkDestination[argument0]{
	
	case "none": {break;}
	
	case "adjLeft": {
		switch global.enemyFace[argument1]{
			case "bow":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1]+1, global.enemyPositionY[argument1]) = noAccess{
					global.enemyPositionX[argument1]++;}
				break;}
			case "port":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1]-1) = noAccess{
					global.enemyPositionY[argument1]--;}
				break;}
			case "starboard":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1]+1) = noAccess{
					global.enemyPositionY[argument1]++;}
				break;}}
		break;}
		
	case "adjRight": {
		switch global.enemyFace[argument1]{
			case "bow":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1]-1, global.enemyPositionY[argument1]) = noAccess{
					global.enemyPositionX[argument1]--;}
				break;}
			case "port":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1]+1) = noAccess{
					global.enemyPositionY[argument1]++;}
				break;}
			case "starboard":{
				if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1]-1) = noAccess{
					global.enemyPositionY[argument1]--;}
				break;}}
		break;}
		
	case "parallel": {
		switch global.enemyFace[argument1]{
			case "port":{
				if ds_grid_get(oGridController.newGrid, 5, global.enemyPositionY[argument1]) = noAccess{
					global.enemyPositionX[argument1] = 5;
					global.enemyFace[argument1] = "starboard";}
				break;}
			case "starboard":{
				if ds_grid_get(oGridController.newGrid, 0, global.enemyPositionY[argument1]) = noAccess{
					global.enemyPositionX[argument1] = 0;
					global.enemyFace[argument1] = "port";}
				break;}}
		break;}
		
	case "random":{
		randomizeEnemyPosition(argument1);
		break;}
		
	case "match": {
		newTargetX[0]=0;
		newTargetY[0]=0;
		newTargetX[1]=0;
		newTargetY[1]=0;
		newTargetX[2]=0;
		newTargetY[2]=0;
		maxK = 0;
		var k = 0;
		
		for (i=0; i<5; i++){
			for (j=0; j<4; j++){
				if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, i, j)] = "targetable"{
					k++;
					maxK++;
					newTargetX[k] = i;
					newTargetY[k] = j;
					}}}
		
		k = irandom_range(1, maxK);
					
		switch global.enemyFace[argument1]{
			case "bow":{
				if ds_grid_get(oGridController.newGrid, newTargetX[k], 0) = noAccess{
					global.enemyPositionX[argument1] = newTargetX[k];}
				break;}
			case "port":{
				if ds_grid_get(oGridController.newGrid, 0, newTargetY[k]) = noAccess{
					global.enemyPositionY[argument1] = newTargetY[k];}
				break;}
			case "starboard":{
				if ds_grid_get(oGridController.newGrid, 5, newTargetY[k]) = noAccess{
					global.enemyPositionY[argument1] = newTargetY[k];}
				break;}}
		break;}}
		
ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], global.enemyPositionY[argument1], argument1);
