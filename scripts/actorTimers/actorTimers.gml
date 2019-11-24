if !global.attackInProgress && !global.gameplayFreeze{
	if global.actorCD[0] > 0 {
		if global.actorCD[0] != -1{
			global.actorActive[0] = false;
				global.actorCD[0]--;}}
	else{
		global.actorActive[0] = true;
		global.actorCD[0] = -1;}}
	