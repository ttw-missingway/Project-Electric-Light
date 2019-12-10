//*********//
//*MyEnemy**//
//*********//

global.enemyHP[myEnemy]						= 10;
global.enemyStrength[myEnemy]				= 3;
global.enemyArmor[myEnemy]					= 1;
global.enemyState[myEnemy]					= "none";
global.enemyStatus[myEnemy]					= "none";
global.enemyFace[myEnemy]					= "port";
global.enemyPositionX[myEnemy]				= 0;
global.enemyPositionY[myEnemy]				= 2;
global.enemyCounterType[myEnemy]			= "flat";

		
global.enemyMassiveCD[myEnemy]				= 3;

global.enemyAttackList[myEnemy]				= ds_list_create();
ds_list_add(global.enemyAttackList[myEnemy], genBee, genMelee, genVolleyMagic, beam);
