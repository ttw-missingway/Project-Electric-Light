var newMod = 1;

switch global.enemyZodiac[argument1]{
	case "oak": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 1.5;	break;}
			case "sun":		{newMod	= 0.5;	break;}
			case "lamp":	{newMod = 1.75; break;}
			case "elec":	{newMod = 0.25; break;}} break;}
	case "urn": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 1;	break;}
			case "sun":		{newMod	= 0.75;	break;}
			case "lamp":	{newMod = 0.5;	break;}
			case "elec":	{newMod = 1.75; break;}} break;}
	case "torch": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 0.75;	break;}
			case "sun":		{newMod	= 1.5;	break;}
			case "lamp":	{newMod = 0.25;	break;}
			case "elec":	{newMod = 1.5;	break;}} break;}
	case "sword": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 1.25;	break;}
			case "sun":		{newMod	= 1;	break;}
			case "lamp":	{newMod = 1.25;	break;}
			case "elec":	{newMod = 0.5;	break;}} break;}
	case "coin": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 1.75;	break;}
			case "sun":		{newMod	= 0.25;	break;}
			case "lamp":	{newMod = 1;	break;}
			case "elec":	{newMod = 1;	break;}} break;}
	case "beast": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 0.5;	break;}
			case "sun":		{newMod	= 1.25;	break;}
			case "lamp":	{newMod = 1.5;	break;}
			case "elec":	{newMod = 0.75;	break;}} break;}
	case "spirit": {
		switch global.atkMagicType[argument0]{
			case "moon":	{newMod = 0.25;	break;}
			case "sun":		{newMod	= 1.75;	break;}
			case "lamp":	{newMod = 0.75;	break;}
			case "elec":	{newMod = 1.25;	break;}} break;}}
			
return newMod;
			