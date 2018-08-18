/// @description Insert description here
// You can write your code in this editor
if (type == "energy") {
	if (objPlayer.weaponEnergy < objPlayer.weaponEnergyMax) {
		var diff = objPlayer.weaponEnergyMax - objPlayer.weaponEnergy;
		if (diff < 25) objPlayer.weaponEnergy += diff;
		else objPlayer.weaponEnergy += 25;	//need to add formula for adding in between values for < 25
	}
}

instance_destroy();