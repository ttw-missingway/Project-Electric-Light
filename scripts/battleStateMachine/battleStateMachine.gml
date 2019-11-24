switch battleState {
	case "actorSelect": {
		selectActor();
		break;}
	case "actorMove": {
		moveSelectedActor(global.activeSlot);
		break;}
	case "actorAttack": {
		actorAbility(global.activeSlot, ltAtk, myEnemy);
		break;}}
		
		
