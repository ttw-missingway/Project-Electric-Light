////////////////////////////////////////////
/************* Melee ***************////////
////////////////////////////////////////////

global.enemyAtkKeyword[genMelee]				= "Generic Melee";
global.enemyAtkDmgMod[genMelee]					= 1.5; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genMelee]					= 2*second;
global.enemyAtkPreCD[genMelee]					= 2*second;
global.enemyAtkActive[genMelee]					= true;
global.enemyAtkDmgType[genMelee]				= "physical";
global.enemyAtkDestination[genMelee]			= "none";
global.enemyAtkStateChange[genMelee]			= "none";
global.enemyAtkCounterType[genMelee]			= "NA";
global.enemyAtkParent[genMelee]					= "none";
global.enemyAtkMassive[genMelee]				= false;
global.enemyAtkStatus[genMelee]					= "none";
global.enemyAtkTravel[genMelee]					= "volley"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[genMelee]			= true; //0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[genMelee]			= 1;
global.enemyAtkGridX[genMelee,0]				= 1;
global.enemyAtkGridY[genMelee,0]				= 0;

////////////////////////////////////////////
/*********** Magical Volley ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[genVolleyMagic]				= "Magical Volley";
global.enemyAtkDmgMod[genVolleyMagic]				= 2; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genVolleyMagic]				= 4*second;
global.enemyAtkPreCD[genVolleyMagic]				= 4*second;
global.enemyAtkActive[genVolleyMagic]				= true;
global.enemyAtkDmgType[genVolleyMagic]				= "magical";
global.enemyAtkDestination[genVolleyMagic]			= "adjLeft";
global.enemyAtkStateChange[genVolleyMagic]			= "none";
global.enemyAtkCounterType[genVolleyMagic]			= "NA";
global.enemyAtkParent[genVolleyMagic]				= "none";
global.enemyAtkMassive[genVolleyMagic]				= false;
global.enemyAtkStatus[genVolleyMagic]				= "none";
global.enemyAtkTravel[genVolleyMagic]				= "volley"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[genVolleyMagic]			= true; //0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[genVolleyMagic]			= 4;
global.enemyAtkGridX[genVolleyMagic,0]				= 1;
global.enemyAtkGridY[genVolleyMagic,0]				= 0;
global.enemyAtkGridX[genVolleyMagic,1]				= 1;
global.enemyAtkGridY[genVolleyMagic,1]				= 1;
global.enemyAtkGridX[genVolleyMagic,2]				= 1;
global.enemyAtkGridY[genVolleyMagic,2]				= -1;
global.enemyAtkGridX[genVolleyMagic,3]				= 2;
global.enemyAtkGridY[genVolleyMagic,3]				= 0;

////////////////////////////////////////////
/***********     Beam       ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[beam]				= "Beam";
global.enemyAtkDmgMod[beam]					= 2; //percentage of atk stat used in attack
global.enemyAtkDmgCD[beam]					= 4*second;
global.enemyAtkPreCD[beam]					= 4*second;
global.enemyAtkActive[beam]					= true;
global.enemyAtkDmgType[beam]				= "magical";
global.enemyAtkDestination[beam]			= "adjRight";
global.enemyAtkStateChange[beam]			= "none";
global.enemyAtkCounterType[beam]			= "NA";
global.enemyAtkParent[beam]					= "none";
global.enemyAtkMassive[beam]				= false;
global.enemyAtkStatus[beam]					= "none";
global.enemyAtkTravel[beam]					= "volley"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[beam]			= true; //0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[beam]			= 4;
global.enemyAtkGridX[beam,0]				= 1;
global.enemyAtkGridY[beam,0]				= 0;
global.enemyAtkGridX[beam,1]				= 2;
global.enemyAtkGridY[beam,1]				= 0;
global.enemyAtkGridX[beam,2]				= 3;
global.enemyAtkGridY[beam,2]				= 0;
global.enemyAtkGridX[beam,3]				= 4;
global.enemyAtkGridY[beam,3]				= 0;

////////////////////////////////////////////
/***********     Beeline    ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[genBee]					= "Beeline";
global.enemyAtkDmgMod[genBee]					= 2; //percentage of atk stat used in attack
global.enemyAtkDmgCD[genBee]					= 4*second;
global.enemyAtkPreCD[genBee]					= 4*second;
global.enemyAtkActive[genBee]					= true;
global.enemyAtkDmgType[genBee]					= "magical";
global.enemyAtkDestination[genBee]				= "parallel"; //adjacent left = adjLeft, adjacent right = adjRight, parallel = parallel, random = random, match player X = matchX, match player Y = matchY
global.enemyAtkStateChange[genBee]				= "counter";
global.enemyAtkCounterType[genBee]				= "regenerate"; 
global.enemyAtkParent[genBee]					= "none";
global.enemyAtkMassive[genBee]					= false;
global.enemyAtkStatus[genBee]					= "none";
global.enemyAtkTravel[genBee]					= "beeline"; //attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing

//Target Cells
global.enemyAtkGridRelative[genBee]			= true; //0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[genBee]			= 4;
global.enemyAtkGridX[genBee,0]				= 1;
global.enemyAtkGridY[genBee,0]				= 0;
global.enemyAtkGridX[genBee,1]				= 2;
global.enemyAtkGridY[genBee,1]				= 0;
global.enemyAtkGridX[genBee,2]				= 3;
global.enemyAtkGridY[genBee,2]				= 0;
global.enemyAtkGridX[genBee,3]				= 4;
global.enemyAtkGridY[genBee,3]				= 0;



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

global.enemyAtkKeyword[69]						= "Error";
global.enemyAtkDmgMod[69]						= 0; //percentage of atk stat used in attack
global.enemyAtkDmgCD[69]						= 1*second;
global.enemyAtkActive[69]						= false;
global.enemyAtkDmgType[69]						= "Error";
global.enemyAtkDestination[69]					= "Error";
global.enemyAtkTargetType[69]					= "Error";
global.enemyAtkStateChange[69]					= "Error";
global.enemyAtkArchetype[69]					= "Error";