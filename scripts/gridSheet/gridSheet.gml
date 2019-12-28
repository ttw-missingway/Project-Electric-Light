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
global.cellMainClass[vacant]			= "cell";

//HIGHLIGHT (ally movable, enemy not)
global.cellEnemyTargetClass[highlight]		= "untargetable";
global.cellPlayerTargetClass[highlight]		= "untargetable";
global.cellPlayerMovementClass[highlight]	= "moveable";
global.cellEnemyMovementClass[highlight]	= "unmovable";
global.cellObstacleClass[highlight]			= "noObstacle";
global.cellKeyword[highlight]				= "vacant";
global.cellMainClass[highlight]				= "cell";

//NO ACCESS  (enemy moveable, ally not)
global.cellEnemyTargetClass[noAccess]   = "untargetable";
global.cellPlayerTargetClass[noAccess]	= "untargetable";
global.cellPlayerMovementClass[noAccess]= "unmoveable";
global.cellEnemyMovementClass[noAccess] = "moveable";
global.cellObstacleClass[noAccess]		= "noObstacle";
global.cellKeyword[noAccess]			= "noAccess";
global.cellMainClass[noAccess]			= "cell";

//OOB (not moveable by ally or enemy)
global.cellEnemyTargetClass[oob]		= "untargetable";
global.cellPlayerTargetClass[oob]		= "untargetable";
global.cellPlayerMovementClass[oob]		= "unmoveable";
global.cellEnemyMovementClass[oob]		= "unmoveable";
global.cellObstacleClass[oob]			= "noObstacle";
global.cellKeyword[oob]					= "oob";
global.cellMainClass[oob]				= "oob";




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
global.cellMainClass[crate]				= "obstacle";

//BOULDER
global.cellEnemyTargetClass[boulder]	= "untargetable";
global.cellPlayerTargetClass[boulder]	= "untargetable";
global.cellPlayerMovementClass[boulder]	= "unmoveable";
global.cellEnemyMovementClass[boulder]	= "unmoveable";
global.cellObstacleClass[boulder]		= "unbreakable";
global.cellKeyword[boulder]				= "boulder";
global.cellMainClass[boulder]			= "obstacle";

//PIT
global.cellEnemyTargetClass[pit]		= "untargetable";
global.cellPlayerTargetClass[pit]		= "targetable";
global.cellPlayerMovementClass[pit]		= "unmoveable";
global.cellEnemyMovementClass[pit]		= "unmoveable";
global.cellObstacleClass[pit]			= "noObstacle";
global.cellKeyword[pit]					= "pit";
global.cellMainClass[pit]				= "obstacle";



//////////////////
///PLAYERS////////
//////////////////

//MY CHAR

for (i=myChar; i<=myChar2; i++){
	global.cellEnemyTargetClass[i]			= "targetable";
	global.cellPlayerTargetClass[i]			= "targetable";
	global.cellPlayerMovementClass[i]		= "unmoveable";
	global.cellEnemyMovementClass[i]		= "unmoveable";
	global.cellObstacleClass[i]				= "unbreakable";
	global.cellMainClass[i]					= "player";}
	
global.cellKeyword[myChar]					= "myChar";
global.cellKeyword[myChar2]					= "myChar2";

//////////////////
///ENEMIES////////
//////////////////

//MY ENEMY

for (i=myEnemy; i<=myEnemy11; i++){
	global.cellKeyword[i]					= "MyEnemy" + string(i-myEnemy);
	global.cellEnemyTargetClass[i]			= "targetable";
	global.cellPlayerTargetClass[i]			= "targetable";
	global.cellPlayerMovementClass[i]		= "unmoveable";
	global.cellEnemyMovementClass[i]		= "unmoveable";
	global.cellObstacleClass[i]				= "unbreakable";
	global.cellMainClass[i]					= "enemy";}


