//getInput(device)
//custom class/function
//device = argument0;
device = "";
gpConnected = false;

//need to init all vars?
global.btnAction = 0;

var maxpads = gamepad_get_device_count();
for (var i = 0; i < maxpads; i++) {
    if (gamepad_is_connected(i))
        {
        // do stuff with pad "i"
		device = i;
		gpConnected = true;
		break;
        }
}

if (gpConnected) {
	//b_num = gamepad_button_count(device);
	gamepad_set_axis_deadzone(device, 0.3);
	xx = gamepad_axis_value(device, gp_axislh);
	yy = gamepad_axis_value(device, gp_axislv);
	
	//config1
	if (0) {
		actAttack =	gamepad_button_check(device, gp_face1);
		actShoot = gamepad_button_check_pressed(device, gp_shoulderr);
		wepSwitch = gamepad_button_check_pressed(device, gp_shoulderl);
		global.btnAction = gamepad_button_check_pressed(device, gp_face3);
	}
	else {
		//config2
		actAttack = gamepad_button_check_pressed(device, gp_face2);
		actShoot = gamepad_button_check_pressed(device, gp_face1);
		wepSwitch = gamepad_button_check_pressed(device, gp_shoulderl);
		global.btnAction = gamepad_button_check_pressed(device, gp_face3);
	}
	
	gameEnd = keyboard_check_pressed(gp_select);
	
}

else {
	//ARROW KEYS
	/*moveUp = keyboard_check(vk_up);
	moveDown = keyboard_check(vk_down);
	moveLeft = keyboard_check(vk_left);
	moveRight = keyboard_check(vk_right);*/
	
	//WASD KEYS
	moveUp = keyboard_check(ord("W"));
	moveDown = keyboard_check(ord("S"));
	moveLeft = keyboard_check(ord("A"));
	moveRight = keyboard_check(ord("D"));
	
	xx = moveRight - moveLeft;
	yy = moveDown - moveUp;
	
	actAttack = keyboard_check_pressed(vk_control);
	actShoot = keyboard_check_pressed(vk_space);
	
	global.btnAction = keyboard_check_pressed(vk_enter);
	
	gameEnd = keyboard_check_pressed(vk_escape);

}

gameEnd = keyboard_check_pressed(vk_escape);

	
//actInv = keyboard_check_pressed(vk_tab);
//actPause = keyboard_check_pressed(vk_tab);
	


num = 0;
if keyboard_check_pressed(ord("P"))
   {
	//screen_save(working_directory + "\Screens\Screen_"+string(num)+".png")
	//num += 1;
	var surf;
	surf = surface_create(32, 32);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	spr_custom = sprite_create_from_surface(surf, 0, 0, 32, 32, true, true, 16, 16);
	sprite_index = spr_custom;
	draw_sprite(sprite_index, image_index, x, y);
	//draw_sprite(spr_custom, 0, x, y-32);
	surface_reset_target();
	//surface_free(surf);
	//num += 1;
   }