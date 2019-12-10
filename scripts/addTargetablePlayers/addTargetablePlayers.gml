

			if argument0 <= 4 && argument0 >= 1 && argument1 <= 3 && argument1 >=1{
				
					if global.cellPlayerTargetClass[
						ds_grid_get(
						oGridController.newGrid, argument0, argument1)] = "targetable"{
							totalRecipients++;
							
							for (j=0; j<13; j++){
								if damageRecipient[j] = 0{
									damageRecipient[j] = 
									ds_grid_get(oGridController.newGrid, argument0, argument1);
									if onlyTargetFound = false{
										onlyTargetFound = true;}
									break;}}}}
								