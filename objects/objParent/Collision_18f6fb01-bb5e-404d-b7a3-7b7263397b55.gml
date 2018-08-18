/// @description Insert description here
// You can write your code in this editor
//parent contains collision code, should be switch on type; type comes from create of each item
if (type == "energy") {
	if (objPlayer.weaponEnergy < objPlayer.weaponEnergyMax) {
		var diff = objPlayer.weaponEnergyMax - objPlayer.weaponEnergy;
		if (diff < 25) objPlayer.weaponEnergy += diff;
		else objPlayer.weaponEnergy += 25;	//need to add formula for adding in between values for < 25
	}
}

if (type == "key") {
	global.checkpoint1 = 1;
	global.d_checkpoint1 = 1;
}

if (type == "health") {
	if (health < objPlayer.healthMax) {
		var diff = objPlayer.healthMax - health;
		if (diff < 25) health += diff;
		else health += 25;	//need to add formula for adding in between values for < 25
	}
}

if (type == "currency") {
	if (objPlayer.currency < objPlayer.currencyMax) objPlayer.currency += 25;	//need to add formula for adding in between values for < 25
}

instance_destroy();