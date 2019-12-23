


//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//INDICATE ATTACK///\\//
//\\//\\//\\//\\//\\//\\//\\//\\

/*totalRecipients = 0;

for (j=0; j<13; j++){
	damageRecipient[j] = 0;}*/



for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	
	
	if global.enemyAtkGridRelative[argument0] = false{
		
		var getTargetX = global.enemyAtkGridX[argument0, i];
		var getTargetY = global.enemyAtkGridY[argument0, i];}
		
	else {
		
		switch global.enemyFace[argument1]{
			
			case "bow": {
				var getTargetX = global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, i];
				break;}
				
			case "port": {
				var getTargetX = global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, i];
				break;}
				
			case "starboard": {
				var getTargetX = max(0, global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, i]);
				var getTargetY = max(0, global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, i]);			
				break;}}}
				
	if global.enemyAtkTravel[argument0] = "volley"{
		global.highlightTable[getTargetX, getTargetY] = true;}
		
	if global.enemyAtkTravel[argument0] = "beeline"{
		global.highlightTableBee[getTargetX, getTargetY] = true;}}
