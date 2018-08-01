/// @description Insert description here
// You can write your code in this editor
var switchKey = keyboard_check_pressed(vk_tab);


if (switchKey) {
	if (room != inventory) {
		currentRoom1 = room;
		room_goto(inventory);
	}
	else {
		room_goto(currentRoom1);
	}

}