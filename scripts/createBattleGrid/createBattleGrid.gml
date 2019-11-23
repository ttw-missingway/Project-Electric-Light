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

global.playerPositionX = 2;
global.playerPositionY = 2;
ds_grid_set(newGrid, global.playerPositionX, global.playerPositionY, "player");

global.enemyPositionX = 3;
global.enemyPositionY = 0;
ds_grid_set(newGrid, global.enemyPositionX, global.enemyPositionY, "enemy");

	
