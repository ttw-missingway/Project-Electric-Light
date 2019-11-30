////////////////////////////////////////////
/************* Melee ***************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genMelee]				= "Generic Melee";
global.enemyAtkDmgMod[genMelee]					= 1.5; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMelee]					= 10*second;
global.enemyAtkActive[genMelee]					= true;
global.enemyAtkDmgType[genMelee]				= "physical";
global.enemyAtkDestination[genMelee]			= "unmoving";
global.enemyAtkTargetType[genMelee]				= "unique";
global.enemyAtkStateChange[genMelee]			= "none";
global.enemyAtkArchetype[genMelee]				= "melee";


////////////////////////////////////////////
/************* Beeline ************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genBee]					= "Generic Beeline";
global.enemyAtkDmgMod[genBee]					= 1; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genBee]					= 15*second;
global.enemyAtkActive[genBee]					= true;
global.enemyAtkDmgType[genBee]					= "physical";
global.enemyAtkDestination[genBee]				= "parallel";
global.enemyAtkTargetType[genBee]				= "grid";
global.enemyAtkStateChange[genBee]				= "none";
global.enemyAtkArchetype[genBee]				= "beeline";

////////////////////////////////////////////
/************* Volley **************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genVolley]				= "Generic Volley";
global.enemyAtkDmgMod[genVolley]				= 0.75; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genVolley]					= 6*second;
global.enemyAtkActive[genVolley]				= true;
global.enemyAtkDmgType[genVolley]				= "physical";
global.enemyAtkDestination[genVolley]			= "unmoving";
global.enemyAtkTargetType[genVolley]			= "unique";
global.enemyAtkStateChange[genVolley]			= "none";
global.enemyAtkArchetype[genVolley]				= "volley";

////////////////////////////////////////////
/************* Reposition **********////////
////////////////////////////////////////////

global.enemyAtkKeyword[genReposition]			= "Reposition";
global.enemyAtkDmgMod[genReposition]			= 0; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genReposition]				= 1*second;
global.enemyAtkActive[genReposition]			= true;
global.enemyAtkDmgType[genReposition]			= "none";
global.enemyAtkDestination[genReposition]		= "targetChoice";
global.enemyAtkTargetType[genReposition]		= "none";
global.enemyAtkStateChange[genReposition]		= "none";
global.enemyAtkArchetype[genReposition]			= "reposition";

////////////////////////////////////////////
/************* Guard ***************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genGuard]				= "Guard";
global.enemyAtkDmgMod[genGuard]					= 0; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genGuard]					= 10*second;
global.enemyAtkActive[genGuard]					= true;
global.enemyAtkDmgType[genGuard]				= "none";
global.enemyAtkDestination[genGuard]			= "targetChoice";
global.enemyAtkTargetType[genGuard]				= "none";
global.enemyAtkStateChange[genGuard]			= "guard";
global.enemyAtkArchetype[genGuard]				= "guard";

////////////////////////////////////////////
/************* Error ***************////////
////////////////////////////////////////////

global.enemyAtkKeyword[69]				= "Error";
global.enemyAtkDmgMod[69]					= 0; //percentage of atk stat used in attack
global.enemyAtkDmgCD[69]					= 1*second;
global.enemyAtkActive[69]					= false;
global.enemyAtkDmgType[69]				= "Error";
global.enemyAtkDestination[69]			= "Error";
global.enemyAtkTargetType[69]				= "Error";
global.enemyAtkStateChange[69]			= "Error";
global.enemyAtkArchetype[69]				= "Error";