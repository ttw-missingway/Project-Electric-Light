if global.enemyAtkPushGlobal[argument0] = true{
	
	switch global.enemyAtkPush[argument0]{
		case "north": {
			for(i=0; i<global.enemyAtkPushForce[argument0]; i++){
				for (j=1; j<5; j++){
					for (h=1; h<4; h++){
						if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, j, h)] = "targetable"{
							if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, j, h-1)] = "moveable"{
								var saveMe = ds_grid_get(oGridController.newGrid, j, h);
								ds_grid_set(oGridController.newGrid, j, h, vacant);
								if global.cellMainClass[saveMe] = "player"{
									global.actorPositionY[saveMe]--;}
								ds_grid_set(oGridController.newGrid, j, h-1, saveMe);}}}}}
			break;}
		case "west": {
			for(i=0; i<global.enemyAtkPushForce[argument0]; i++){
				for (j=1; j<5; j++){
					for (h=1; h<4; h++){
						if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, j, h)] = "targetable"{
							if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, j-1, h)] = "moveable"{
								var saveMe = ds_grid_get(oGridController.newGrid, j, h);
								ds_grid_set(oGridController.newGrid, j, h, vacant);
								if global.cellMainClass[saveMe] = "player"{
									global.actorPositionX[saveMe]--;}
								ds_grid_set(oGridController.newGrid, j-1, h, saveMe);}}}}}
			break;}
		case "south": {
			for(i=0; i<global.enemyAtkPushForce[argument0]; i++){
				for (j=1; j<5; j++){
					for (h=1; h<4; h++){
						if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, j, h)] = "targetable"{
							if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, j, h+1)] = "moveable"{
								var saveMe = ds_grid_get(oGridController.newGrid, j, h);
								ds_grid_set(oGridController.newGrid, j, h, vacant);
								if global.cellMainClass[saveMe] = "player"{
									global.actorPositionY[saveMe]++;}
								ds_grid_set(oGridController.newGrid, j, h+1, saveMe);}}}}}
			break;}
		case "east": {
			for(i=0; i<global.enemyAtkPushForce[argument0]; i++){
				for (j=1; j<5; j++){
					for (h=1; h<4; h++){
						if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, j, h)] = "targetable"{
							if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, j+1, h)] = "moveable"{
								var saveMe = ds_grid_get(oGridController.newGrid, j, h);
								ds_grid_set(oGridController.newGrid, j, h, vacant);
								if global.cellMainClass[saveMe] = "player"{
									global.actorPositionX[saveMe]++;}
								ds_grid_set(oGridController.newGrid, j+1, h, saveMe);}}}}}
			break;}}}
else{
	switch global.enemyFace[argument1]{
		case "bow":{
			switch global.enemyAtkPush[argument0]{
				case "north":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=1; i<4; i++){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i)] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i+1)] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i);
									ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], i, vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionY[saveMe]++;}
									ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], i+1, saveMe);}}}}
					break;}
				case "south":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=1; i<4; i++){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i)] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i-1)] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, global.enemyPositionX[argument1], i);
									ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], i, vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionY[saveMe]--;}
									ds_grid_set(oGridController.newGrid, global.enemyPositionX[argument1], i-1, saveMe);}}}}
					break;}}
			break;}
			
		case "port":{
			switch global.enemyAtkPush[argument0]{
				case "north":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=1; i<5; i++){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1])] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, i+1,global.enemyPositionY[argument1])] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1]);
									ds_grid_set(oGridController.newGrid, i, global.enemyPositionY[argument1], vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionX[saveMe]++;}
									ds_grid_set(oGridController.newGrid, i+1, global.enemyPositionY[argument1], saveMe);}}}}
					break;}
				case "south":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=1; i<5; i++){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1])] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, i-1,global.enemyPositionY[argument1])] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1]);
									ds_grid_set(oGridController.newGrid, i, global.enemyPositionY[argument1], vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionX[saveMe]--;}
									ds_grid_set(oGridController.newGrid, i-1, global.enemyPositionY[argument1], saveMe);}}}}
					break;}}
			break;}	
			
		case "starboard":{
			switch global.enemyAtkPush[argument0]{
				case "north":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=1; i<5; i++){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1])] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, i-1,global.enemyPositionY[argument1])] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1]);
									ds_grid_set(oGridController.newGrid, i, global.enemyPositionY[argument1], vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionX[saveMe]--;}
									ds_grid_set(oGridController.newGrid, i-1, global.enemyPositionY[argument1], saveMe);}}}}
					break;}
				case "south":{
					for(j=0; j<global.enemyAtkPushForce[argument0]; j++){
						for (i=4; i>0; i--){
							if global.cellPlayerTargetClass[ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1])] = "targetable"{
								if global.cellPlayerMovementClass[ds_grid_get(oGridController.newGrid, i+1,global.enemyPositionY[argument1])] = "moveable"{
									var saveMe = ds_grid_get(oGridController.newGrid, i, global.enemyPositionY[argument1]);
									ds_grid_set(oGridController.newGrid, i, global.enemyPositionY[argument1], vacant);
									if global.cellMainClass[saveMe] = "player"{
										global.actorPositionX[saveMe]++;}
									ds_grid_set(oGridController.newGrid, i+1, global.enemyPositionY[argument1], saveMe);}}}}
					break;}}
			break;}}}