///createBattleGrid(player1,

newGrid = ds_grid_create(6, 4);

for (w = 0; w <= ds_grid_width(newGrid); w++){
	for (h = 0; h <= ds_grid_height(newGrid); h++){
		ds_grid_set(newGrid, w, h, vacant);}}
		
for (h = 0; h<= ds_grid_height(newGrid); h++){
	ds_grid_set(newGrid, 0, h, noAccess);
	ds_grid_set(newGrid, 5, h, noAccess);}
	
for (w = 0; w<= ds_grid_width(newGrid); w++){
	ds_grid_set(newGrid, w, 0, noAccess);}

ds_grid_set(newGrid, global.actorPositionX[myChar], global.actorPositionY[myChar], myChar);
ds_grid_set(newGrid, global.actorPositionX[myChar2], global.actorPositionY[myChar2], myChar2);
ds_grid_set(newGrid, global.enemyPositionX[myEnemy], global.enemyPositionY[myEnemy], myEnemy);