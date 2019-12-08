/// @description Insert description here
// You can write your code in this editor
for (i=0; i<13; i++){
	draw_text(x, y + 16 * i, "whats in the box: " + string(

		global.actorKeyword[damageRecipient[i]]
				
				));}

	draw_text(x, y - 16, "attack choice " + string(global.enemyAtkKeyword[currentAttack]));
	draw_text(x + 160, y - 16, "total recipients " + string(totalRecipients));