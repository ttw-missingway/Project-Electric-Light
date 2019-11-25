if !global.attackInProgress && !global.gameplayFreeze{
	if global.actorCDInSlot[0] > 0 {
		if global.actorCDInSlot[0] != -1{
			global.actorActiveInSlot[0] = false;
				global.actorCDInSlot[0]--;}}
	else{
		global.actorActiveInSlot[0] = true;
		global.actorCDInSlot[0] = -1;}
		
	if global.actorCDInSlot[1] > 0 {
		if global.actorCDInSlot[1] != -1{
			global.actorActiveInSlot[1] = false;
				global.actorCDInSlot[1]--;}}
	else{
		global.actorActiveInSlot[1] = true;
		global.actorCDInSlot[1] = -1;}
		
	if global.actorCDInSlot[2] > 0 {
		if global.actorCDInSlot[2] != -1{
			global.actorActiveInSlot[2] = false;
				global.actorCDInSlot[2]--;}}
	else{
		global.actorActiveInSlot[2] = true;
		global.actorCDInSlot[2] = -1;}}
	
//Clean this up sometime, this can be made to be much more efficient