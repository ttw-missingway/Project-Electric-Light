
///////////////
//   BURN    //
///////////////


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
		
///////////////
//   BLIND   //
///////////////


for (i=0; i<3; i++){
	if global.actorBlindTimerInSlot[i] = -1 && global.actorStatus[global.actorInSlot[i]] = "blind"{
		global.actorBlindTimerInSlot[i] = 1200;
		global.actorBlindTimerInSlot[i]--;}
	if global.actorBlindTimerInSlot[i] = 0{
		global.actorStatus[global.actorInSlot[i]] = "none";
		global.actorBlindTimerInSlot[i] = -1;}}
		
///////////////
//  MADNESS  //
///////////////


for (i=0; i<3; i++){
	if global.actorMadnessTimerInSlot[i] = -1 && global.actorStatus[global.actorInSlot[i]] = "madness"{
		global.actorMadnessTimerInSlot[i] = 1000;
		global.actorMadnessTimerInSlot[i]--;}
	if global.actorMadnessTimerInSlot[i] = 0{
		global.actorStatus[global.actorInSlot[i]] = "none";
		global.actorMadnessTimerInSlot[i] = -1;}}
		

///////////////
// PARALYZE  //
///////////////
		

for (i=0; i<3; i++){
	if global.actorParalyzeTimerInSlot[i] = -1 && global.actorStatus[global.actorInSlot[i]] = "paralyze"{
		global.actorParalyzeTimerInSlot[i] = 1800;}
	if global.actorParalyzeTimerInSlot[i] > 0{
		if (global.actorParalyzeTimerInSlot[i] mod 240) = 0{
			global.actorStatus[global.actorInSlot[i]] = "stunned";
			global.actorStunnedTimerInSlot[i]  = 120;}
		global.actorParalyzeTimerInSlot[i]--;}
	if global.actorParalyzeTimerInSlot[i] = 0{
		global.actorStatus[global.actorInSlot[i]] = "none";
		global.actorParalyzeTimerInSlot[i] = -1;}}
			
			
//Stun Timer
for (i=0; i<3; i++){
	if global.actorStunnedTimerInSlot[i] > 0{
		global.actorStunnedTimerInSlot[i]--;}
	if global.actorStunnedTimerInSlot[i] = 0{
		global.actorStunnedTimerInSlot[i] = -1;
		if global.actorParalyzeTimerInSlot[i] > 0{
			global.actorStatus[global.actorInSlot[i]] = "paralyze";}
		else{
			global.actorStatus[global.actorInSlot[i]] = "none";}}}

		
//Apply Burn damage enemy
for (j=0; j<11; j++){
	if global.enemyBurnTimerInSlot[j]> 0 {
		if global.enemyBurnTimerInSlot[j] mod 60 = 0{
			global.enemyHP[global.enemyInSlot[j]] -= global.enemyHPStart[global.enemyInSlot[j]]*0.05;}
		global.enemyBurnTimerInSlot[j]--;}
	if global.enemyBurnTimerInSlot[j] = 0{
		global.enemyBurnTimerInSlot[j] = -1;}}