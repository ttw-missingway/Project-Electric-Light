switch battleState {
	case "actorSelect": {
		selectActor();
		break;}
	case "actorMove": {
		moveSelectedActor(global.actorInSlot[global.activeSlot]);
		break;}
	case "actorAttack": {
		actorAbility(global.actorInSlot[global.activeSlot], ltAtk, myEnemy);
		break;}}
