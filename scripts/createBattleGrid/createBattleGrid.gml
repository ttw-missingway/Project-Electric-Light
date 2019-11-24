///createBattleGrid(player1,

newGrid = ds_grid_create(6, 4);

for (w = 0; w <= ds_grid_width(newGrid); w++){
	for (h = 0; h <= ds_grid_height(newGrid); h++){
		ds_grid_set(newGrid, w, h, "vacant");}}
		
for (h = 0; h<= ds_grid_height(newGrid); h++){
	ds_grid_set(newGrid, 0, h, "no_access");
	ds_grid_set(newGrid, 5, h, "no_access");}
	
for (w = 0; w<= ds_grid_width(newGrid); w++){
	ds_grid_set(newGrid, w, 0, "no_access");}

ds_grid_set(newGrid, global.actorPositionX[0], global.actorPositionY[0], "myChar");
ds_grid_set(newGrid, global.actorPositionX[1], global.actorPositionY[1], "myChar2");
ds_grid_set(newGrid, global.enemyPositionX[myEnemy], global.enemyPositionY[myEnemy], "enemy");