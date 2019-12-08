/// @description Draw what is occupying this cell
// You can write your code in this editor

switch ds_grid_get(oGridController.newGrid,cellx,celly){
	case vacant:		{sprite_index = sNodeVacant; break;}
	case noAccess:		{sprite_index = sNodeNoAccess; break;}
	case myEnemy:		{sprite_index = sNodeEnemy; break;}
	case myChar2:
	case myChar:		{sprite_index = sNodePlayer; break;}}
	
if global.highlightTable[cellx,celly] = true {sprite_index = sNodeHighlight;}
	
	
draw_set_halign(fa_center);


draw_text(x, y+8, global.cellKeyword[ds_grid_get(oGridController.newGrid,cellx,celly)]);

draw_self();