/// @description Insert description here
// You can write your code in this editor
myChoice = 69;
myTarget = 69;
bugTest = 69;
clearPathExample = 0;
topOfList = 0;
currentAttack = 0;
useOrToss = 0;
totalRecipients = 0;
maxK = 0;
drawMe[0] = 69;
drawMe[1] = 69;
drawMe[2] = 69;
onlyTargetFound = false; //beeline only

for (i=0; i<10; i++){
	loadChoices[i] = 69;
	loadTarget[i] = 69;}
	
for (i=0; i<13; i++){
	damageRecipient[i] = 0;}
	
enemyAttackOrder = ds_queue_create();

for (i=0; i<=10; i++){
	if global.enemyInSlot[i] != empty{
			ds_queue_enqueue(enemyAttackOrder, i);}}
