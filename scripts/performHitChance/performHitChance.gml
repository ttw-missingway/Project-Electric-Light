var hitRate = global.atkHitRate[argument0] - (global.atkHitRate[argument0]*(global.enemyEvasion[argument2]));

if global.actorStatus[argument1] = "blind"{
	if global.atkDmgType[argument0] = "physical"{
		hitRate = 0;}}
		
	
var hitRoll = irandom_range(1, 255);

if hitRoll > hitRate{
	return false;}
else{
	return true;}