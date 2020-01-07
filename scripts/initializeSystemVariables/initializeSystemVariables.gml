global.inputBuffer = 0;			 //small delay to prevent overlapping chains of menu selection
global.inputActive = true;		 //boolean, used to check if the system is accepting inputs from the player
global.attackInProgress = false; //used when an attack is taking place all other actions and cooldowns are paused
global.gameplayFreeze	= false; //used for dialogue that happens during certain fights or for cutscenes