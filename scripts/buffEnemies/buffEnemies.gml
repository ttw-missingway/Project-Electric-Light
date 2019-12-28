//\\//\\//\\//\\//\\//\\//\\//\\
//\\//\\  BUFF          \\//\\//
//\\//\\//\\//\\//\\//\\//\\//\\
				
	switch global.enemyAtkBuffType[argument0]{
			case "strength": {
				global.enemyStrength[supportRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "cd": {
				global.enemyCDReduction[supportRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "armor": {
				global.enemyArmor[supportRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}
			case "evasion": {
				global.enemyEvasion[supportRecipient[j]] += global.enemyAtkBuffValue[argument0];
				break;}}
