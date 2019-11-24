/// @description Insert description here
// You can write your code in this editor
draw_text(301, 107, "myChar.HP: " + string(global.actorHP[myChar]));
draw_text(301 + 132, 107, "myChar.CD: " + string(global.actorCD[myChar]));
draw_text(301 + 264, 107, "myChar.actorState: " + string(global.actorActive[myChar]));

draw_text(301, 107 + 16, "myEnemy.HP: " + string(global.enemyHP[myEnemy]));
draw_self();