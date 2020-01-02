///createBattleGrid(player1,

newGrid = ds_grid_create(6, 5);

for (w = 0; w <= ds_grid_width(newGrid); w++){
	for (h = 0; h <= ds_grid_height(newGrid); h++){
		ds_grid_set(newGrid, w, h, vacant);}}
		
for (h = 0; h<= ds_grid_height(newGrid); h++){
	ds_grid_set(newGrid, 0, h, noAccess);
	ds_grid_set(newGrid, 5, h, noAccess);}
	
for (w = 0; w<= ds_grid_width(newGrid); w++){
	ds_grid_set(newGrid, w, 0, noAccess);}

for (i=0; i<3; i++){
	if global.actorInSlot[i] != empty{
		ds_grid_set(newGrid, global.actorPositionX[global.actorInSlot[i]], global.actorPositionY[global.actorInSlot[i]], global.actorInSlot[i]);}}


for (i=0; i<10; i++){
	if global.enemyInSlot[i] != empty{
		ds_grid_set(newGrid, global.enemyPositionX[global.enemyInSlot[i]], global.enemyPositionY[global.enemyInSlot[i]], global.enemyInSlot[i]);}}


//ds_grid_set(newGrid, 1, 1, crate);

ds_grid_set(newGrid, 2, 3, crate);

ds_grid_set(newGrid, 4, 2, crate);


ds_grid_set(newGrid, 0, 0, oob);
ds_grid_set(newGrid, 5, 0, oob);
ds_grid_set(newGrid, 0, 4, oob);
ds_grid_set(newGrid, 1, 4, oob);
ds_grid_set(newGrid, 2, 4, oob);
ds_grid_set(newGrid, 3, 4, oob);
ds_grid_set(newGrid, 4, 4, oob);
ds_grid_set(newGrid, 5, 4, oob);


//Highlight Table
for (i=0; i<=5; i++){
	for (j=0; j<=5; j++){
		global.highlightTable[i, j] = false;
		global.highlightTableBee[i, j] = false;}}