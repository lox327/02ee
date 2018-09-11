/// @description Insert description here
// You can write your code in this editor
if (global.btnAction) {
	
	if (abs(objPlayer.x - x ) > prox) return;
	if (abs(objPlayer.y - y ) > prox) return;

	image_speed = 3;	
}

if (image_index == sprite_get_number(sprite_index) ) instance_destroy();