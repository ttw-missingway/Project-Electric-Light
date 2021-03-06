//*********//
//*MyChar**//
//*********//

global.actorKeyword[myChar]				= "myChar";
global.actorHP[myChar]					= global.actorHPStart[myChar];
global.actorStrength[myChar]			= global.actorStrengthStart[myChar];
global.actorArmor[myChar]				= global.actorArmorStart[myChar];
global.actorEvasion[myChar]				= global.actorEvasionStart[myChar];
global.actorCDReduction[myChar]			= global.actorCDReductionStart[myChar];
global.actorStrain[myChar]				= 0;
global.actorState[myChar]				= "none";
global.actorStatus[myChar]				= "none";
global.actorDmgMod[myChar]				= 0;
global.actorRange[myChar]				= "melee";	//not sure this is fluid, we'll see.
global.actorSeal[myChar]				= "none";
global.actorZodiac[myChar]				= "sword";
global.actorLink[myChar]				= "none";
global.actorAbilitySlot[myChar,0]		= ltAtk; //Attack strings should be stylized how they will be used in game
global.actorAbilitySlot[myChar,1]		= guard;
global.actorAbilitySlot[myChar,2]		= luna; //basic lamp light attack
global.actorAbilitySlot[myChar,3]		= cloak; //passive ability
global.actorPositionX[myChar]			= 2;
global.actorPositionY[myChar]			= 2;


//*********//
//*MyChar2**//
//*********//

global.actorKeyword[myChar2]			= "myChar2";
global.actorHP[myChar2]					= 10;
global.actorStrength[myChar2]			= 3;
global.actorStrain[myChar2]				= 0;
global.actorStatus[myChar2]				= "none";
global.actorDmgMod[myChar2]				= 0;
global.actorArmor[myChar2]				= 0;
global.actorRegen[myChar2]				= 0;
global.actorHaste[myChar2]				= 1;		//is a ratio where 1 is normal, less than 1 is slowed, more than 1 is sped up
global.actorAutoLife[myChar2]			= 0;		//binary, 1 yes, 0 no
global.actorRange[myChar2]				= "melee";	//not sure this is fluid, we'll see.
global.actorSeal[myChar2]				= "none";
global.actorZodiac[myChar2]				= "sword";
global.actorLink[myChar2]				= "none";
global.actorAbilitySlot[myChar2,0]		= "Light Attack"; //Attack strings should be stylized how they will be used in game
global.actorAbilitySlot[myChar2,1]		= "Guard";
global.actorAbilitySlot[myChar2,2]		= "Pyra Minor"; //basic lamp light attack
global.actorAbilitySlot[myChar2,3]		= "Auto-Regen"; //passive ability
global.actorPositionX[myChar2]			= 3;
global.actorPositionY[myChar2]			= 2;
global.actorState[myChar2]				= "none";
global.actorEvasion[myChar2]				= 0.0;
global.actorCDReduction[myChar2]			= 0;



//*********//
//*Empty***//
//*********//

global.actorKeyword[empty]				= "Empty";
global.actorHP[empty]					= 0;
global.actorStrength[empty]				= 0;
global.actorStrain[empty]				= 0;
global.actorStatus[empty]				= "none";
global.actorDmgMod[empty]				= 0;
global.actorArmor[empty]				= 0;
global.actorRegen[empty]				= 0;
global.actorHaste[empty]				= 0;		//is a ratio where 1 is normal, less than 1 is slowed, more than 1 is sped up
global.actorAutoLife[empty]				= 0;		//binary, 1 yes, 0 no
global.actorRange[empty]				= "melee";	//not sure this is fluid, we'll see.
global.actorSeal[empty]					= "none";
global.actorZodiac[empty]				= "sword";
global.actorLink[empty]					= "none";
global.actorAbilitySlot[empty,0]		= "none"; //Attack strings should be stylized how they will be used in game
global.actorAbilitySlot[empty,1]		= "none";
global.actorAbilitySlot[empty,2]		= "none"; //basic lamp light attack
global.actorAbilitySlot[empty,3]		= "none"; //passive ability
global.actorPositionX[empty]			= 0;
global.actorPositionY[empty]			= 0;
global.actorState[empty]				= "none";
global.actorEvasion[empty]				= 0.0;
global.actorCDReduction[empty]			= 0;