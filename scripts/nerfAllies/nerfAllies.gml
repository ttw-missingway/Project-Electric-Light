//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\  NERF          \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\
			
	switch global.enemyAtkBuffType[argument0]{
			case "strength": {
				global.actorStrength[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "cd": {
				global.actorCDReduction[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "armor": {
				global.actorArmor[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "evasion": {
				global.actorEvasion[damageRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}}
