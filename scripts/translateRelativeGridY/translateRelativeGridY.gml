		var getTargetY = 69;
		
		switch global.enemyFace[argument1]{
			
			
			case "bow": {
				getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridX[argument0, argument2];		
				break;}
				
			case "port": {
				getTargetY = global.enemyPositionY[argument1] + global.enemyAtkGridY[argument0, argument2];
				break;}
				
			case "starboard": {
				getTargetY = global.enemyPositionY[argument1] - global.enemyAtkGridY[argument0, argument2];
				break;}}
				
		return getTargetY;
	