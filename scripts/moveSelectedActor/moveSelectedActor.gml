if keyboard_check_pressed(keyLeft){
	if ds_grid_get(oGridController.newGrid,global.playerPositionX-1,global.playerPositionY) = "vacant"{
		ds_grid_set(oGridController.newGrid,global.playerPositionX-1,global.playerPositionY, "player");
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY, "vacant");
		global.playerPositionX--;}}
		
if keyboard_check_pressed(keyRight){
	if ds_grid_get(oGridController.newGrid,global.playerPositionX+1,global.playerPositionY) = "vacant"{
		ds_grid_set(oGridController.newGrid,global.playerPositionX+1,global.playerPositionY, "player");
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY, "vacant");
		global.playerPositionX++;}}
		
if keyboard_check_pressed(keyUp){
	if ds_grid_get(oGridController.newGrid,global.playerPositionX,global.playerPositionY-1) = "vacant"{
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY-1, "player");
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY, "vacant");
		global.playerPositionY--;}}
		
if keyboard_check_pressed(keyDown){
	if ds_grid_get(oGridController.newGrid,global.playerPositionX,global.playerPositionY+1) = "vacant"{
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY+1, "player");
		ds_grid_set(oGridController.newGrid,global.playerPositionX,global.playerPositionY, "vacant");
		global.playerPositionY++;}}