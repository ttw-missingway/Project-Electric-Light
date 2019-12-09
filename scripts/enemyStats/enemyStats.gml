//*********//
//*MyEnemy**//
//*********//

global.enemyHP[myEnemy]						= 10;
global.enemyStrength[myEnemy]				= 3;
global.enemyArmor[myEnemy]					= 1;
global.enemyStatus[myEnemy]					= "none";
global.enemyFace[myEnemy]					= "bow";
global.enemyPositionX[myEnemy]				= 3;
global.enemyPositionY[myEnemy]				= 0;

		
global.enemyMassiveCD[myEnemy]				= 3;

global.enemyAttackList[myEnemy]				= ds_list_create();
ds_list_add(global.enemyAttackList[myEnemy], genBee);
