/*global.enemyAtkKeyword[genMelee]				= "Generic Melee";
global.enemyAtkDmgMod[genMelee]					= 1.5; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMelee]					= 10*second;
global.enemyAtkActive[genMelee]					= true;
global.enemyAtkDmgType[genMelee]				= "physical";
global.enemyAtkDestination[genMelee]			= "unmoving";
global.enemyAtkStateChange[genMelee]			= "none";
global.enemyAtkParent[genMelee]					= "none";
global.enemyAtkMassive[genMelee]				= false;
global.enemyAtkStatus[genMelee]					= "none";
global.enemyAtkTravel[genMelee]					= "volley"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[genMelee]			= true; //middle lane (2y) is always the relative lane, (1x) is shallow (right next to the enemy), (4x) is deep, (1y) is to the left, (3y) is to the right)
global.enemyAtkGridMaxCells[genMelee]			= 1;
global.enemyAtkGridX[genMelee,0]				= 1;
global.enemyAtkGridY[genMelee,0]				= 2;*/


//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//FIND TARGET///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

totalRecipients = 0;
bugTest = true;


for (j=0; j<13; j++){
	damageRecipient[j] = 0;}



for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	
	if global.enemyAtkGridRelative = false{
		
		var getTargetX = global.enemyAtkGridX[argument0, i];
		var getTargetY = global.enemyAtkGridY[argument0, i];}
		
	else {
		
		switch global.enemyFace[argument1]{
			
			case "bow": {
				var getTargetX = global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, i];				
				break;}
				
			case "port": {
				var getTargetX = global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, i];
				break;}
				
			case "starboard": {
				var getTargetX = global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, i];
				break;}}}
				
	if global.enemyAtkTravel[argument0] = "volley"{
		collideWithObstacles(getTargetX, getTargetY);
		addTargetablePlayers(getTargetX, getTargetY);}
		
	if global.enemyAtkTravel[argument0] = "beeline"{
		if onlyTargetFound = false{
			collideWithObstacles(getTargetX, getTargetY);
			addTargetablePlayers(getTargetX, getTargetY);}}}
					
		

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//MOVE ACTORS///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

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

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// CHANGE STATE \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\
			
global.enemyState[argument1] = global.enemyAtkStateChange[argument0];
if global.enemyAtkStateChange[argument0] = "counter"{
	global.enemyCounterType[argument1] = global.enemyAtkCounterType[argument0];}
	
//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\  NERF AND BUFF \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\
			
switch global.enemyAtkBuffTarget[argument0]{
	case "self": {
		switch global.enemyAtkBuffType[argument0]{
			case "strength": {
				global.enemyStrength[argument1] += global.enemyAtkBuffValue[argument0];
				break;}
			case "cd": {
				global.enemyCDReduction[argument1] += global.enemyAtkBuffValue[argument0];
				break;}
			case "armor": {
				global.enemyArmor[argument1] += global.enemyAtkBuffValue[argument0];
				break;}
			case "evasion": {
				global.enemyEvasion[argument1] += global.enemyAtkBuffValue[argument0];
				break;}}
		break;}
		
	case "grid": {
		switch global.enemyAtkBuffType[argument0]{
			case "strength": {
					for (j=0; j<13; j++){
						if damageRecipient[j] != 0{
							global.actorStrength[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "cd": {
					for (j=0; j<13; j++){
						if damageRecipient[j] != 0{
							global.actorCDReduction[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "armor": {

					for (j=0; j<13; j++){
						if damageRecipient[j] != 0{
							global.actorArmor[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "evasion": {

					for (j=0; j<13; j++){
						if damageRecipient[j] != 0{
							global.actorEvasion[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];}}
				break;}}
		break;}
		
	case "all enemies": {
		switch global.enemyAtkBuffType[argument0]{
			case "strength": {
					for (i=0; i<11; i++){
						if global.enemyInSlot[i] != empty{
							global.enemyStrength[global.enemyInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "cd": {
					for (i=0; i<11; i++){
						if global.enemyInSlot[i] != empty{
							global.enemyCDReduction[global.enemyInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "armor": {
					for (i=0; i<11; i++){
						if global.enemyInSlot[i] != empty{
							global.enemyArmor[global.enemyInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "evasion": {
					for (i=0; i<11; i++){
						if global.enemyInSlot[i] != empty{
							global.enemyEvasion[global.enemyInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}}
		break;}
		
	case "all actors": {
		switch global.enemyAtkBuffType[argument0]{
			case "strength": {
					for (i=0; i<3; i++){
						if global.actorInSlot[i] != empty{
							global.actorStrength[global.actorInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "cd": {
					for (i=0; i<3; i++){
						if global.actorInSlot[i] != empty{
							global.actorCDReduction[global.actorInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "armor": {
					for (i=0; i<3; i++){
						if global.actorInSlot[i] != empty{
							global.actorArmor[global.actorInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}
			case "evasion": {
					for (i=0; i<3; i++){
						if global.actorInSlot[i] != empty{
							global.actorEvasion[global.actorInSlot[i]] += global.enemyAtkBuffValue[argument0];}}
				break;}}
		break;}}
			


//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// APPLY DMG ///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

for (i=0; i<=totalRecipients; i++){
	for (j=0; j<13; j++){
		if damageRecipient[j] != 0{
			global.enemyAttackLoadedInSlot[argument2] = empty;
			global.actorHP[damageRecipient[j]] -= floor((global.enemyAtkDmgMod[argument0] * global.enemyStrength[argument1]));
			global.actorStatus[damageRecipient[j]] = global.enemyAtkStatus[argument0];
			damageRecipient[j] = 0;}}}
			

	
//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// APPLY STATUS \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

			
global.enemyCDInSlot[argument2] = global.enemyAtkDmgCD[argument0];
onlyTargetFound = false; //only for beeline
