////////////////////////////////////////////
/***********    Wolf Dash   ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[wolfDash]				= "wolf dash";
global.enemyAtkDmgMod[wolfDash]					= 1.5;			//percentage of atk stat used in attack
global.enemyAtkPreCD[wolfDash]					= 1*second;
global.enemyAtkDmgCD[wolfDash]					= 5*second;
global.enemyAtkActive[wolfDash]					= true;
global.enemyAtkDmgType[wolfDash]				= "physical";	//magical or physical
global.enemyAtkMagicType[wolfDash]				= "none";		//moon, sun, lamp, elec
global.enemyAtkDestination[wolfDash]			= "parallel";	//adjLeft, adjRight, random, match, parallel
global.enemyAtkStateChange[wolfDash]			= "none";		//guard, counter, dead, 
global.enemyAtkCounterType[wolfDash]			= "NA";
global.enemyAtkMassive[wolfDash]				= false;
global.enemyAtkMelee[wolfDash]					= 0;			//use to prevent enemy from using this move unless it will hit
global.enemyAtkStatus[wolfDash]					= "none";		//burn, blind, madness, paralyze
global.enemyAtkTravel[wolfDash]					= "beeline";	//attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing
global.enemyAtkBuffType[wolfDash]				= "none";		//strength, armor, CD, evasion
global.enemyAtkBuffValue[wolfDash]				= 0;			//can be negative to act as a nerf
global.enemyAtkPushGlobal[wolfDash]				= false;
global.enemyAtkPush[wolfDash]					= "none";		//north, west, east, south (north is push when relative, south is pull when relative)
global.enemyAtkPushForce[wolfDash]				= 0;			//max cells to push
global.enemyAtkObstacleCreate[wolfDash]			= "none";		//use none as string
global.enemyAtkHealAmount[wolfDash]				= 0;
global.enemyAtkCreate[wolfDash]					= "none";		//use string and look for class of enemy


//Target Cells
global.enemyAtkSupport[wolfDash]				= false;		//if true enemy targets other enemies
global.enemyAtkSupportTarget[wolfDash]			= "none"		//all enemies (all), position 0 (boss), 1 random enemy (random), self (self)
global.enemyAtkGridRelative[wolfDash]			= true;			//0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[wolfDash]			= 4;
global.enemyAtkGridX[wolfDash, 0]				= 1;
global.enemyAtkGridY[wolfDash, 0]				= 0;
global.enemyAtkGridX[wolfDash, 1]				= 2;
global.enemyAtkGridY[wolfDash, 1]				= 0;
global.enemyAtkGridX[wolfDash, 2]				= 3;
global.enemyAtkGridY[wolfDash, 2]				= 0;
global.enemyAtkGridX[wolfDash, 3]				= 4;
global.enemyAtkGridY[wolfDash, 3]				= 0;

////////////////////////////////////////////
/***********       Howl     ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[howl]				= "howl";
global.enemyAtkDmgMod[howl]					= 0;			//percentage of atk stat used in attack
global.enemyAtkPreCD[howl]					= 0.2*second;
global.enemyAtkDmgCD[howl]					= 5*second;
global.enemyAtkActive[howl]					= true;
global.enemyAtkDmgType[howl]				= "physical";	//magical or physical
global.enemyAtkMagicType[howl]				= "none";		//moon, sun, lamp, elec
global.enemyAtkDestination[howl]			= "none";		//adjLeft, adjRight, random, match, parallel
global.enemyAtkStateChange[howl]			= "none";		//guard, counter, dead, 
global.enemyAtkCounterType[howl]			= "NA";
global.enemyAtkMassive[howl]				= false;
global.enemyAtkMelee[howl]					= 0;			//use to prevent enemy from using this move unless it will hit
global.enemyAtkStatus[howl]					= "none";		//burn, blind, madness, paralyze
global.enemyAtkTravel[howl]					= "volley";		//attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing
global.enemyAtkBuffType[howl]				= "strength";	//strength, armor, CD, evasion
global.enemyAtkBuffValue[howl]				= 1;			//can be negative to act as a nerf
global.enemyAtkPushGlobal[howl]				= false;
global.enemyAtkPush[howl]					= "none";		//north, west, east, south (north is push when relative, south is pull when relative)
global.enemyAtkPushForce[howl]				= 0;			//max cells to push
global.enemyAtkObstacleCreate[howl]			= "none";		//use none as string
global.enemyAtkHealAmount[howl]				= 0;
global.enemyAtkCreate[howl]					= "none";		//use string and look for class of enemy


//Target Cells
global.enemyAtkSupport[howl]				= true;			//if true enemy targets other enemies
global.enemyAtkSupportTarget[howl]			= "self"		//all enemies (all), position 0 (boss), 1 random enemy (random), self (self)
global.enemyAtkGridRelative[howl]			= true;			//0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[howl]			= 1;
global.enemyAtkGridX[howl, 0]				= 1;
global.enemyAtkGridY[howl, 0]				= 0;



////////////////////////////////////////////
/***********    Fire Swoop  ********////////
////////////////////////////////////////////

global.enemyAtkKeyword[fireSwoop]				= "fire swoop";
global.enemyAtkDmgMod[fireSwoop]				= 0.8;			//percentage of atk stat used in attack
global.enemyAtkPreCD[fireSwoop]					= 3*second;
global.enemyAtkDmgCD[fireSwoop]					= 6*second;
global.enemyAtkActive[fireSwoop]				= true;
global.enemyAtkDmgType[fireSwoop]				= "magical";	//magical or physical
global.enemyAtkMagicType[fireSwoop]				= "lamp";		//moon, sun, lamp, elec
global.enemyAtkDestination[fireSwoop]			= "parallel";	//adjLeft, adjRight, random, match, parallel
global.enemyAtkStateChange[fireSwoop]			= "none";		//guard, counter, dead, 
global.enemyAtkCounterType[fireSwoop]			= "NA";
global.enemyAtkMassive[fireSwoop]				= false;
global.enemyAtkMelee[fireSwoop]					= 0;			//use to prevent enemy from using this move unless it will hit
global.enemyAtkStatus[fireSwoop]				= "burn";		//burn, blind, madness, paralyze
global.enemyAtkTravel[fireSwoop]				= "volley";	//attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing
global.enemyAtkBuffType[fireSwoop]				= "none";		//strength, armor, CD, evasion
global.enemyAtkBuffValue[fireSwoop]				= 0;			//can be negative to act as a nerf
global.enemyAtkPushGlobal[fireSwoop]			= false;
global.enemyAtkPush[fireSwoop]					= "none";		//north, west, east, south (north is push when relative, south is pull when relative)
global.enemyAtkPushForce[fireSwoop]				= 0;			//max cells to push
global.enemyAtkObstacleCreate[fireSwoop]		= "none";		//use none as string
global.enemyAtkHealAmount[fireSwoop]			= 0;
global.enemyAtkCreate[fireSwoop]				= "none";		//use string and look for class of enemy


//Target Cells
global.enemyAtkSupport[fireSwoop]				= false;		//if true enemy targets other enemies
global.enemyAtkSupportTarget[fireSwoop]			= "none"		//all enemies (all), position 0 (boss), 1 random enemy (random), self (self)
global.enemyAtkGridRelative[fireSwoop]			= true;			//0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[fireSwoop]			= 1;
global.enemyAtkGridX[fireSwoop, 0]				= 3;
global.enemyAtkGridY[fireSwoop, 0]				= 0;


////////////////////////////////////////////
/***********    Dust Attack  ********///////
////////////////////////////////////////////

global.enemyAtkKeyword[dustAttack]				= "dust attack";
global.enemyAtkDmgMod[dustAttack]				= 0.2;			//percentage of atk stat used in attack
global.enemyAtkPreCD[dustAttack]				= 3*second;
global.enemyAtkDmgCD[dustAttack]				= 6*second;
global.enemyAtkActive[dustAttack]				= true;
global.enemyAtkDmgType[dustAttack]				= "magical";	//magical or physical
global.enemyAtkMagicType[dustAttack]			= "moon";		//moon, sun, lamp, elec
global.enemyAtkDestination[dustAttack]			= "none";	//adjLeft, adjRight, random, match, parallel
global.enemyAtkStateChange[dustAttack]			= "none";		//guard, counter, dead, 
global.enemyAtkCounterType[dustAttack]			= "NA";
global.enemyAtkMassive[dustAttack]				= false;
global.enemyAtkMelee[dustAttack]				= 0;			//use to prevent enemy from using this move unless it will hit
global.enemyAtkStatus[dustAttack]				= "none";		//burn, blind, madness, paralyze
global.enemyAtkTravel[dustAttack]				= "volley";	//attack can travel through its cells (affects blocking and positioning of players) as beeline, or it can happen instantaneously to all affected cells (ignores positioning effects) as volley, single cells should stay volley for ease of computing
global.enemyAtkBuffType[dustAttack]				= "strength";		//strength, armor, CD, evasion
global.enemyAtkBuffValue[dustAttack]			= -1;			//can be negative to act as a nerf
global.enemyAtkPushGlobal[dustAttack]			= false;
global.enemyAtkPush[dustAttack]					= "none";		//north, west, east, south (north is push when relative, south is pull when relative)
global.enemyAtkPushForce[dustAttack]			= 0;			//max cells to push
global.enemyAtkObstacleCreate[dustAttack]		= "none";		//use none as string
global.enemyAtkHealAmount[dustAttack]			= 0;
global.enemyAtkCreate[dustAttack]				= "none";		//use string and look for class of enemy


//Target Cells
global.enemyAtkSupport[dustAttack]				= false;		//if true enemy targets other enemies
global.enemyAtkSupportTarget[dustAttack]		= "none"		//all enemies (all), position 0 (boss), 1 random enemy (random), self (self)
global.enemyAtkGridRelative[dustAttack]			= true;			//0 is the relative lane, 1 is shallow, 4 is deep on the x axis.
global.enemyAtkGridMaxCells[dustAttack]			= 3;
global.enemyAtkGridX[dustAttack, 0]				= 1;
global.enemyAtkGridY[dustAttack, 0]				= -1;
global.enemyAtkGridX[dustAttack, 1]				= 1;
global.enemyAtkGridY[dustAttack, 1]				= 0;
global.enemyAtkGridX[dustAttack, 2]				= 1;
global.enemyAtkGridY[dustAttack, 2]				= 1;