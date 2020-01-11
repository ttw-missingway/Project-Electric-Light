///actor select		A> options load available moveable actors		B> nothing
///actor act		A> options load move, attack, exit (returns to actor select)				B> returns to actor select
///actor move		A> target cell becomes highlighted on map, menu collapses, final selection will reopen menu at actor select		B> returns to actor act
///actor attack		A> options load actorAttackSlots 1-4			B> returns to actor act
///target select	A> target enemy (and if relevant ally) slots become highlighted, menu collapses, final selection will trigger attack if possible, will give alert if not possible, and will reopen menu upon completing attack	B> return to actor attack

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



for (i=0; i<10; i++){
	readOption[option[i]] = "error";}


switch global.menuState {
	case "actorSelect":{
		slotSelection = 0;
		maxOptions = 0;
		global.actorHovering = true;
		global.actorHoverOverSlot = optionSlot;
		for (i=0; i<3; i++){
			for (j=0; j<3; j++){
				if global.actorInSlot[i] != empty && option[j] = empty{
						maxOptions++;
						option[j] = global.actorInSlot[i];
						readOption[option[j]] = global.actorKeyword[global.actorInSlot[i]];
						break;}}}
			
		if keyboard_check_pressed(keyUp)||keyboard_check_pressed(keyLeft){
			if optionSlot > 0{
				optionSlot--;}}
		if keyboard_check_pressed(keyDown)||keyboard_check_pressed(keyRight){
			if optionSlot < maxOptions-1{
				optionSlot++;}}
		if keyboard_check_pressed(keyA){
			global.actorHovering = false;
			global.actorSelected = true;
			global.actorSelectedInSlot = optionSlot;
			actorSelection = global.actorInSlot[optionSlot];
			slotSelection = optionSlot;
			global.menuState = "actorAct";
			optionSlot = 0;}
		break;}
		
	case "actorAct":{
		maxOptions = 3;
		option[0] = 0;
		option[1] = 1;
		option[2] = 2;
		readOption[option[0]] = "move";
		readOption[option[1]] = "attack";
		readOption[option[2]] = "wait";
		if keyboard_check_pressed(keyUp)||keyboard_check_pressed(keyLeft){
			if optionSlot > 0{
				optionSlot--;}
			if readOption[option[optionSlot]] = "attack"{
				if global.actorActiveInSlot[slotSelection] = false{
					optionSlot--;}}}
		if keyboard_check_pressed(keyDown)||keyboard_check_pressed(keyRight){
			if optionSlot < maxOptions-1{
				optionSlot++;}
			if readOption[option[optionSlot]] = "attack"{
				if global.actorActiveInSlot[slotSelection] = false{
					optionSlot++;}}}
		if keyboard_check_pressed(keyA){
			if readOption[option[optionSlot]] = "attack"{
				if global.actorActiveInSlot[slotSelection] = true{
					global.menuState = readOption[option[optionSlot]];}}
			else{
				global.menuState = readOption[option[optionSlot]];}
			optionSlot = 0;}
		if keyboard_check_pressed(keyB){
			global.menuState = "actorSelect";
			global.actorSelected = false;
			optionSlot = 0;}
		break;}
		
	case "wait":{
		global.menuState = "actorSelect"
		global.actorSelected = false;
		optionSlot = 0;
		break;}
		
	case "move":{
		maxOptions = 0;
		moveSelectedActor(actorSelection);
		break;}
		
	case "attack":{
		maxOptions = 0;
		for (i=0; i<4; i++){
			for (j=0; j<4; j++){
				if global.actorAbilitySlot[actorSelection, i] != empty && option[j] = empty{
						maxOptions++;
						option[j] = global.actorAbilitySlot[actorSelection, i];
						readOption[option[j]] = global.atkKeyword[option[j]];
						break;}}}
		if keyboard_check_pressed(keyUp)||keyboard_check_pressed(keyLeft){
			if optionSlot > 0{
				optionSlot--;}}
		if keyboard_check_pressed(keyDown)||keyboard_check_pressed(keyRight){
			if optionSlot < maxOptions-1{
				optionSlot++;}}
		if keyboard_check_pressed(keyA){
			global.menuState = "targetSelect";
			attackSelected = option[optionSlot];
			optionSlot = 0;}
		if keyboard_check_pressed(keyB){
			global.menuState = "actorAct";
			optionSlot = 0;}
		break;}
		
	case "targetSelect":{
		maxOptions = 0;
		findAvailableTargets(actorSelection, attackSelected);
		if keyboard_check_pressed(keyUp)||keyboard_check_pressed(keyLeft){
			if optionSlot > 0{
				optionSlot--;}}
		if keyboard_check_pressed(keyDown)||keyboard_check_pressed(keyRight){
			if optionSlot < maxOptions-1{
				optionSlot++;}}
		if keyboard_check_pressed(keyA){
			global.menuState = "performAbility";
			enemySelected = option[optionSlot];
			optionSlot = 0;}
		if keyboard_check_pressed(keyB){
			global.menuState = "actorAct";
			optionSlot = 0;}
		break;}
		
	case "performAbility":{
		maxOptions = 0;
		actorAbility(actorSelection, attackSelected, enemySelected);
		global.menuState = "actorSelect";
		optionSlot = 0;
		break;}}

bugTest = maxOptions;
draw_text(x, y-16, global.menuState);	
for (i=0; i<maxOptions; i++){	
	if optionSlot != i{
		draw_set_alpha(0.5);}
	if global.actorActiveInSlot[slotSelection] = false{
			if readOption[option[i]] = "attack"{
				draw_set_alpha(0.2);}}
	draw_text(x, y+16*i, readOption[option[i]]);
	draw_set_alpha(1);}