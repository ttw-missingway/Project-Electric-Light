/*	switch global.enemyAtkArchetype[argument1]{
		case "melee": {
			var clearPath = 0;
			switch global.enemyFace[argument0]{
				case "bow": {
					for (j=0; j<2; j++){
						if global.actorPositionX[global.actorInSlot[j]] = global.enemyPositionX[argument0]{
							for (k=1; k<global.actorPositionY[global.actorInSlot[j]]; k++){
								if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument0], k) = "vacant"{
									clearPath++;}}
							if clearPath = (global.actorPositionY[global.actorInSlot[j]])-1{
								isAttackUseable = true;
								validTarget = j;
								break;}}}
					break;}
				case "starboard": {
					for (j=0; j<2; j++){
						if global.actorPositionY[global.actorInSlot[j]] = global.enemyPositionY[argument0]{
							for (k=5; k<global.actorPositionX[global.actorInSlot[j]]; k--){
								if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0], k) = "vacant"{
									clearPath++;}}
							if clearPath = 5-(global.actorPositionX[global.actorInSlot[j]]){
								isAttackUseable = true;
								validTarget = j;
								break;}}}
					break;}
				case "port": {
					for (j=0; j<2; j++){
						if global.actorPositionY[global.actorInSlot[j]] = global.enemyPositionY[argument0]{
							for (k=0; k<global.actorPositionX[global.actorInSlot[j]]; k++){
								if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0], k) = "vacant"{
									clearPath++;}}
							if clearPath = global.actorPositionX[global.actorInSlot[j]]{
								isAttackUseable = true;
								validTarget = j;
								break;}}}
					break;}}
			break;}
					
		case "beeline": {
			if global.enemyFace[argument0] = "bow"{
				isAttackUseable = true;}
			if global.enemyFace[argument0] = "starboard"{
				if ds_grid_get(oGridController.newGrid, 0, global.enemyPositionY[argument0]) = "vacant"{
					isAttackUseable = true;}}
			if global.enemyFace[argument0] = "port"{
				if ds_grid_get(oGridController.newGrid, 5, global.enemyPositionY[argument0]) = "vacant"{
					isAttackUseable = true;}}
			break;}
			
		case "volley": {
			for (j=0; j<2; j++){
				if global.actorInSlot[0] != "empty"{
					validTarget = j;
					isAttackUseable = true;}}
			break;}
			
		case "guard":{
			isAttackUseable = true;
			break;}
			
		case "reposition": {
			switch global.enemyFace[argument0]{
				case "bow":{
					if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument0]+1, 0) = "vacant"{
						isAttackUseable = true;}
					if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument0]-1, 0) = "vacant"{
						isAttackUseable = true;}
					break;}
				case "port":
				case "starboard":{
					if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0]+1, 0) = "vacant"{
						isAttackUseable = true;}
					if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0]-1, 0) = "vacant"{
						isAttackUseable = true;}
					break;}}
			break;}}
			
	return isAttackUseable;*/
	
useOrToss = "use"

if global.enemyAtkMelee[argument0] = 1{
	if global.enemyAtkGridMaxCells[argument0] = 1{
		if global.enemyAtkGridRelative[argument0] = false{
			if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, global.enemyAtkGridX[argument0,0], global.enemyAtkGridY[argument0,0])] = "untargetable"{
				useOrToss = "toss";}}
		else{
			switch global.enemyFace[argument1]{
				case "bow":{
					if 
					ds_grid_get(oGridController.newGrid, 
					global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, 0], 
					global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, 0]) = vacant{
						useOrToss = "toss";}
					break;}
				case "port":{
					if 
					ds_grid_get(oGridController.newGrid, 
					global.enemyAtkGridX[argument0, 0], 
					global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, 0]) = vacant{
						useOrToss = "toss";}
					break;}
				case "starboard":{
					if 
					ds_grid_get(oGridController.newGrid, 
					global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, 0], 
					global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, 0]) = vacant{
						useOrToss = "toss";}
					break;}}}}}
	

return useOrToss;