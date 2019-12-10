switch global.enemyCounterType[argument1]{
	case "flat": { 
		global.actorHP[argument2] -= max(
										global.enemyStrengthStart[argument1]-global.actorArmor[argument2], 
										0); 
		break;}
		
	case "reverse": { 
		global.actorHP[argument2] -= argument0; 
		break;}
		
	case "desperation": { 
		global.actorHP[argument2] -= global.enemyStrengthStart[argument1] * ((global.enemyHPStart[argument1]/(global.enemyHPStart[argument1]-global.enemyHP[argument1]))+1);
		break;}
		
	case "regenerate": {
		global.enemyHP[argument1] += argument0*2; 
		break;}}
		
