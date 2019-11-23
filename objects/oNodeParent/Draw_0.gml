/// @description Draw what is occupying this cell
// You can write your code in this editor

switch ds_grid_get(oGridController.newGrid,cellx,celly){
	case "vacant":		{sprite_index = sNodeVacant; break;}
	case "no_access":	{sprite_index = sNodeNoAccess; break;}
	case "enemy":		{sprite_index = sNodeEnemy; break;}
	case "player":		{sprite_index = sNodePlayer; break;}}
	
	
draw_set_halign(fa_center);
draw_text(x, y+8, ds_grid_get(oGridController.newGrid,cellx,celly));

draw_self();