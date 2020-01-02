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
	
for (j=0; j<10; j++){
	
	supportRecipient[j] = 0;}


if global.enemyAtkSupport[argument0] = false{

for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	
	if global.enemyAtkGridRelative[argument0] = false{
		
		
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
			addTargetablePlayers(getTargetX, getTargetY);}}
			
	//\\//\\//\\//\\//\\//\\//\\//\\
	//\\//\\/ CREATE OBSTACLES /\\//
	//\\//\\//\\//\\//\\//\\//\\//\\
			
	if global.enemyAtkObstacleCreate[argument0] != "none"{
		if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, getTargetX, getTargetY)] = "moveable"{
			ds_grid_set(oGridController.newGrid, getTargetX, getTargetY, global.enemyAtkObstacleCreate[argument0]);}}}}
else{
	
	//\\//\\//\\//\\//\\//\\//\\//\\
	//\\//\\/ SUPPORT ATTACK \//\\//
	//\\//\\//\\//\\//\\//\\//\\//\\
	
	if global.enemyAtkSupportTarget[argument0] = "all"{
		for (i=0; i<10; i++){
			if global.enemyInSlot[i] != empty{
				supportRecipient[i] = global.enemyInSlot[i];
				totalRecipients++;}}}
	if global.enemyAtkSupportTarget[argument0] = "boss"{
		supportRecipient[0] = global.enemyInSlot[0];
		totalRecipients++;}
	if global.enemyAtkSupportTarget[argument0] = "self"{
		supportRecipient[0] = argument1;
		totalRecipients++;}
	if global.enemyAtkSupportTarget[argument0] = "random"{
		var enemySelect = empty;
		while (enemySelect = empty){
			enemySelect = global.enemyInSlot[irandom_range(0,9)];}
		supportRecipient[0] = global.enemyInSlot[enemySelect];
		totalRecipients++;}}


//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//MOVE ACTORS///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

pushPullActors(argument0, argument1);

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\  MOVE ENEMIES /\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

moveEnemies(argument0, argument1);

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// CHANGE STATE \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\
			
global.enemyState[argument1] = global.enemyAtkStateChange[argument0];
if global.enemyAtkStateChange[argument0] = "counter"{
	global.enemyCounterType[argument1] = global.enemyAtkCounterType[argument0];}

//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// APPLY DMG ///\\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\

if global.enemyAtkSupport[argument0] = false{
for (i=0; i<=totalRecipients; i++){
	for (j=0; j<13; j++){
		if damageRecipient[j] != 0{
			nerfAllies(argument0);
			global.enemyAttackLoadedInSlot[argument2] = empty;
			global.actorHP[damageRecipient[j]] -= floor((global.enemyAtkDmgMod[argument0] * global.enemyStrength[argument1]));
			global.actorStatus[damageRecipient[j]] = global.enemyAtkStatus[argument0];
			damageRecipient[j] = 0;}}}}
else{
for (i=0; i<=totalRecipients; i++){
	for (j=0; j<10; j++){
		if supportRecipient[j] != 0{
			buffEnemies(argument0);
			global.enemyAttackLoadedInSlot[argument2] = empty;
			global.enemyHP[supportRecipient[j]] += global.enemyAtkHealAmount[argument0];
			supportRecipient[j] = 0;}}}}

	
//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\// RETURN TO DEFAULT \\/
//\\//\\//\\//\\//\\//\\//\\//\\

			
global.enemyCDInSlot[argument2] = global.enemyAtkDmgCD[argument0] * global.enemyCDReduction[argument1];
onlyTargetFound = false; //only for beeline
global.enemyAttackInProgress = false;