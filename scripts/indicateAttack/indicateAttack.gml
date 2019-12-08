


//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\//INDICATE ATTACK///\\//
//\\//\\//\\//\\//\\//\\//\\//\\

totalRecipients = 0;

for (j=0; j<13; j++){
	damageRecipient[j] = 0;}



for (i=0; i<global.enemyAtkGridMaxCells[argument0]; i++){
	
	
	if global.enemyAtkGridRelative = false{
		
		var getTargetX = global.enemyAtkGridX[argument0, i];
		var getTargetY = global.enemyAtkGridY[argument0, i];
		
		global.highlightTable[getTargetX,getTargetY] = true;}
		
	else {
		
		switch global.enemyFace[argument1]{
			
			case "bow": {
				var getTargetX = global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, i];
				global.highlightTable[getTargetX,getTargetY] = true;
				break;}
				
			case "port": {
				var getTargetX = global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, i];
				global.highlightTable[getTargetX,getTargetY] = true;
				break;}
				
			case "starboard": {
				var getTargetX = global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, i];
				var getTargetY = global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, i];			
				global.highlightTable[getTargetX,getTargetY] = true;
				break;}}}}
				
