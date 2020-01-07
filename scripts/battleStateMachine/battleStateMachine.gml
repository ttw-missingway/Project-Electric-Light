
	
switch battleState {
	case "actorSelect": {
		selectActor();
		break;}
	case "actorMove": {
		if global.actorStatus[global.actorInSlot[global.activeSlot]] != "stunned"{
			moveSelectedActor(global.actorInSlot[global.activeSlot]);}
		break;}
	case "actorAttack": {
		if !global.attackInProgress{ 
			if global.actorStatus[global.actorInSlot[global.activeSlot]] != "stunned"{
				actorAbility(global.actorInSlot[global.activeSlot], ltAtk, myEnemy);}}
		break;}}
