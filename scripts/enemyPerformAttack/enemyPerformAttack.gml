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

for (j=0; j<13; j++){
	damageRecipient[j] = 0;}



for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	
	
	if global.enemyAtkGridRelative = false{
		
		var getTargetX = global.enemyAtkGridX[argument0, i];
		var getTargetY = global.enemyAtkGridY[argument0, i];
		
		addTargetablePlayers(getTargetX, getTargetY);}
		
	else {
		
		switch global.enemyFace[argument1]{
			
			case "bow": {
				var getTargetX = global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, i];

				addTargetablePlayers(getTargetX, getTargetY);
				
				break;}
				
			case "port": {
				var getTargetX = global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, i];
				
				addTargetablePlayers(getTargetX, getTargetY);
				
				break;}
				
			case "starboard": {
				var getTargetX = global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, i];
				
				addTargetablePlayers(getTargetX, getTargetY);
				
				break;}}}}
					
		

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
	for (j=0; j<13; j++){
		if damageRecipient != 0{
			global.actorHP[damageRecipient[j]] -= 1;}}}
	//global.actorHP[damageRecipient[i]] -= floor((global.enemyAtkDmgMod[argument0] * global.enemyStrength[argument1]));}
