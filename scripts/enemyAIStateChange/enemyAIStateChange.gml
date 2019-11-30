/* Needs to read all this:

global.enemyAtkKeyword[genMelee]			= "Generic Melee";
global.enemyAtkDmgMod[genMelee]				= 1.5; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMelee]				= 10*second;
global.enemyAtkActive[genMelee]				= true;
global.enemyAtkDmgType[genMelee]			= "physical";
global.enemyAtkDestination[genMelee]		= "unmoving";
global.enemyAtkTargetType[genMelee]			= "unique";
global.enemyAtkStateChange[genMelee]		= "none"; 

need arguments for:
	enemy currently attacking				argument0
	attack chosen							argument1
	unique target							argument2
	specific destination cell				argument3
*/






/*For multiple targets 
	1. locate target cells
	2. see if target cell has an actor occupying it
	3. load that actor as a target variable
	4. apply damage calculation
	5. apply to all actors in target cells*/