/// @description Draw what is occupying this cell
// You can write your code in this editor

switch ds_grid_get(oGridController.newGrid,cellx,celly){
	case vacant:		{sprite_index = sNodeVacant; break;}
	case noAccess:		{sprite_index = sNodeNoAccess; break;}
	case myEnemy:		{drawEnemiesNode(myEnemy); break;}
	case myEnemy2:		{drawEnemiesNode(myEnemy2); break;}
	case myEnemy3:		{drawEnemiesNode(myEnemy3); break;}
	case myEnemy4:		{drawEnemiesNode(myEnemy4); break;}
	case myEnemy5:		{drawEnemiesNode(myEnemy5); break;}
	case myEnemy6:		{drawEnemiesNode(myEnemy6); break;}
	case myEnemy7:		{drawEnemiesNode(myEnemy7); break;}
	case myEnemy8:		{drawEnemiesNode(myEnemy8); break;}
	case myEnemy9:		{drawEnemiesNode(myEnemy9); break;}
	case myEnemy10:		{drawEnemiesNode(myEnemy10); break;}
	case myChar2:
	case myChar:		{sprite_index = sNodePlayer; break;}
	case crate:			{sprite_index = sNodeCrate; break;}}
	
if global.highlightTable[cellx,celly] = true {sprite_index = sNodeHighlight;}
if global.highlightTableBee[cellx,celly] = true {sprite_index = sNodeHighlightBee;}
	
	
draw_set_halign(fa_center);


draw_text(x, y+8, global.cellKeyword[ds_grid_get(oGridController.newGrid,cellx,celly)]);

draw_self();