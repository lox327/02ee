//getInput(device)
//custom class/function
//device = argument0;
device = "";

var maxpads = gamepad_get_device_count();
for (var i = 0; i < maxpads; i++) {
    if (gamepad_is_connected(i))
        {
        // do stuff with pad "i"
		device = i;
        }
}

if (gamepad_is_connected(0)) {
	gamepad_set_axis_deadzone(device, 0.3);
	xx = gamepad_axis_value(device, gp_axislh);
	yy = gamepad_axis_value(device, gp_axislv);
	
	//b_num = gamepad_button_count(device);
	actAttack =	gamepad_button_check(device, gp_face1);
	actShoot = gamepad_button_check_pressed(device, gp_face2);
	
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