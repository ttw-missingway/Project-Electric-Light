///createBattleGrid(player1,

newGrid = ds_grid_create(5, 3);

for (w = 0; w <= ds_grid_width(newGrid); w++){
	for (h = 0; h <= ds_grid_height(newGrid); h++){
		ds_grid_set(newGrid, w, h, "vacant");}}
		
