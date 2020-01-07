if global.inputActive = true{
	if keyboard_check_pressed(keyLeft){
		if global.activeSlot > 0{
			if global.actorInSlot[global.activeSlot-1] != empty && global.actorState[global.actorInSlot[global.activeSlot-1]] != "dead"{
				global.activeSlot--;}}
		else{
			if global.actorInSlot[2] != empty && global.actorState[global.actorInSlot[2]] != "dead"{
				global.activeSlot = 2;}}}
		
	if keyboard_check_pressed(keyRight){
			if global.activeSlot < 2{
				if global.actorInSlot[global.activeSlot+1] != empty && global.actorState[global.actorInSlot[global.activeSlot+1]] != "dead"{
					global.activeSlot++;}}
			else{
				if global.actorInSlot[0] != empty && global.actorState[global.actorInSlot[0]] != "dead"{
					global.activeSlot = 0;}}}
			
	global.actorHovering = true;
	global.actorHoverOverSlot = global.activeSlot;
		
	if keyboard_check_pressed(keyA){
		global.inputActive = false;
		global.inputBuffer += 5;
		battleState = "actorMove";
		global.actorHovering = false;
		global.actorSelected = true;
		global.actorSelectedInSlot = global.activeSlot;}}
	