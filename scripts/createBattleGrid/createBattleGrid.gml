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

ds_grid_set(newGrid, global.actorPositionX[myChar], global.actorPositionY[myChar], myChar);
ds_grid_set(newGrid, global.actorPositionX[myChar2], global.actorPositionY[myChar2], myChar2);
ds_grid_set(newGrid, global.enemyPositionX[myEnemy], global.enemyPositionY[myEnemy], myEnemy);
ds_grid_set(newGrid, global.enemyPositionX[myEnemy2], global.enemyPositionY[myEnemy2], myEnemy2);
ds_grid_set(newGrid, global.enemyPositionX[myEnemy3], global.enemyPositionY[myEnemy3], myEnemy3);
ds_grid_set(newGrid, global.enemyPositionX[myEnemy4], global.enemyPositionY[myEnemy4], myEnemy4);


ds_grid_set(newGrid, 1, 1, crate);

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