/*var tryTargetMax		= 0;
var validTargetIndex[0] = "empty";
var validTargetIndex[1] = "empty";
var validTargetIndex[2] = "empty";


for (i=0; i<2; i++){
	if global.actorInSlot[i] != "empty"{
		tryTargetMax++;}}

for (i=0; i<tryTargetMax; i++) {
	switch global.enemyAtkArchetype[argument0]{
		case "melee":{
			validTargetIndex[i] = "melee";
			if global.enemyFace[argument0] = "port"||global.enemyFace[argument0] = "starboard"{
				if global.actorPositionY[global.actorInSlot[i]] = global.enemyPositionY[argument0]{
					for (i=global.enemyPositionX; i<global.actorPositionX[global.actorInSlot[i]]; i++){
						if ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument0]) = "vacant"{*/
						
/*
melee can work if
	1. the enemy is port or starboard and there is a target that shares Y
	2. the enemy is bow and there is a target that shares X
	3. there is no obstruction in the way of enemy to target path
	4. the target must is tangible
melee should be judged for available targets

beeline can work if
	1. port and parallel starboard cell is unoccupied and vise versa
	
volley can work if
	1. enemy is tangible

massive attack can work if
	1. same attack has not been used within the last 3 turns 
	
guard can alway work

reposition can work if
	1. adjacent cell is unoccupied
*/

var maxChoices = 0;

for (i=0; i<10; i++){
	loadChoices[i] = 69;
	loadTarget[i] = 69;}


//10 can be edited to reflect the max abilities any enemy can learn
	
for (i=0; i<ds_list_size(global.enemyAttackList[argument0]); i++){
	
	validTarget[i]		= 0;
	isAttackUseable[i]	= false;
	
	var currentAttack = ds_list_find_value(global.enemyAttackList[argument0], i);
	
	switch global.enemyAtkArchetype[currentAttack]{
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
								isAttackUseable[i] = true;
								validTarget[i] = j;
								break;}}}
					break;}
				case "starboard": {
					for (j=0; j<2; j++){
						if global.actorPositionY[global.actorInSlot[j]] = global.enemyPositionY[argument0]{
							for (k=5; k<global.actorPositionX[global.actorInSlot[j]]; k--){
								if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0], k) = "vacant"{
									clearPath++;}}
							if clearPath = 5-(global.actorPositionX[global.actorInSlot[j]]){
								isAttackUseable[i] = true;
								validTarget[i] = j;
								break;}}}
					break;}
				case "port": {
					for (j=0; j<2; j++){
						if global.actorPositionY[global.actorInSlot[j]] = global.enemyPositionY[argument0]{
							for (k=0; k<global.actorPositionX[global.actorInSlot[j]]; k++){
								if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0], k) = "vacant"{
									clearPath++;}}
							if clearPath = global.actorPositionX[global.actorInSlot[j]]{
								isAttackUseable[i] = true;
								validTarget[i] = j;
								break;}}}
					break;}}
			break;}
					
		case "beeline": {
			if global.enemyFace[argument0] = "bow"{
				isAttackUseable[i] = true;}
			if global.enemyFace[argument0] = "starboard"{
				if ds_grid_get(oGridController.newGrid, 0, global.enemyPositionY[argument0]) = "vacant"{
					isAttackUseable[i] = true;}}
			if global.enemyFace[argument0] = "port"{
				if ds_grid_get(oGridController.newGrid, 5, global.enemyPositionY[argument0]) = "vacant"{
					isAttackUseable[i] = true;}}
			break;}
			
		case "volley": {
			for (j=0; j<2; j++){
				if global.actorInSlot[0] != "empty"{
					validTarget[i] = j;
					isAttackUseable[i] = true;}}
			break;}
			
		case "guard":{
			isAttackUseable[i] = true;
			break;}
			
		case "reposition": {
			switch global.enemyFace[argument0]{
				case "bow":{
					if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument0]+1, 0) = "vacant"{
						isAttackUseable[i] = true;}
					if ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument0]-1, 0) = "vacant"{
						isAttackUseable[i] = true;}
					break;}
				case "port":
				case "starboard":{
					if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0]+1, 0) = "vacant"{
						isAttackUseable[i] = true;}
					if ds_grid_get(oGridController.newGrid, global.enemyPositionY[argument0]-1, 0) = "vacant"{
						isAttackUseable[i] = true;}
					break;}}
			break;}}
			
	if isAttackUseable[i] = true{
		loadChoices[maxChoices] = ds_list_find_value(global.enemyAttackList[argument0], i);
		loadTarget[maxChoices] = validTarget[i];
		maxChoices++;}}
								
			
/////////////////////////////////////////
//////// PICK BEST OPTION ///////////////
/////////////////////////////////////////

//for now best option is random until above code is working correctly

/*
var bestPick = irandom(maxChoices);
myChoice = loadChoices[bestPick];
myTarget = loadTarget[bestPick];
*/