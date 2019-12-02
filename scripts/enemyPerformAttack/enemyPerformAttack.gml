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

var totalRecipients;

for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	if global.cellTargetClass[
		ds_grid_get(
			oGridController.newGrid, 
			global.enemyAtkGridX[argument0, i], 
			global.enemyAtkGridY[argument0, i])] = "targetable" {
				totalRecipients++;
				damageRecipient[i] = ds_grid_get(
					oGridController.newGrid, 
					global.enemyAtkGridX[argument0, i],
					global.enemyAtkGridY[argument0, i]);}}
					
		

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//MOVE ACTORS///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

if global.enemyAtkDestinationX[argument0] != "none" {
	
	ds_grid_set(oGridController.newGrid,
		global.enemyPositionX[argument1],
		global.enemyPositionY[argument1],
		noAccess);
		
	ds_grid_set(oGridController.newGrid,
		global.enemyAtkDestinationX[argument0],
		global.enemyAtkDestinationY[argument0],
		argument1);}



//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// APPLY DMG ///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

for (i=0; i<=totalRecipients; i++){
	global.actorHP[i] -= (global.enemyAtkDmgMod[argument0]*global.enemyStrength[argument1]);}
	