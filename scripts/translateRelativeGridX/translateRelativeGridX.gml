		var getTargetX = 69;
		
		switch global.enemyFace[argument1]{
			
			
			case "bow": {
				getTargetX = global.enemyPositionX[argument1] + global.enemyAtkGridY[argument0, argument2];			
				break;}
				
			case "port": {
				getTargetX = global.enemyAtkGridX[argument0, argument2];
				break;}
				
			case "starboard": {
				getTargetX = global.enemyPositionX[argument1] - global.enemyAtkGridX[argument0, argument2];
				break;}}
				
		return getTargetX;