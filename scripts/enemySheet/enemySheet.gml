///My Enemy

for (i=myEnemy; i<myEnemy11; i++){

global.enemyKeyword[i]						= "myEnemy" + string(i-myEnemy);
global.enemyHPStart[i]						= 10;
global.enemyStrengthStart[i]				= 3;
global.enemyArmorStart[i]					= 1;
global.enemyZodiac[i]						= "spirit";
global.enemyGuard[i]						= 2;
global.enemyEvasionStart[i]					= 0;
global.enemyRank[i]							= "normal"
global.enemyDeathAttack[i]					= heal;}


/////////////////////////////
///		   GEVAUDAN        //
/////////////////////////////

global.enemyKeyword[gevaudan]						= "gevaudan"
global.enemyHPStart[gevaudan]						= 100;
global.enemyStrengthStart[gevaudan]					= 5;
global.enemyArmorStart[gevaudan]					= 1;
global.enemyCDReductionStart[gevaudan]				= 0;
global.enemyEvasionStart[gevaudan]					= 0.0;
global.enemyZodiac[gevaudan]						= "beast";
global.enemyGuard[gevaudan]							= 5;
global.enemyRank[gevaudan]							= "boss";
global.enemyDeathAttack[gevaudan]					= "none";


//**********//
//*Wolf 1***//
//**********//

//STATIC//
global.enemyKeyword[wolf1]							= "wolf1"
global.enemyHPStart[wolf1]							= 20;
global.enemyStrengthStart[wolf1]					= 2;
global.enemyArmorStart[wolf1]						= 1;
global.enemyZodiac[wolf1]							= "beast";
global.enemyGuard[wolf1]							= 2;
global.enemyEvasionStart[wolf1]						= 0;
global.enemyRank[wolf1]								= "normal";
global.enemyDeathAttack[wolf1]						= "none";
//FLUID//
global.enemyHP[wolf1]							= global.enemyHPStart[wolf1];
global.enemyStrength[wolf1]						= global.enemyStrengthStart[wolf1];
global.enemyArmor[wolf1]						= global.enemyArmorStart[wolf1];
global.enemyCDReduction[wolf1]					= global.enemyCDReductionStart[wolf1];
global.enemyEvasion[wolf1]						= global.enemyEvasionStart[wolf1];
global.enemyState[wolf1]						= "none";
global.enemyStatus[wolf1]						= "none";
global.enemyFace[wolf1]							= "none";
global.enemyPositionX[wolf1]					= 0;
global.enemyPositionY[wolf1]					= 0;
global.enemyCounterType[wolf1]					= "flat";
global.enemyMassiveCD[wolf1]					= 3;
//ATTACKS//
global.enemyAttackList[wolf1]					= ds_list_create();
ds_list_add(global.enemyAttackList[wolf1], wolfDash, howl);


//**********//
//*Wolf 2***//
//**********//

//STATIC//
global.enemyKeyword[wolf2]							= "wolf2"
global.enemyHPStart[wolf2]							= 20;
global.enemyStrengthStart[wolf2]					= 2;
global.enemyArmorStart[wolf2]						= 1;
global.enemyZodiac[wolf2]							= "beast";
global.enemyGuard[wolf2]							= 2;
global.enemyEvasionStart[wolf2]						= 0;
global.enemyRank[wolf2]								= "normal";
global.enemyDeathAttack[wolf2]						= "none";
//FLUID//
global.enemyHP[wolf2]							= global.enemyHPStart[wolf2];
global.enemyStrength[wolf2]						= global.enemyStrengthStart[wolf2];
global.enemyArmor[wolf2]						= global.enemyArmorStart[wolf2];
global.enemyCDReduction[wolf2]					= global.enemyCDReductionStart[wolf2];
global.enemyEvasion[wolf2]						= global.enemyEvasionStart[wolf2];
global.enemyState[wolf2]						= "none";
global.enemyStatus[wolf2]						= "none";
global.enemyFace[wolf2]							= "none";
global.enemyPositionX[wolf2]					= 0;
global.enemyPositionY[wolf2]					= 0;
global.enemyCounterType[wolf2]					= "flat";
global.enemyMassiveCD[wolf2]					= 3;
//ATTACKS//
global.enemyAttackList[wolf2]					= ds_list_create();
ds_list_add(global.enemyAttackList[wolf2], wolfDash, howl);


//**********//
//*Fire Bat*//
//**********//

//STATIC//
global.enemyKeyword[fireBat]						= "fireBat"
global.enemyHPStart[fireBat]						= 10;
global.enemyStrengthStart[fireBat]					= 1;
global.enemyArmorStart[fireBat]						= 0;
global.enemyZodiac[fireBat]							= "torch";
global.enemyGuard[fireBat]							= 1;
global.enemyEvasionStart[fireBat]					= 0;
global.enemyRank[fireBat]							= "normal";
global.enemyDeathAttack[fireBat]					= "none";
//FLUID//
global.enemyHP[fireBat]							= global.enemyHPStart[fireBat];
global.enemyStrength[fireBat]					= global.enemyStrengthStart[fireBat];
global.enemyArmor[fireBat]						= global.enemyArmorStart[fireBat];
global.enemyCDReduction[fireBat]				= global.enemyCDReductionStart[fireBat];
global.enemyEvasion[fireBat]					= global.enemyEvasionStart[fireBat];
global.enemyState[fireBat]						= "none";
global.enemyStatus[fireBat]						= "none";
global.enemyFace[fireBat]						= "none";
global.enemyPositionX[fireBat]					= 0;
global.enemyPositionY[fireBat]					= 0;
global.enemyCounterType[fireBat]				= "flat";
global.enemyMassiveCD[fireBat]					= 3;
//ATTACKS//
global.enemyAttackList[fireBat]					= ds_list_create();
ds_list_add(global.enemyAttackList[fireBat], fireSwoop);


//**********//
//*Fire Bat2//
//**********//

//STATIC//
global.enemyKeyword[fireBat2]						= "fireBat2"
global.enemyHPStart[fireBat2]						= 10;
global.enemyStrengthStart[fireBat2]					= 1;
global.enemyArmorStart[fireBat2]					= 0;
global.enemyZodiac[fireBat2]						= "torch";
global.enemyGuard[fireBat2]							= 1;
global.enemyEvasionStart[fireBat2]					= 0;
global.enemyRank[fireBat2]							= "normal";
global.enemyDeathAttack[fireBat2]					= "none";
//FLUID//
global.enemyHP[fireBat2]						= global.enemyHPStart[fireBat2];
global.enemyStrength[fireBat2]					= global.enemyStrengthStart[fireBat2];
global.enemyArmor[fireBat2]						= global.enemyArmorStart[fireBat2];
global.enemyCDReduction[fireBat2]				= global.enemyCDReductionStart[fireBat2];
global.enemyEvasion[fireBat2]					= global.enemyEvasionStart[fireBat2];
global.enemyState[fireBat2]						= "none";
global.enemyStatus[fireBat2]					= "none";
global.enemyFace[fireBat2]						= "none";
global.enemyPositionX[fireBat2]					= 0;
global.enemyPositionY[fireBat2]					= 0;
global.enemyCounterType[fireBat2]				= "flat";
global.enemyMassiveCD[fireBat2]					= 3;
//ATTACKS//
global.enemyAttackList[fireBat2]				= ds_list_create();
ds_list_add(global.enemyAttackList[fireBat2], fireSwoop);


/////////////////////////////
///		   CHO CHO         //
/////////////////////////////

//***********//
//MadnessMoth//
//***********//

//STATIC//
global.enemyKeyword[madnessMoth1]						= "madnessMoth1"
global.enemyHPStart[madnessMoth1]						= 10;
global.enemyStrengthStart[madnessMoth1]					= 1;
global.enemyArmorStart[madnessMoth1]					= 0;
global.enemyZodiac[madnessMoth1]						= "spirit";
global.enemyGuard[madnessMoth1]							= 1;
global.enemyEvasionStart[madnessMoth1]					= 0.25;
global.enemyRank[madnessMoth1]							= "normal";
global.enemyDeathAttack[madnessMoth1]					= dustAttack;
//FLUID//
global.enemyHP[madnessMoth1]						= global.enemyHPStart[madnessMoth1];
global.enemyStrength[madnessMoth1]					= global.enemyStrengthStart[madnessMoth1];
global.enemyArmor[madnessMoth1]						= global.enemyArmorStart[madnessMoth1];
global.enemyCDReduction[madnessMoth1]				= global.enemyCDReductionStart[madnessMoth1];
global.enemyEvasion[madnessMoth1]					= global.enemyEvasionStart[madnessMoth1];
global.enemyState[madnessMoth1]						= "none";
global.enemyStatus[madnessMoth1]					= "none";
global.enemyFace[madnessMoth1]						= "none";
global.enemyPositionX[madnessMoth1]					= 0;
global.enemyPositionY[madnessMoth1]					= 0;
global.enemyCounterType[madnessMoth1]				= "flat";
global.enemyMassiveCD[madnessMoth1]					= 3;
//ATTACKS//
global.enemyAttackList[madnessMoth1]				= ds_list_create();
ds_list_add(global.enemyAttackList[madnessMoth1], dustAttack, fireSwoop);

//************//
//MadnessMoth2//
//************//

//STATIC//
global.enemyKeyword[madnessMoth2]						= "madnessMoth2"
global.enemyHPStart[madnessMoth2]						= 10;
global.enemyStrengthStart[madnessMoth2]					= 1;
global.enemyArmorStart[madnessMoth2]					= 0;
global.enemyZodiac[madnessMoth2]						= "spirit";
global.enemyGuard[madnessMoth2]							= 1;
global.enemyEvasionStart[madnessMoth2]					= 0.25;
global.enemyRank[madnessMoth2]							= "normal";
global.enemyDeathAttack[madnessMoth2]					= dustAttack;
//FLUID//
global.enemyHP[madnessMoth2]						= global.enemyHPStart[madnessMoth2];
global.enemyStrength[madnessMoth2]					= global.enemyStrengthStart[madnessMoth2];
global.enemyArmor[madnessMoth2]						= global.enemyArmorStart[madnessMoth2];
global.enemyCDReduction[madnessMoth2]				= global.enemyCDReductionStart[madnessMoth2];
global.enemyEvasion[madnessMoth2]					= global.enemyEvasionStart[madnessMoth2];
global.enemyState[madnessMoth2]						= "none";
global.enemyStatus[madnessMoth2]					= "none";
global.enemyFace[madnessMoth2]						= "none";
global.enemyPositionX[madnessMoth2]					= 0;
global.enemyPositionY[madnessMoth2]					= 0;
global.enemyCounterType[madnessMoth2]				= "flat";
global.enemyMassiveCD[madnessMoth2]					= 3;
//ATTACKS//
global.enemyAttackList[madnessMoth2]				= ds_list_create();
ds_list_add(global.enemyAttackList[madnessMoth2], dustAttack, fireSwoop);

//***********//
//RainbowMoth//
//***********//
//STATIC//
global.enemyKeyword[rainbowMoth1]						= "rainbowMoth1"
global.enemyHPStart[rainbowMoth1]						= 10;
global.enemyStrengthStart[rainbowMoth1]					= 1;
global.enemyArmorStart[rainbowMoth1]					= 0;
global.enemyZodiac[rainbowMoth1]						= "torch";
global.enemyGuard[rainbowMoth1]							= 1;
global.enemyEvasionStart[rainbowMoth1]					= 0.25;
global.enemyRank[rainbowMoth1]							= "normal";
global.enemyDeathAttack[rainbowMoth1]					= "none";
//FLUID//
global.enemyHP[rainbowMoth1]						= global.enemyHPStart[rainbowMoth1];
global.enemyStrength[rainbowMoth1]					= global.enemyStrengthStart[rainbowMoth1];
global.enemyArmor[rainbowMoth1]						= global.enemyArmorStart[rainbowMoth1];
global.enemyCDReduction[rainbowMoth1]				= global.enemyCDReductionStart[rainbowMoth1];
global.enemyEvasion[rainbowMoth1]					= global.enemyEvasionStart[rainbowMoth1];
global.enemyState[rainbowMoth1]						= "none";
global.enemyStatus[rainbowMoth1]					= "none";
global.enemyFace[rainbowMoth1]						= "none";
global.enemyPositionX[rainbowMoth1]					= 0;
global.enemyPositionY[rainbowMoth1]					= 0;
global.enemyCounterType[rainbowMoth1]				= "flat";
global.enemyMassiveCD[rainbowMoth1]					= 3;
//ATTACKS//
global.enemyAttackList[rainbowMoth1]				= ds_list_create();
ds_list_add(global.enemyAttackList[rainbowMoth1], wolfDash, fireSwoop);

//************//
//RainbowMoth2//
//************//
//STATIC//
global.enemyKeyword[rainbowMoth2]						= "rainbowMoth2"
global.enemyHPStart[rainbowMoth2]						= 10;
global.enemyStrengthStart[rainbowMoth2]					= 1;
global.enemyArmorStart[rainbowMoth2]					= 0;
global.enemyZodiac[rainbowMoth2]						= "torch";
global.enemyGuard[rainbowMoth2]							= 1;
global.enemyEvasionStart[rainbowMoth2]					= 0.25;
global.enemyRank[rainbowMoth2]							= "normal";
global.enemyDeathAttack[rainbowMoth2]					= "none";
//FLUID//
global.enemyHP[rainbowMoth2]						= global.enemyHPStart[rainbowMoth2];
global.enemyStrength[rainbowMoth2]					= global.enemyStrengthStart[rainbowMoth2];
global.enemyArmor[rainbowMoth2]						= global.enemyArmorStart[rainbowMoth2];
global.enemyCDReduction[rainbowMoth2]				= global.enemyCDReductionStart[rainbowMoth2];
global.enemyEvasion[rainbowMoth2]					= global.enemyEvasionStart[rainbowMoth2];
global.enemyState[rainbowMoth2]						= "none";
global.enemyStatus[rainbowMoth2]					= "none";
global.enemyFace[rainbowMoth2]						= "none";
global.enemyPositionX[rainbowMoth2]					= 0;
global.enemyPositionY[rainbowMoth2]					= 0;
global.enemyCounterType[rainbowMoth2]				= "flat";
global.enemyMassiveCD[rainbowMoth2]					= 3;
//ATTACKS//
global.enemyAttackList[rainbowMoth2]				= ds_list_create();
ds_list_add(global.enemyAttackList[rainbowMoth2], wolfDash, fireSwoop);

