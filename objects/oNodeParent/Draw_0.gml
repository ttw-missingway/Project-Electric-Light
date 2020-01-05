/// @description Draw what is occupying this cell
// You can write your code in this editor

switch global.cellMainClass[ds_grid_get(oGridController.newGrid,cellx,celly)]{
	case "cell":		{
		if ds_grid_get(oGridController.newGrid,cellx,celly) = vacant{
			sprite_index = sNodeVacant;}
		if ds_grid_get(oGridController.newGrid,cellx,celly) = noAccess{
			sprite_index = sNodeNoAccess;} break;}
	case "enemy":		{drawEnemiesNode(myEnemy); break;}
	case "player":		{sprite_index = sNodePlayer; break;}
	case "obstacle":	{sprite_index = sNodeCrate; break;}}
	
if global.highlightTable[cellx,celly] = true {sprite_index = sNodeHighlight;}
if global.highlightTableBee[cellx,celly] = true {sprite_index = sNodeHighlightBee;}
	
	
draw_set_halign(fa_center);


draw_text(x, y+8, global.cellKeyword[ds_grid_get(oGridController.newGrid,cellx,celly)]);

draw_self();