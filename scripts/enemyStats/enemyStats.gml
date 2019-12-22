//*********//
//*MyEnemy**//
//*********//

global.enemyHP[myEnemy]						= 10;
global.enemyStrength[myEnemy]				= 3;
global.enemyArmor[myEnemy]					= 1;
global.enemyState[myEnemy]					= "none";
global.enemyStatus[myEnemy]					= "none";
global.enemyFace[myEnemy]					= "starboard";
global.enemyPositionX[myEnemy]				= 5;
global.enemyPositionY[myEnemy]				= 2;
global.enemyCounterType[myEnemy]			= "flat";
global.enemyEvasion[myEnemy]				= 0.0; //percentage
global.enemyCDReduction[myEnemy]			= 0;


global.enemyMassiveCD[myEnemy]				= 3;

global.enemyAttackList[myEnemy]				= ds_list_create();
ds_list_add(global.enemyAttackList[myEnemy], beam);

//***********//
//*MyEnemy2**//
//***********//

global.enemyHP[myEnemy2]					= 10;
global.enemyStrength[myEnemy2]				= 3;
global.enemyArmor[myEnemy2]					= 1;
global.enemyState[myEnemy2]					= "none";
global.enemyStatus[myEnemy2]				= "none";
global.enemyFace[myEnemy2]					= "starboard";
global.enemyPositionX[myEnemy2]				= 5;
global.enemyPositionY[myEnemy2]				= 3;
global.enemyCounterType[myEnemy2]			= "flat";
global.enemyEvasion[myEnemy2]				= 0.0; //percentage
global.enemyCDReduction[myEnemy2]			= 0;


global.enemyMassiveCD[myEnemy2]				= 3;

global.enemyAttackList[myEnemy2]			= ds_list_create();
ds_list_add(global.enemyAttackList[myEnemy2], beam);