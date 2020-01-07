////////////////////////////////////////////
/************* Light Attack ***************/
////////////////////////////////////////////

global.atkKeyword[ltAtk]		= "Light Attack";
global.atkDmgMod[ltAtk]			= 1; //percentage of atk stat used in attack
global.atkDmgFlat[ltAtk]		= 10; //used with magic attacks
global.atkCD[ltAtk]				= 10*second;
global.atkActive[ltAtk]			= true;
global.atkDmgType[ltAtk]		= "physical";
global.atkMagicType[ltAtk]		= "none";
global.atkHitRate[ltAtk]		= 255;
global.atkTargetClass[ltAtk]	= "single melee";

////////////////////////////////////////////
/************* Guard ***************/
////////////////////////////////////////////

global.atkKeyword[guard]		= "Guard";
global.atkDmgMod[guard]			= 0; //percentage of atk stat used in attack
global.atkDmgFlat[guard]		= 10; //used with magic attacks
global.atkCD[guard]				= 10*second;
global.atkActive[guard]			= true;
global.atkDmgType[guard]		= "magic";
global.atkMagicType[guard]		= "elec";
global.atkHitRate[guard]		= 255;
global.atkTargetClass[guard]	= "single ally";

////////////////////////////////////////////
/************* Luna ***************/
////////////////////////////////////////////

global.atkKeyword[luna]			= "Luna";
global.atkDmgMod[luna]			= 2 //percentage of atk stat used in attack
global.atkDmgFlat[luna]			= 10; //used with magic attacks
global.atkCD[luna]				= 10*second;
global.atkActive[luna]			= true;
global.atkDmgType[luna]			= "magic";
global.atkMagicType[luna]		= "moon";
global.atkHitRate[luna]			= 255;
global.atkTargetClass[luna]		= "single volley";

////////////////////////////////////////////
/************* cloak ***************/
////////////////////////////////////////////

global.atkKeyword[cloak]		= "Cloak";
global.atkDmgMod[cloak]			= 0.5; //percentage of atk stat used in attack
global.atkDmgFlat[cloak]		= 10; //used with magic attacks
global.atkCD[cloak]				= 10*second;
global.atkActive[cloak]			= true;
global.atkDmgType[cloak]		= "magic";
global.atkMagicType[cloak]		= "lamp";
global.atkHitRate[cloak]		= 255;
global.atkTargetClass[cloak]		= "all allies";