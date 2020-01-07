if global.inputActive = true{

if keyboard_check_pressed(keyLeft){
	if ds_grid_get(oGridController.newGrid,global.actorPositionX[argument0]-1,global.actorPositionY[argument0]) = vacant{
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0]-1,global.actorPositionY[argument0], argument0);
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0], vacant);
		global.actorPositionX[argument0]--;}}
		
if keyboard_check_pressed(keyRight){
	if ds_grid_get(oGridController.newGrid,global.actorPositionX[argument0]+1,global.actorPositionY[argument0]) = vacant{
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0]+1,global.actorPositionY[argument0], argument0);
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0], vacant);
		global.actorPositionX[argument0]++;}}
		
if keyboard_check_pressed(keyUp){
	if ds_grid_get(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0]-1) = vacant{
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0]-1, argument0);
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0], vacant);
		global.actorPositionY[argument0]--;}}
		
if keyboard_check_pressed(keyDown){
	if ds_grid_get(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0]+1) = vacant{
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0]+1, argument0);
		ds_grid_set(oGridController.newGrid,global.actorPositionX[argument0],global.actorPositionY[argument0], vacant);
		global.actorPositionY[argument0]++;}}
		
if keyboard_check_pressed(keyB)||keyboard_check_pressed(keyA){
	global.inputActive = false;
	global.inputBuffer += 5;
	global.menuState = "actorAct";}}