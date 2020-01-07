var pathBowIsClear = false;
var pathPortIsClear = false;
var pathStarboardIsClear = false;
var clearPath = 0;
option[0] = empty;
option[1] = empty;
option[2] = empty;
option[3] = empty;
option[4] = empty;
option[5] = empty;
option[6] = empty;
option[7] = empty;
option[8] = empty;
option[9] = empty;

switch global.atkTargetClass[argument1]{
	case "single melee":{
		maxOptions = 0;
		for (i=0; i<3; i++){
			for (j=0; j<3; j++){
				
				//Bow enemy
				if ds_grid_get(oGridController.newGrid, global.actorPositionX[argument0], 0) != noAccess{
					clearPath = 0;
					for (i=global.actorPositionY[argument0]; i>0; i--){
						if ds_grid_get(oGridController.newGrid, global.actorPositionX[argument0], i) = vacant||ds_grid_get(oGridController.newGrid, global.actorPositionX[argument0], i) = argument0{
							clearPath++;}}
					if clearPath = global.actorPositionY[argument0]{
						pathBowIsClear = true;
						if option[j] = empty{
							option[j] = ds_grid_get(oGridController.newGrid, global.actorPositionX[argument0], 0);
							readOption[option[j]] = global.cellKeyword[option[j]];
							j++;
							if j = 0{
								maxOptions++;}
							else{
								if option[j-1] != option[j]{
									maxOptions++;}}}}}
							
				//Port enemy			
				if ds_grid_get(oGridController.newGrid, 0, global.actorPositionY[argument0]) != noAccess{
					clearPath = 0;
					for (i=global.actorPositionX[argument0]; i>0; i--){
						if ds_grid_get(oGridController.newGrid, i, global.actorPositionY[argument0]) = vacant||ds_grid_get(oGridController.newGrid,i, global.actorPositionY[argument0]) = argument0{
							clearPath++;}}
					if clearPath = global.actorPositionX[argument0]{
						pathPortIsClear = true;
						if option[j] = empty{
							option[j] = ds_grid_get(oGridController.newGrid, 0, global.actorPositionY[argument0]);
							readOption[option[j]] = global.cellKeyword[option[j]];
							j++;
							if j = 0{
								maxOptions++;}
							else{
								if option[j-1] != option[j]{
									maxOptions++;}}}}}
							
				//Starboard enemy			
				if ds_grid_get(oGridController.newGrid, 5, global.actorPositionY[argument0]) != noAccess{
					
					clearPath = 0;
					for (i=global.actorPositionX[argument0]; i<5; i++){
						if ds_grid_get(oGridController.newGrid, i, global.actorPositionY[argument0]) = vacant||ds_grid_get(oGridController.newGrid,i, global.actorPositionY[argument0]) = argument0{
							clearPath++;}}
					if clearPath = 5-global.actorPositionX[argument0]{
						pathStarboardIsClear = true;
						if option[j] = empty{
							option[j] = ds_grid_get(oGridController.newGrid, 5, global.actorPositionY[argument0]);
							readOption[option[j]] = global.cellKeyword[option[j]];
							if j = 0{
								maxOptions++;}
							else{
								if option[j-1] != option[j]{
									maxOptions++;}}}}}
					}}
		break;}
		
	case "single volley":{
		maxOptions = 0;
		for (i=0; i<10; i++){
			for (j=0; j<10; j++){
				if global.enemyInSlot[i] != empty{
					if option[j] = empty{
						option[j] = global.enemyInSlot[i];
						readOption[option[j]] = global.cellKeyword[option[j]];
						maxOptions++;
						break;}}}}
		break;}
		
	case "all enemies":{
		maxOptions = 1;
		option[0] = 0;
		readOption[option[0]] = "all enemies";
		break;}	
		
	case "single ally":{
		maxOptions = 0;
		for (i=0; i<3; i++){
			for (j=0; j<3; j++){
				if global.actorInSlot[i] != empty{
					if option[j] = empty{
						option[j] = global.actorInSlot[i];
						readOption[option[j]] = global.cellKeyword[option[j]];
						maxOptions++;
						break;}}}} 
		break;}	
		
	case "all allies":{
		maxOptions = 1;
		option[0] = 1;
		readOption[option[0]] = "all allies";
		break;}	
} 