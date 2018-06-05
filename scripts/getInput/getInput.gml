//getInput(device)
//custom class/function
device = argument0;
test = gamepad_get_device_count();

if (gamepad_is_connected(device)) {
	gamepad_set_axis_deadzone(device, 0.3);
	xx = gamepad_axis_value(device, gp_axislh);
	yy = gamepad_axis_value(device, gp_axislv);
	
	actAttack =	gamepad_button_check_pressed(device, gp_face1);
}

else {
	/*moveUp = keyboard_check(vk_up);
	moveDown = keyboard_check(vk_down);
	moveLeft = keyboard_check(vk_left);
	moveRight = keyboard_check(vk_right);*/
	
	moveUp = keyboard_check(ord("W"));
	moveDown = keyboard_check(ord("S"));
	moveLeft = keyboard_check(ord("A"));
	moveRight = keyboard_check(ord("D"));
	
	xx = moveRight - moveLeft;
	yy = moveDown - moveUp;

}

actAttack = keyboard_check_pressed(vk_control);
actShoot = keyboard_check_pressed(vk_space);
	
//actInv = keyboard_check_pressed(vk_tab);
//actPause = keyboard_check_pressed(vk_tab);
	
gameEnd = keyboard_check_pressed(vk_escape);