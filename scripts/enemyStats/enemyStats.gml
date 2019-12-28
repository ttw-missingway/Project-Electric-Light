//*********//
//*MyEnemy**//
//*********//

for (i=myEnemy; i<myEnemy5; i++){

if i!= myEnemy4{
global.enemyHP[i]						= 10;
global.enemyStrength[i]					= 3;
global.enemyArmor[i]					= 1;
global.enemyState[i]					= "none";
global.enemyStatus[i]					= "none";
global.enemyFace[i]						= "bow";
global.enemyPositionX[i]				= i-myEnemy+1;
global.enemyPositionY[i]				= 0;
global.enemyCounterType[i]				= "flat";
global.enemyEvasion[i]					= 0.0; //percentage
global.enemyCDReduction[i]				= 1;


global.enemyMassiveCD[i]				= 3;

global.enemyAttackList[i]				= ds_list_create();
ds_list_add(global.enemyAttackList[i], beam);}
}

for (i=myEnemy5; i<myEnemy8; i++){

global.enemyHP[i]						= 10;
global.enemyStrength[i]					= 3;
global.enemyArmor[i]					= 1;
global.enemyState[i]					= "none";
global.enemyStatus[i]					= "none";
global.enemyFace[i]						= "port";
global.enemyPositionX[i]				= 0;
global.enemyPositionY[i]				= i-myEnemy-3;
global.enemyCounterType[i]				= "flat";
global.enemyEvasion[i]					= 0.0; //percentage
global.enemyCDReduction[i]				= 1;


global.enemyMassiveCD[i]				= 3;

global.enemyAttackList[i]				= ds_list_create();
ds_list_add(global.enemyAttackList[i], beam);
}

for (i=myEnemy8; i<myEnemy11; i++){


global.enemyHP[i]						= 10;
global.enemyStrength[i]					= 3;
global.enemyArmor[i]					= 1;
global.enemyState[i]					= "none";
global.enemyStatus[i]					= "none";
global.enemyFace[i]						= "starboard";
global.enemyPositionX[i]				= 5;
global.enemyPositionY[i]				= i-myEnemy-6;
global.enemyCounterType[i]				= "flat";
global.enemyEvasion[i]					= 0.0; //percentage
global.enemyCDReduction[i]				= 1;


global.enemyMassiveCD[i]				= 3;

global.enemyAttackList[i]				= ds_list_create();
ds_list_add(global.enemyAttackList[i], beam);
}