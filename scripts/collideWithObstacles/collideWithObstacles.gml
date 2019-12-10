					
		if argument0 <= 4 && argument0 >= 1 && argument1 <= 3 && argument1 >=1{			
					if global.cellObstacleClass[
						ds_grid_get(
						oGridController.newGrid, argument0, argument1)] = "unbreakable"{
							onlyTargetFound = true;}
							
					if global.cellObstacleClass[
						ds_grid_get(
						oGridController.newGrid, argument0, argument1)] = "breakable"{
							onlyTargetFound = true;
							ds_grid_set(oGridController.newGrid, argument0, argument1, vacant);}}