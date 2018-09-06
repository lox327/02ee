/// @description Insert description here
// You can write your code in this editor
//show_message(image_index);
//show_message(sprite_get_number(sprite_index));
//don't allow enter code if we're not within prox range
if (abs(objPlayer.x - x ) > prox) return;
if (abs(objPlayer.y - y ) > prox) return;

image_speed = 3;
