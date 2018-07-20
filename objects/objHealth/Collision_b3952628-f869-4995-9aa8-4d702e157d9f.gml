/// @description Insert description here
// You can write your code in this editor
if (type == "health") {
	if (health < objPlayer.healthMax) {
		var diff = objPlayer.healthMax - health;
		if (diff < 25) health += diff;
		else health += 25;	//need to add formula for adding in between values for < 25
	}
}

instance_destroy();