//Apply Burn damage player
for (i=0; i<3; i++){
	if global.actorBurnTimerInSlot[i] = -1 && global.actorStatus[global.actorInSlot[i]] = "burn"{
		global.actorBurnTimerInSlot[i] = 1200;}
	if global.actorBurnTimerInSlot[i]> 0 {
		if (global.actorBurnTimerInSlot[i] mod 120) = 0{
			global.actorHP[global.actorInSlot[i]] -= 1;}
		global.actorBurnTimerInSlot[i]--;}
	if global.actorBurnTimerInSlot[i] = 0{
		global.actorStatus[global.actorInSlot[i]] = "none";
		global.actorBurnTimerInSlot[i] = -1;}}
		
//Apply Burn damage enemy
for (j=0; j<11; j++){
	if global.enemyBurnTimerInSlot[j]> 0 {
		if global.enemyBurnTimerInSlot[j] mod 60 = 0{
			global.enemyHP[global.enemyInSlot[j]] -= global.enemyHPStart[global.enemyInSlot[j]]*0.05;}
		global.enemyBurnTimerInSlot[j]--;}
	if global.enemyBurnTimerInSlot[j] = 0{
		global.enemyBurnTimerInSlot[j] = -1;}}