/// @description fade in/out code
switch(state) {
	case "IN_GAME": {
		//draw_set_alpha(1);
		break;
	}
	
	case "TRANSITION_ENTER": {
		alpha -= transitionSpeed_room;
		if (alpha <= 0) {
			alpha = 0;
			state = "TRANSITION_EXIT";
		}
		//draw_set_alpha(alpha);
		break;
	}
	
	case "TRANSITION_EXIT": {
		alpha += transitionSpeed_room;
		if (alpha >= 1) {
			alpha = 1;
			state = "IN_GAME";
		}
		//draw_set_alpha(alpha);
		break;
	}
	
} 

//PAUSE
/*if (keyboard_check_pressed(vk_tab)) {
	if (!pause) {
		instance_deactivate_all(true);	
		pause = true;
		currentRoom = room;
		room_goto(inventory);
	}
	else {
		instance_activate_all();
		pause = false;
		room_goto(room);
	}
}*/

/*if (keyboard_check_pressed(vk_tab)) {
	if (!pause) {
		var offset = 0;
		for (var i = 0; i < instance_count; i++) {
			if (instance_find(all, i).sprite_index != -1) {
				allObjects[i-offset, 0] = instance_find(all, i).sprite_index;
				allObjects[i-offset, 1] = instance_find(all, i).image_index;
				allObjects[i-offset, 2] = instance_find(all, i).x;
				allObjects[i-offset, 3] = instance_find(all, i).y;
				allObjects[i-offset, 4] = instance_find(all, i).image_xscale*2;
				allObjects[i-offset, 5] = instance_find(all, i).image_yscale*2;
				allObjects[i-offset, 6] = instance_find(all, i).image_angle;
				allObjects[i-offset, 7] = instance_find(all, i).image_blend;
				allObjects[i-offset, 8] = instance_find(all, i).image_alpha;
			}
			else offset++;
		}
		instance_deactivate_all(true);	
		pause = true;
		//room_goto("inventory");
	}
	else {
		instance_activate_all();
		pause = false;
		allObjects = 0;

	}
}
*/

//PAUSE
/*if (keyboard_check_pressed(vk_tab)) {
	if (!pause) {
		PauseBack=sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
		
		instance_deactivate_all(true);	
		pause = true;
		//room_goto(inventory);
	}
	else {
		instance_activate_all();
		pause = false;
		sprite_delete(PauseBack);
		//room_goto(room0);
	}
}*/