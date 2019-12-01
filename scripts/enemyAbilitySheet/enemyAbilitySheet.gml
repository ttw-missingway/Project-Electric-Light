////////////////////////////////////////////
/************* Melee ***************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genMelee]				= "Generic Melee";
global.enemyAtkDmgMod[genMelee]					= 1.5; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMelee]					= 10*second;
global.enemyAtkActive[genMelee]					= true;
global.enemyAtkDmgType[genMelee]				= "physical";
global.enemyAtkDestination[genMelee]			= "unmoving";
global.enemyAtkStateChange[genMelee]			= "none";
global.enemyAtkParent[genMelee]					= "none";
global.enemyAtkMassive[genMelee]				= false;
global.enemyAtkStatus[genMelee]					= "none";
global.enemyAtkTravel[genMelee]					= "volley"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[genMelee]			= true; //middle lane (2y) is always the relative lane, (1x) is shallow (right next to the enemy), (4x) is deep, (1y) is to the left, (3y) is to the right)
global.enemyAtkGridMaxCells[genMelee]			= 1;
global.enemyAtkGridX[genMelee,0]				= 1;
global.enemyAtkGridY[genMelee,0]				= 2;



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
global.enemyAtkMassive[genBee]					= false;

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
global.enemyAtkMassive[genVolley]				= false;

////////////////////////////////////////////
/************* Massive **************///////
////////////////////////////////////////////

global.enemyAtkKeyword[genMassive]				= "Generic Volley";
global.enemyAtkDmgMod[genMassive]				= 0.75; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMassive]				= 6*second;
global.enemyAtkActive[genMassive]				= true;
global.enemyAtkDmgType[genMassive]				= "physical";
global.enemyAtkDestination[genMassive]			= "unmoving";
global.enemyAtkTargetType[genMassive]			= "unique";
global.enemyAtkStateChange[genMassive]			= "none";
global.enemyAtkArchetype[genMassive]			= "multi";
global.enemyAtkMassive[genMassive]				= true;

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