/// @description Insert description here
// You can write your code in this editor
if (type == "energy") {
	if (objPlayer.weaponEnergy < objPlayer.weaponEnergyMax) objPlayer.weaponEnergy += 25;	//need to add formula for adding in between values for < 25
}

instance_destroy();