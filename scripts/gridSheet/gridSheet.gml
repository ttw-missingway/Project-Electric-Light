/////////////////////////////////
///////////GRID//////////////////
/////////////////////////////////

//ERROR
global.cellKeyword[0]					= "error";

//VACANT (ally movable, enemy not)
global.cellEnemyTargetClass[vacant]		= "untargetable";
global.cellPlayerTargetClass[vacant]	= "untargetable";
global.cellPlayerMovementClass[vacant]	= "moveable";
global.cellEnemyMovementClass[vacant]   = "unmovable";
global.cellObstacleClass[vacant]		= "noObstacle";
global.cellKeyword[vacant]				= "vacant";

//NO ACCESS  (enemy moveable, ally not)
global.cellEnemyTargetClass[noAccess]   = "untargetable";
global.cellPlayerTargetClass[noAccess]	= "untargetable";
global.cellPlayerMovementClass[noAccess]= "unmoveable";
global.cellEnemyMovementClass[noAccess] = "moveable";
global.cellObstacleClass[noAccess]		= "noObstacle";
global.cellKeyword[noAccess]			= "noAccess";

//OOB (not moveable by ally or enemy)
global.cellEnemyTargetClass[oob]		= "untargetable";
global.cellPlayerTargetClass[oob]		= "untargetable";
global.cellPlayerMovementClass[oob]		= "unmoveable";
global.cellEnemyMovementClass[oob]		= "unmoveable";
global.cellObstacleClass[oob]			= "noObstacle";
global.cellKeyword[oob]					= "oob";




//////////////////
///OBSTACLES//////
//////////////////

//CRATE 
global.cellEnemyTargetClass[crate]		= "untargetable";
global.cellPlayerTargetClass[crate]		= "targetable";
global.cellPlayerMovementClass[crate]	= "unmoveable";
global.cellEnemyMovementClass[crate]	= "unmoveable";
global.cellObstacleClass[crate]			= "breakable";
global.cellKeyword[crate]				= "crate";

//BOULDER
global.cellEnemyTargetClass[boulder]	= "untargetable";
global.cellPlayerTargetClass[boulder]	= "untargetable";
global.cellPlayerMovementClass[boulder]	= "unmoveable";
global.cellEnemyMovementClass[boulder]	= "unmoveable";
global.cellObstacleClass[boulder]		= "unbreakable";
global.cellKeyword[boulder]				= "boulder";

//PIT
global.cellEnemyTargetClass[pit]		= "untargetable";
global.cellPlayerTargetClass[pit]		= "targetable";
global.cellPlayerMovementClass[pit]		= "unmoveable";
global.cellEnemyMovementClass[pit]		= "unmoveable";
global.cellObstacleClass[pit]			= "noObstacle";
global.cellKeyword[pit]					= "pit";



//////////////////
///PLAYERS////////
//////////////////

//MY CHAR

for (i=myChar; i<=myChar2; i++){
	global.cellEnemyTargetClass[i]			= "targetable";
	global.cellPlayerTargetClass[i]			= "targetable";
	global.cellPlayerMovementClass[i]		= "unmoveable";
	global.cellEnemyMovementClass[i]		= "unmoveable";
	global.cellObstacleClass[i]				= "unbreakable";}
	
global.cellKeyword[myChar]					= "myChar";
global.cellKeyword[myChar2]					= "myChar2";
global.cellKeyword[myEnemy]					= "myEnemy";

