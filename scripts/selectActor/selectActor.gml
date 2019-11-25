if keyboard_check_pressed(keyLeft){
	if global.activeSlot > 0{
		global.activeSlot--;}
	else{
		global.activeSlot = 2;}}
		
if keyboard_check_pressed(keyRight){
	if global.activeSlot < 2{
		global.activeSlot++;}
	else{
		global.activeSlot = 0;}}
		
if global.actorActiveInSlot[global.activeSlot]{
	if keyboard_check_pressed(keyA){
		battleState = "actorMove";}}
	